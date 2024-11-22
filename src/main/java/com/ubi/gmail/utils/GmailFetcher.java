package com.ubi.gmail.utils;

import java.util.Arrays;
import java.util.Calendar;
import java.util.Comparator;
import java.util.Date;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.mail.BodyPart;
import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Store;
import javax.mail.search.FromStringTerm;
import javax.mail.search.ReceivedDateTerm;

public class GmailFetcher {

    private String host = "imap.gmail.com";
    private String username;
    private String password;
    private String senderEmail;
    private long timeoutMillis;
    private long pollingIntervalMillis;

    public GmailFetcher(String username, String password, String senderEmail, long timeoutMillis, long pollingIntervalMillis) {
        this.username = username;
        this.password = password;
        this.senderEmail = senderEmail;
        this.timeoutMillis = timeoutMillis;
        this.pollingIntervalMillis = pollingIntervalMillis;
    }

    public String fetchOTP() throws Exception {
        Properties properties = new Properties();
        properties.put("mail.store.protocol", "imaps");

        long startTime = System.currentTimeMillis();

        Session emailSession = Session.getDefaultInstance(properties);
        Store store = emailSession.getStore("imaps");
        store.connect(host, username, password);

        Folder inbox = store.getFolder("INBOX");
        inbox.open(Folder.READ_WRITE); // Open in READ_WRITE to mark messages as read if needed

        boolean emailFound = false;
        String otp = null;

        // Calculate the date for 5 minutes ago
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.MINUTE, -5);
        Date fiveMinutesAgo = cal.getTime();

        while (System.currentTimeMillis() - startTime < timeoutMillis) {
            // Search for emails from the specific sender that arrived in the last 5 minutes
            FromStringTerm senderTerm = new FromStringTerm(senderEmail);
            ReceivedDateTerm recentTerm = new ReceivedDateTerm(ReceivedDateTerm.GE, fiveMinutesAgo);
            Message[] messages = inbox.search(senderTerm);
            messages = inbox.search(recentTerm, messages);

            // Sort messages by date in descending order (latest first)
            Arrays.sort(messages, Comparator.comparing((Message m) -> {
                try {
                    return m.getReceivedDate();
                } catch (MessagingException e) {
                    return null;
                }
            }).reversed());

            for (Message message : messages) {
                System.out.println("From: " + Arrays.toString(message.getFrom()));
                System.out.println("Subject: " + message.getSubject());
                System.out.println("Received Date: " + message.getReceivedDate());
                
                String content = getEmailContent(message);
                System.out.println("Content: " + content);
                if (content != null) {
                    Pattern otpPattern = Pattern.compile("\\b\\d{6}\\b");
                    Matcher matcher = otpPattern.matcher(content);
                    if (matcher.find()) {
                        otp = matcher.group();
                        emailFound = true;
                        break;
                    }
                }
            }

            if (emailFound) {
                break;
            }

            Thread.sleep(pollingIntervalMillis);
        }

        inbox.close(false);
        store.close();

        if (!emailFound) {
            throw new Exception("OTP email not received within the timeout period");
        }

        return otp;
    }

    private String getEmailContent(Message message) throws Exception {
        // Check if the message content is a simple String
        if (message.getContent() instanceof String) {
            return (String) message.getContent();
        }
        // Handle multipart messages
        else if (message.getContent() instanceof Multipart) {
            Multipart multipart = (Multipart) message.getContent();
            StringBuilder result = new StringBuilder();

            for (int i = 0; i < multipart.getCount(); i++) {
                BodyPart part = multipart.getBodyPart(i);

                // Handle text/plain parts
                if (part.isMimeType("text/plain")) {
                    result.append(part.getContent());
                }
                // Handle text/html parts as a fallback
                else if (part.isMimeType("text/html")) {
                    // Optional: Convert HTML to plain text or return HTML directly
                    result.append(part.getContent());
                }
            }

            if (result.length() > 0) {
                return result.toString();
            }
        }
        // Return null if no valid content is found
        return null;
    }

}





