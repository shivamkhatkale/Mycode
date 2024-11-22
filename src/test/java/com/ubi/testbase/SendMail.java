package com.ubi.testbase;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class SendMail {

    public static void main(String[] args) {

        // Recipient's email ID needs to be mentioned.
        String to = "sneha.jagdale@ibm.com,shaikshoaibrehman@ibm.com,ketanpai@in.ibm.com,sghorpade@in.ibm.com,md.shadan@ibm.com,tanvi.dedhia@ibm.com,supriya.barai@ibm.com,rohit.ghanekar@ibm.com,rohit.sharma20@ibm.com,fareen.shaikh1@ibm.com,harishankar.mishra@ibm.com,akshay.s.dubey@ibm.com,sampada.wadkar@ibm.com";
        
    	//String to = "shaikshoaibrehman@ibm.com,sampada.wadkar@ibm.com";

        // Sender's email ID needs to be mentioned
        String from = "ubiautomationtesting@gmail.com";

        // Assuming you are sending email from through Gmail's SMTP
        String host = "smtp.gmail.com";

        // Get system properties
        Properties properties = System.getProperties();

        // Setup mail server
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", "465");
        properties.put("mail.smtp.ssl.enable", "true");
        properties.put("mail.smtp.auth", "true");

        // Get the Session object and pass the authentication details
        Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("ubiautomationtesting@gmail.com", "gzgy tqwx knyk vayu");
            }
        });

        try {
            // Create a default MimeMessage object.
            MimeMessage message = new MimeMessage(session);

            // Set From: header field of the header.
            message.setFrom(new InternetAddress(from));

            // Set To: header field of the header.
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));

            // Set Subject: header field
            message.setSubject("Hey Team Update: External System Status Report");

            Multipart multipart = new MimeMultipart();

            // Existing code for the text part
            MimeBodyPart textPart = new MimeBodyPart();
            String emailBody = "<div style='color: blue;'>"
            		+ "Hey Team, please find the attached file of the external dependency system status update. "
            		+ "This script runs every hour daily to get the status of all services. "
            		+ "<br><br>"
            		+ "<span style='color: green;'>Please download the above given <strong>index.html</strong> file to see the test results of mentioned services.</span> "
            		+ "<br>If the Test is in <span style='color: red;'>failed, Error, or ignore state</span>, kindly check the service. "
            		+ "<br><br>"
            		+ "Here are the services: <br>"
            		+ "1. CBS <br>"
            		+ "2. GBM <br>"
            		+ "3. OLIVE <br>"
            		+ "4. IBM VERIFY <br>"
            		+ "5. CCMS <br>"
            		+ "6. ATM SWITCH <br>"
            		+ "<br>"
            		+ "<span style='color: red;'>Not added in the script:</span><br>"
            		+ "7. PROTEAN <br>"
            		+ "8. GBD <br>"
            		+ "9. AADHAR <br>"
            		+ "10. KARIX <br>"
            		+ "<br><br>"
            		+ "<strong>Regards,</strong><br>"
            		+ "<strong>Testing Team</strong><br><br>"
            		+ "<span style='color: black; font-size: small;'>*** This is an automated email, please do not reply. If you have any queries regarding this email, please contact Shoaib Rehman. ***</span>"
            		+ "<br><br>"
            		+ "</div>";


            textPart.setContent(emailBody, "text/html");

            // Create a part for the HTML content
            MimeBodyPart htmlPart = new MimeBodyPart();
            File htmlFile = new File("C:/Users/004QAI744/Documents/newPull/automationubi/ubiAutomation/target/serenity-reports/index.html");
            StringBuilder htmlContent = new StringBuilder();
            try (FileInputStream fis = new FileInputStream(htmlFile)) {
                int content;
                while ((content = fis.read()) != -1) {
                    htmlContent.append((char) content);
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            htmlPart.setContent(htmlContent.toString(), "text/html");

            // Create a part for the attachment
            MimeBodyPart attachmentPart = new MimeBodyPart();
            attachmentPart.attachFile(htmlFile);

            // Add all parts to the multipart
            multipart.addBodyPart(textPart);
            multipart.addBodyPart(htmlPart);  // Add the HTML part
            multipart.addBodyPart(attachmentPart); // Attach the HTML file

            // Set the complete message parts
            message.setContent(multipart);

            System.out.println("Email is sending..............");
            // Send message
            Transport.send(message);
            System.out.println("Email Sent successfully....");
        } catch (MessagingException | IOException mex) {
            mex.printStackTrace();
        }

    }
}
