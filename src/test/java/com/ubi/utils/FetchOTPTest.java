package com.ubi.utils;

import static org.junit.Assert.assertNotNull;

import com.ubi.gmail.utils.GmailFetcher;

public class FetchOTPTest {

    public String testFetchOTP() throws Exception {
    	
        String username = "tanvidtest14@gmail.com";
        String password = "hraa cfhj ghye bfuz";
        String senderEmail = "noreplyunionbankofindia@unionbankofindia.bank";
        
        long timeoutMillis = 120000; // 2 minute timeout
        long pollingIntervalMillis = 10000; // 5 seconds polling interval
        
        // Add initial delay to allow the email to arrive
        Thread.sleep(180000); // 1 minute delay (60000 milliseconds)
        
        GmailFetcher gmailFetcher = new GmailFetcher(username, password, senderEmail, timeoutMillis, pollingIntervalMillis);

        String otp = null;
        try {
            otp = gmailFetcher.fetchOTP();
            assertNotNull("OTP should not be null", otp);
            System.out.println("Fetched OTP: " + otp);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Failed to fetch OTP", e);
        }

        return otp;
    }
}
