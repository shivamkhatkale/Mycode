////package com.ubi.testbase;
//////
////import io.restassured.RestAssured;
////import io.restassured.response.Response;
//////
////public class Jira {
////    public static void main(String[] args) {
////
////        // Relaxed HTTPS validation
////        RestAssured.useRelaxedHTTPSValidation();
////
////        // Use cookie for authentication
////        String cookie = "JSESSIONID=666757199982FA3995B86DD904420F21; atlassian.xsrf.token=BYVD-R1HD-O8P8-FJCW_8a045559fabd875601f022f4556e629bc6acbce3_lin";
////
////        String testCaseId = "81135"; // Test case ID from your request
////        String projectId = "10100"; // Project ID from your request
////        String testResultStatusId = "40"; // Status ID for your test result
////
////        // Base URI for Jira Data Center API
////        RestAssured.baseURI = "https://jiradbp.unionbankofindia.co.in/rest/tests/1.0";
////
////        // Create request body in JSON format
////        String requestBody = "[{\"id\": " + testCaseId + ", \"testResultStatusId\": " + testResultStatusId +
////                ", \"userKey\": \"JIRAUSER10100\", \"executionDate\": \"2024-09-23T09:56:48.106Z\", " +
////                "\"actualStartDate\": \"2024-09-20T07:36:39.150Z\"}]";
////
////        // Perform the PUT request to update the test result
////        Response response = RestAssured.given()
////                .header("Accept", "application/json, text/plain, */*") // Accept header
////                .header("Accept-Language", "en-US,en;q=0.9") // Accept-Language header
////                .header("Connection", "keep-alive") // Connection header
////                .header("Content-Type", "application/json;charset=UTF-8") // Content-Type header
////                .header("Cookie", cookie) // Use cookie for authentication
////                .header("Origin", "https://jiradbp.unionbankofindia.co.in") // Origin header
////                .header("Referer", "https://jiradbp.unionbankofindia.co.in/secure/Tests.jspa") // Referer header
////                .header("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36") // User-Agent header
////                .header("X-Requested-With", "XMLHttpRequest") // X-Requested-With header
////                .header("jira-project-id", projectId) // Include necessary project ID header
////                .body(requestBody) // Attach request body
////                .when().put("/testresult") // Use PUT method
////                .then().log().status().log().body() // Log status and body for debugging
////                .extract().response(); // Extract the response
////
////        // Print the response details for debugging
////        System.out.println("Response Status Code: " + response.getStatusCode());
////        System.out.println("Response Body: " + response.getBody().asString());
////    }
////}
//
//
//
//package com.ubi.testbase;
////
////import io.restassured.RestAssured;
////import io.restassured.response.Response;
////
////public class Jira {
////    public static void main(String[] args) {
////
////        // Relaxed HTTPS validation
////        RestAssured.useRelaxedHTTPSValidation();
////
////        // Use cookie for authentication
////        String cookie = "JSESSIONID=666757199982FA3995B86DD904420F21; atlassian.xsrf.token=BYVD-R1HD-O8P8-FJCW_8a045559fabd875601f022f4556e629bc6acbce3_lin";
////
////        String projectId = "10100"; // Project ID from your request
////
////        // Define test cases and their statuses
////        String[] testCaseIds = {"81135", "81183"};
////        String[] testResultStatusIds = {"40", "39"}; // Corresponding statuses for each test case
////        String[] executionDates = {"2024-09-23T09:56:48.106Z", "2024-09-25T07:05:44.437Z"};
////        String[] actualStartDates = {"2024-09-20T07:36:39.150Z", "2024-09-25T07:04:52.809Z"};
////        String userKey = "JIRAUSER10100"; // User key
////
////        // Create request body in JSON format
////        StringBuilder requestBody = new StringBuilder("[");
////        for (int i = 0; i < testCaseIds.length; i++) {
////            requestBody.append("{")
////                    .append("\"id\": ").append(testCaseIds[i]).append(", ")
////                    .append("\"testResultStatusId\": ").append(testResultStatusIds[i]).append(", ")
////                    .append("\"userKey\": \"").append(userKey).append("\", ")
////                    .append("\"executionDate\": \"").append(executionDates[i]).append("\", ")
////                    .append("\"actualStartDate\": \"").append(actualStartDates[i]).append("\"")
////                    .append("}");
////            if (i < testCaseIds.length - 1) {
////                requestBody.append(", "); // Add a comma between objects
////            }
////        }
////        requestBody.append("]");
////
////        // Base URI for Jira Data Center API
////        RestAssured.baseURI = "https://jiradbp.unionbankofindia.co.in/rest/tests/1.0";
////
////        // Perform the PUT request to update the test results
////        Response response = RestAssured.given()
////                .header("Accept", "application/json, text/plain, */*")
////                .header("Accept-Language", "en-US,en;q=0.9")
////                .header("Connection", "keep-alive")
////                .header("Content-Type", "application/json;charset=UTF-8")
////                .header("Cookie", cookie)
////                .header("Origin", "https://jiradbp.unionbankofindia.co.in")
////                .header("Referer", "https://jiradbp.unionbankofindia.co.in/secure/Tests.jspa")
////                .header("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36")
////                .header("X-Requested-With", "XMLHttpRequest")
////                .header("jira-project-id", projectId)
////                .body(requestBody.toString()) // Attach the constructed request body
////                .when().put("/testresult")
////                .then().log().status().log().body()
////                .extract().response();
////
////        // Print the response details for debugging
////        System.out.println("Response Status Code: " + response.getStatusCode());
////        System.out.println("Response Body: " + response.getBody().asString());
////    }
////}
//
//import com.fasterxml.jackson.databind.ObjectMapper;
//import java.io.IOException;
//import java.net.HttpURLConnection;
//import java.net.URL;
//import java.nio.charset.StandardCharsets;
//import java.util.Map;
//
//
//public class Jira {
//    private static final String BASE_URL = "https://jiradbp.unionbankofindia.co.in/rest/tests/1.0/testresult";
//
//    public static void updateTestResults(String cookie, String projectId, String[] testCaseIds,
//                                         String[] testResultStatusIds, String[] executionDates,
//                                         String[] actualStartDates, String userKey) throws IOException {
//        ObjectMapper objectMapper = new ObjectMapper();
//
//        // Prepare the request body as an array of maps
//        Map<String, Object>[] testCases = new Map[testCaseIds.length];
//        for (int i = 0; i < testCaseIds.length; i++) {
//            Map<String, Object> testCase = Map.of(
//                    "id", testCaseIds[i],
//                    "testResultStatusId", testResultStatusIds[i],
//                    "userKey", userKey,
//                    "executionDate", executionDates[i],
//                    "actualStartDate", actualStartDates[i]
//            );
//            testCases[i] = testCase;
//        }
//
//        // Convert the testCases array to JSON
//        String jsonRequestBody = objectMapper.writeValueAsString(testCases);
//
//        // Create the connection
//        URL url = new URL(BASE_URL);
//        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
//        connection.setRequestMethod("PUT");
//        connection.setRequestProperty("Accept", "application/json, text/plain, */*");
//        connection.setRequestProperty("Content-Type", "application/json;charset=UTF-8");
//        connection.setRequestProperty("Cookie", cookie);
//        connection.setRequestProperty("jira-project-id", projectId);
//        connection.setDoOutput(true);
//
//        // Write the request body
//        connection.getOutputStream().write(jsonRequestBody.getBytes(StandardCharsets.UTF_8));
//
//        // Get the response code
//        int responseCode = connection.getResponseCode();
//        if (responseCode == HttpURLConnection.HTTP_OK) {
//            System.out.println("Test results updated successfully.");
//        } else {
//            // Log the error and throw an exception
//            String errorMessage = "Failed to update test results. HTTP error code: " + responseCode;
//            System.out.println(errorMessage);
//            throw new IOException(errorMessage);
//        }
//    }
//}
////public class Jira {
////    private static final String BASE_URL = "https://jiradbp.unionbankofindia.co.in/rest/tests/1.0/testresult";
////
////    public static void updateTestResults(String cookie, String projectId, String[] testCaseIds,
////                                         String[] testResultStatusIds, String[] executionDates,
////                                         String[] actualStartDates, String userKey) {
////        ObjectMapper objectMapper = new ObjectMapper();
////
////        try {
////            // Prepare the request body as an array of maps
////            Map<String, Object>[] testCases = new Map[testCaseIds.length];
////            for (int i = 0; i < testCaseIds.length; i++) {
////                Map<String, Object> testCase = Map.of(
////                        "id", testCaseIds[i],
////                        "testResultStatusId", testResultStatusIds[i],
////                        "userKey", userKey,
////                        "executionDate", executionDates[i],
////                        "actualStartDate", actualStartDates[i]
////                );
////                testCases[i] = testCase;
////            }
////
////            // Convert the testCases array to JSON
////            String jsonRequestBody = objectMapper.writeValueAsString(testCases);
////
////            // Create the connection
////            URL url = new URL(BASE_URL);
////            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
////            connection.setRequestMethod("PUT");
////            connection.setRequestProperty("Accept", "application/json, text/plain, */*");
////            connection.setRequestProperty("Content-Type", "application/json;charset=UTF-8");
////            connection.setRequestProperty("Cookie", cookie);
////            connection.setRequestProperty("jira-project-id", projectId);
////            connection.setDoOutput(true);
////
////            // Write the request body
////            connection.getOutputStream().write(jsonRequestBody.getBytes(StandardCharsets.UTF_8));
////
////            // Get the response code
////            int responseCode = connection.getResponseCode();
////            if (responseCode == HttpURLConnection.HTTP_OK) {
////                System.out.println("Test results updated successfully.");
////            } else {
////                System.out.println("Failed to update test results. HTTP error code: " + responseCode);
////            }
////        } catch (IOException e) {
////            e.printStackTrace(); // Handle the exception as necessary
////        }
////    }
////}

package com.ubi.testbase;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.*;

public class Jira {

    public static String PROJECT_ID = "10100";
    public static String BASE_URL = "https://jiradbp.unionbankofindia.co.in/rest/tests/1.0/";
    public static String TOKEN_URL = "https://jiradbp.unionbankofindia.co.in/rest/gadget/1.0/";
    public static Map<String, Integer> statusIds = new HashMap<>();

    public static void main(String[] args) {

        // Initialize status IDs
        statusIds.put("Blocked", 41);
        statusIds.put("Fail", 40);
        statusIds.put("In Progress", 38);
        statusIds.put("Not Executed", 37);
        statusIds.put("Pass", 39);
        statusIds.put("Not In Scope", 92);

        // Define the test cases and the corresponding cycle key
        List<String> testCaseKeys = Arrays.asList("UDB-T7627");  // List of test cases to update
        String testCycleKey = "UDB-C175";  // The test cycle to which these test cases belong

        // Login and fetch xsrf token
//        String xsrfToken = login();
//        String cookie = String.format("JSESSIONID=%s; atlassian.xsrf.token=%s", "33B2F43601931888490897D766B71C74", xsrfToken);

//        Map<String, String> cookies = login();
        Map<String, String> cookies = login();
        String jsessionId = cookies.get("JSESSIONID");
        String xsrfToken = cookies.get("atlassian.xsrf.token");

        String cookie = String.format("JSESSIONID=%s; atlassian.xsrf.token=%s", cookies.get("JSESSIONID"), cookies.get("atlassian.xsrf.token"));



        // Get the test cycle ID
        int testCycleId = searchTestCycle(cookie, testCycleKey);

        // Iterate over each test case key and update the result
        for (String testCaseKey : testCaseKeys) {
            // Get the test case ID
            int testCaseId = searchTestCase(testCaseKey, cookie);
            if (testCaseId == 0) {
                System.out.println("Test case " + testCaseKey + " not found.");
                continue;
            }

            // Get the unique ID to change status
            int uniqueId = fetchUniqueIdToChangeStatus(cookie, testCycleId, testCaseId);
            if (uniqueId == 0) {
                System.out.println("No unique ID found for test case " + testCaseKey);
                continue;
            }

            // Update the test result (e.g., mark as 'Pass')
            updateTestResult(cookie, uniqueId, statusIds.get("Pass"));
        }
    }

    private static String generateAuthToken() {

        try {
            URL url = new URL(TOKEN_URL);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("POST");
            connection.setRequestProperty("cookie", "ajs_anonymous_id=%222ad622d2-eda4-4ef4-bafd-1de5e86e037e%22; ajs_anonymous_id=%222ad622d2-eda4-4ef4-bafd-1de5e86e037e%22; marketplace-launch-darkly=%7B%22userKey%22%3A%22e3b2580f-dd3f-478d-9e1a-af28f25c7de8%22%2C%22aaid%22%3A%22712020%3Add242311-d3a4-4787-baa3-be5857775fd9%22%7D; _issue_in_bifrost=true; atl-bsc-consent-token-fallback=0031111001; __awc_tld_test__=tld_test; __awc_tld_test__=tld_test; atlassian.account.xsrf.token=229701c9-f6ef-46fa-8ca7-47482ead1b9f; atlassian.xsrf.token=82dcaf82c32bdb4382a2992211a9873a388f6c4d_lin; tenant.session.token=eyJraWQiOiJzZXNzaW9uLXNlcnZpY2UvcHJvZC0xNTkyODU4Mzk0IiwiYWxnIjoiUlMyNTYifQ.eyJhc3NvY2lhdGlvbnMiOltdLCJzdWIiOiI3MTIwMjA6ZGQyNDIzMTEtZDNhNC00Nzg3LWJhYTMtYmU1ODU3Nzc1ZmQ5IiwiZW1haWxEb21haW4iOiJnbWFpbC5jb20iLCJpbXBlcnNvbmF0aW9uIjpbXSwiY3JlYXRlZCI6MTcyOTQzNjg2NywicmVmcmVzaFRpbWVvdXQiOjE3MzAwOTU3MTAsInZlcmlmaWVkIjp0cnVlLCJpc3MiOiJzZXNzaW9uLXNlcnZpY2UiLCJzZXNzaW9uSWQiOiI0Y2FkYmJmMi1jZjE3LTQwZTQtOWIyNC0wNmMyNzBiOGIxNWQiLCJzdGVwVXBzIjpbXSwiYXVkIjoiYXRsYXNzaWFuIiwibmJmIjoxNzMwMDk1MTEwLCJleHAiOjE3MzI2ODcxMTAsImlhdCI6MTczMDA5NTExMCwiZW1haWwiOiJwaXl1c2hiaDMxQGdtYWlsLmNvbSIsImp0aSI6IjRjYWRiYmYyLWNmMTctNDBlNC05YjI0LTA2YzI3MGI4YjE1ZCJ9.Xc6hEjkMxFyfqdwvUEdw8i2IFB4OiSiciHij2ebb_gq73i5EguLtDO0Co032eKUbYyh3ukKe0UazlSqqQZEjdoeUWwrH5gu59A03XfCFO9EgEDCUqcuE3SvktJIFdaoKuCFfgcO6ZnQxvYV9rog1CFD_Gj9MwCO0f1QrDqp4NZTxRpra13ZA810W1_spyTaAwYZCB_LLRULHU_2WSePVYWiP2xPmCRZ-Glmhd2erdKmq8cmnSrfuDHU3u_sNeGXb0Mh66ilgDKGjpwwhd45kjc9mZGl3XFgyg9T1oLCBbkwNPq88OXRUQX7CiYbUGQ53wIvCte1zg1fE08fc2V_yVQ; atl-bsc-consent-token=0031111010; atl-bsc-show-banner=0; JSESSIONID=AEQ1NK02AHfhcKkepbvp-MklAJ4W2TgCgfobS3v8");
            connection.setDoOutput(true);

            String urlParameters = "plugin-key=com.kanoah.test-manager" +
                    "&product-context={\"board.id\":\"3\",\"project.id\":\"" + PROJECT_ID + "\",\"project.key\":\"AUT\",\"board.type\":\"kanban\"}" +
                    "&key=main-project-page" +
                    "&width=100%" +
                    "&height=100%" +
                    "&classifier=json";

            try (OutputStream os = connection.getOutputStream()) {
                byte[] input = urlParameters.getBytes(StandardCharsets.UTF_8);
                os.write(input, 0, input.length);
            }

            int responseCode = connection.getResponseCode();
            System.out.println("Response Code: " + responseCode);
            StringBuilder content = new StringBuilder();
            try (BufferedReader in = new BufferedReader(new InputStreamReader(
                    responseCode >= 200 && responseCode < 300 ? connection.getInputStream() : connection.getErrorStream()))) {
                String inputLine;
                while ((inputLine = in.readLine()) != null) {
                    content.append(inputLine);
                }
            }

            JSONObject jsonResponse = new JSONObject(content.toString());
            String contextJwt = jsonResponse.optString("contextJwt", "Key not found");
            System.out.println("contextJwt: " + contextJwt);
//
//
//            // Close connection
           connection.disconnect();
            return contextJwt;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "Error generating token";
    }



    private static int searchTestCycle(String cookie, String testCycleKey){
        try {
            // Define the URL
            String urlString = BASE_URL
                    + "testrun/search?fields=id%2Ckey%2Cname%2CfolderId%2CiterationId%2CprojectVersionId%2CenvironmentId%2CuserKeys%2CenvironmentIds%2CplannedStartDate%2CplannedEndDate%2CexecutionTime%2CestimatedTime%2CtestResultStatuses%2CtestCaseCount%2CissueCount%2Cstatus(id%2Cname%2Ci18nKey%2Ccolor)%2CcustomFieldValues%2CcreatedOn%2CcreatedBy%2CupdatedOn%2CupdatedBy%2Cowner&query=testRun.projectId+IN+("
                    + PROJECT_ID
                    + ")+ORDER+BY+testRun.name+DESC&maxResults=90000&startAt=0&archived=false";
            URL url = new URL(urlString);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();


            // Set request properties
            connection.setRequestMethod("GET");
            connection.setRequestProperty("accept", "application/json, text/plain, */*");
            connection.setRequestProperty("accept-encoding", "gzip, deflate, br");
            connection.setRequestProperty("accept-language", "en-US,en;q=0.9");
            connection.setRequestProperty("connection", "keep-alive");
            connection.setRequestProperty("content-type", "application/x-www-form-urlencoded; charset=UTF-8");
            connection.setRequestProperty("cookie", cookie);

            // Send request and get response code
            int responseCode = connection.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) {
                // Read the response
                BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
                StringBuilder response = new StringBuilder();
                String line;
                while ((line = reader.readLine()) != null) {
                    response.append(line);
                }
                reader.close();

                // Parse JSON response
                JSONObject jsonResponse = new JSONObject(response.toString());
                JSONArray results = jsonResponse.getJSONArray("results");
                System.out.println(jsonResponse);

                // Extract key and id into HashMap
                Map<String, Integer> keyIdMap = new HashMap<>();
                for (int i = 0; i < results.length(); i++) {
                    JSONObject result = results.getJSONObject(i);
                    String key = result.getString("key");
                    int id = result.getInt("id");
                    keyIdMap.put(key, id);
                }

                System.out.println( "Test Cycle Id: " + keyIdMap.get(testCycleKey));
                return keyIdMap.get(testCycleKey);

            } else {
                System.out.println("GET request failed. Response code: " + responseCode);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    private static int searchTestCase(String testCaseKey, String cookie){

        String url = BASE_URL + "testcase/search";
        String queryParams = "fields=id,key,projectId,name,averageTime,estimatedTime,labels,folderId,componentId,status(id,name,i18nKey,color),priority(id,name,i18nKey,color),lastTestResultStatus(name,i18nKey,color),majorVersion,createdOn,createdBy,updatedOn,updatedBy,customFieldValues,owner,folderId"
                + "&query=testCase.projectId+IN+("
                + PROJECT_ID
                + ")+AND+testCase.keyName+LIKE+%22"
                + testCaseKey
                + "%22+ORDER+BY+testCase.statusIndex+DESC"
                + "&startAt=0&maxResults=90000&archived=false";

        try {
            URL obj = new URL(url + "?" + queryParams);
            HttpURLConnection con = (HttpURLConnection) obj.openConnection();

            // Set up the request method and headers
            con.setRequestMethod("GET");
            con.setRequestProperty("cookie", cookie);

            // Get the response code
            int responseCode = con.getResponseCode();
            System.out.println("Response Code: " + responseCode);

            // Read the response
            if (responseCode == HttpURLConnection.HTTP_OK) { // Success
                BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
                String inputLine;
                StringBuilder response = new StringBuilder();

                while ((inputLine = in.readLine()) != null) {
                    response.append(inputLine);
                }
                in.close();

                // Parse JSON response
                JSONObject jsonResponse = new JSONObject(response.toString());
                JSONArray results = jsonResponse.getJSONArray("results");

                // Extract key and id into HashMap
                Map<String, Integer> keyIdMap = new HashMap<>();

                JSONObject result = results.getJSONObject(0);
                System.out.println("Test Case Id: " + result.getInt("id"));
                return result.getInt("id");

            } else {
                System.out.println("Failed to retrieve test cases. Response Code: " + responseCode);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    private static int fetchUniqueIdToChangeStatus(String cookie, int testCycleId, int testCaseId) {

        HttpURLConnection connection = null;
        try {
            // Define the URL
            URL url = new URL(BASE_URL + "testrun/" + testCycleId + "/testrunitems?fields=id%2Cindex%2CissueCount%2C%24lastTestResult");
            connection = (HttpURLConnection) url.openConnection();

            // Set the request method to GET
            connection.setRequestMethod("GET");

            // Set request headers
            connection.setRequestProperty("accept", "application/json, text/plain, */*");
            connection.setRequestProperty("content-type", "application/x-www-form-urlencoded; charset=UTF-8");
            connection.setRequestProperty("cookie", cookie);
            connection.setRequestProperty("user-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0");

            // Send the request and read the response
            int responseCode = connection.getResponseCode();

            StringBuilder content = new StringBuilder();
            try (BufferedReader in = new BufferedReader(new InputStreamReader(
                    responseCode >= 200 && responseCode < 300 ? connection.getInputStream() : connection.getErrorStream()))) {
                String inputLine;
                while ((inputLine = in.readLine()) != null) {
                    content.append(inputLine);
                }
            }

            // Parse the JSON response
            JSONObject jsonObject = new JSONObject(content.toString());
//            System.out.println("Response Content: " + content);

            // Attempt to retrieve "testRunItems" array, use optJSONArray to avoid exception if key is missing
            JSONArray testRunItems = jsonObject.optJSONArray("testRunItems");

            if (testRunItems == null) {
                System.out.println("No 'testRunItems' array found in the JSON response.");
                return 0;
            }

            // Variable to store the test case ID to search for
            int storedTestCaseId = testCaseId;

            // Iterate over testRunItems array to find the matching test case
            Integer lastTestResultId = null;
            for (int i = 0; i < testRunItems.length(); i++) {
                JSONObject testRunItem = testRunItems.getJSONObject(i);
                JSONObject lastTestResult = testRunItem.optJSONObject("$lastTestResult");
                if (lastTestResult == null) {
                    System.out.println("No '$lastTestResult' object found for item at index " + i);
                    continue;
                }

                JSONObject testCase = lastTestResult.optJSONObject("testCase");
                if (testCase == null) {
                    System.out.println("No 'testCase' object found within '$lastTestResult' for item at index " + i);
                    continue;
                }

                if (testCase.getInt("id") == storedTestCaseId) {
                    lastTestResultId = lastTestResult.getInt("id");
                    break; // Exit loop once the match is found
                }
            }

            // Print the found lastTestResult id or a message if not found
            if (lastTestResultId != null) {
                return lastTestResultId;
            } else {
                System.out.println("No matching test case found for ID: " + storedTestCaseId);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (connection != null) connection.disconnect();
        }
        return 0;
    }

    private static void updateTestResult(String cookie, int uniqueId, int statusId) {

        System.out.println("Unique Id:" + uniqueId);
        System.out.println("Change to:" + statusId);

        String url = BASE_URL + "testresult";
        String jsonData = String.format("[{\"id\":%s,\"testResultStatusId\":%s,\"userKey\":\"JIRAUSER11808\",\"actualStartDate\":\"2024-10-11T11:22:07.237Z\",\"executionDate\":\"2024-11-07T10:25:52.257Z\"}]", uniqueId, statusId);
//        actualStartDate: "2024-10-11T11:22:07.237Z"
//executionDate: "2024-11-07T10:25:52.257Z"

        try {
            // Create URL and HttpURLConnection
            URL obj = new URL(url);
            HttpURLConnection connection = (HttpURLConnection) obj.openConnection();

            // Set request method to PUT
            connection.setRequestMethod("PUT");

            // Set headers
            connection.setRequestProperty("accept", "application/json, text/plain, */*");
            connection.setRequestProperty("accept-language", "en-US,en;q=0.9");
            connection.setRequestProperty("content-type", "application/json;charset=UTF-8");
            connection.setRequestProperty("cookie", cookie);
            // Enable output for the request body
            connection.setDoOutput(true);

            // Write data to the request body
            try (OutputStream os = connection.getOutputStream()) {
                byte[] input = jsonData.getBytes("utf-8");
                os.write(input, 0, input.length);
            }

            // Get response code and handle response
            int responseCode = connection.getResponseCode();
            System.out.println("Response Code: " + responseCode);

            BufferedReader reader;
            if (responseCode == HttpURLConnection.HTTP_OK) { // success
                reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            } else { // error
                reader = new BufferedReader(new InputStreamReader(connection.getErrorStream()));
            }

            // Print response
            StringBuilder response = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                response.append(line);
            }
            reader.close();

        } catch (Exception e) {
            System.out.println("An error occurred: " + e.getMessage());
            e.printStackTrace();
        }
    }
//
//    private static String login(){
//        try {
//            // Set up the URL and HttpURLConnection
//            URL url = new URL(TOKEN_URL + "login");
//            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
//
//            // Configure the request headers
//            connection.setRequestMethod("POST");
//            connection.setRequestProperty("accept", "application/json, text/plain, */*");
//            connection.setRequestProperty("accept-language", "en-US,en;q=0.9");
//            connection.setRequestProperty("content-type", "application/x-www-form-urlencoded; charset=UTF-8");
//            connection.setRequestProperty("jira-project-id", PROJECT_ID);
//            connection.setRequestProperty("origin", "https://jiradbp.unionbankofindia.co.in");
//            connection.setRequestProperty("priority", "u=1, i");
//            connection.setRequestProperty("referer", "https://jiradbp.unionbankofindia.co.in/secure/Dashboard.jspa?");
//            connection.setRequestProperty("sec-ch-ua", "\"Chromium\";v=\"130\", \"Microsoft Edge\";v=\"130\", \"Not?A_Brand\";v=\"99\"");
//            connection.setRequestProperty("sec-ch-ua-mobile", "?0");
//            connection.setRequestProperty("sec-ch-ua-platform", "\"Windows\"");
//            connection.setRequestProperty("sec-fetch-dest", "empty");
//            connection.setRequestProperty("sec-fetch-mode", "cors");
//            connection.setRequestProperty("sec-fetch-site", "same-origin");
//            connection.setRequestProperty("user-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0");
//            connection.setRequestProperty("x-requested-with", "XMLHttpRequest");
//
//            // Enable input/output streams
//            connection.setDoOutput(true);
//
//            // Write data to the request body
//            String requestBody = "os_username=Arshan.Bhanage%40ibm.com&os_password=Qwerty123%24";
//
//            try (OutputStream os = connection.getOutputStream()) {
//                byte[] input = requestBody.getBytes(StandardCharsets.UTF_8);
//                os.write(input, 0, input.length);
//            }
//
//            // Read the response
//            BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(), StandardCharsets.UTF_8));
//            StringBuilder response = new StringBuilder();
//            String responseLine;
//            while ((responseLine = br.readLine()) != null) {
//                response.append(responseLine.trim());
//            }
//
//            // Print the response for debugging (optional)
//            System.out.println("Response: " + response.toString());
//
//            // Extract the XSRF token from the response headers
//
//            String xsrfToken = null;
//
//            String setCookieHeader = connection.getHeaderField("Set-Cookie");
//            if (setCookieHeader != null && setCookieHeader.contains("atlassian.xsrf.token")) {
//                String[] cookies = setCookieHeader.split(";");
//                for (String cookie : cookies) {
//                    if (cookie.trim().startsWith("atlassian.xsrf.token")) {
//                        xsrfToken = cookie.split("=")[1];
//                        break;
//                    }
//                }
//            }
//
//            // Output the XSRF token
//            System.out.println("Cookies: " + xsrfToken);
//            return xsrfToken;
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return null;
//    }

//    private static Map<String, String> login() {
//        try {
//            // Set up the URL and HttpURLConnection
//            URL url = new URL(TOKEN_URL + "login");
//            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
//
//            // Configure the request headers
//            connection.setRequestMethod("POST");
//            connection.setRequestProperty("accept", "application/json, text/plain, */*");
//            connection.setRequestProperty("accept-language", "en-US,en;q=0.9");
//            connection.setRequestProperty("content-type", "application/x-www-form-urlencoded; charset=UTF-8");
//            connection.setRequestProperty("jira-project-id", PROJECT_ID);
//            connection.setRequestProperty("origin", "https://jiradbp.unionbankofindia.co.in");
//            connection.setRequestProperty("priority", "u=1, i");
//            connection.setRequestProperty("referer", "https://jiradbp.unionbankofindia.co.in/secure/Dashboard.jspa?");
//            connection.setRequestProperty("sec-ch-ua", "\"Chromium\";v=\"130\", \"Microsoft Edge\";v=\"130\", \"Not?A_Brand\";v=\"99\"");
//            connection.setRequestProperty("sec-ch-ua-mobile", "?0");
//            connection.setRequestProperty("sec-ch-ua-platform", "\"Windows\"");
//            connection.setRequestProperty("sec-fetch-dest", "empty");
//            connection.setRequestProperty("sec-fetch-mode", "cors");
//            connection.setRequestProperty("sec-fetch-site", "same-origin");
//            connection.setRequestProperty("user-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0");
//            connection.setRequestProperty("x-requested-with", "XMLHttpRequest");
//
//            // Enable input/output streams
//            connection.setDoOutput(true);
//
//            // Write data to the request body
//            String requestBody = "os_username=Arshan.Bhanage%40ibm.com&os_password=Qwerty123%24";
//            try (OutputStream os = connection.getOutputStream()) {
//                byte[] input = requestBody.getBytes(StandardCharsets.UTF_8);
//                os.write(input, 0, input.length);
//            }
//
//            // Read the response
//            BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(), StandardCharsets.UTF_8));
//            StringBuilder response = new StringBuilder();
//            String responseLine;
//            while ((responseLine = br.readLine()) != null) {
//                response.append(responseLine.trim());
//            }
//
//            // Print the response for debugging (optional)
//            System.out.println("Response: " + response.toString());
//
//            // Extract the cookies from the response headers
//            Map<String, String> cookies = new HashMap<>();
//            System.out.println(connection.getHeaderFields());
//            String setCookieHeader = connection.getHeaderField("Set-Cookie");
//            if (setCookieHeader != null) {
//                String[] cookieArray = setCookieHeader.split(";");
//                for (String cookie : cookieArray) {
//                    cookie = cookie.trim();
//                    if (cookie.startsWith("JSESSIONID")) {
//                        cookies.put("JSESSIONID", cookie.split("=")[1]);
//                    }
//                    if (cookie.startsWith("atlassian.xsrf.token")) {
//                        cookies.put("atlassian.xsrf.token", cookie.split("=")[1]);
//                    }
//                }
//            }
//
//            // Output the extracted cookies
//            System.out.println("Cookies: " + cookies);
//            return cookies;
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return null;
//    }


    private static Map<String, String> login() {
        Map<String, String> cookies = new HashMap<>();
        try {
            // Set up the URL and HttpURLConnection
            URL url = new URL(TOKEN_URL + "login");
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();

            // Configure the request headers
            connection.setRequestMethod("POST");
            connection.setRequestProperty("accept", "application/json, text/plain, */*");
            connection.setRequestProperty("accept-language", "en-US,en;q=0.9");
            connection.setRequestProperty("content-type", "application/x-www-form-urlencoded; charset=UTF-8");
            connection.setRequestProperty("jira-project-id", PROJECT_ID);
            connection.setRequestProperty("origin", "https://jiradbp.unionbankofindia.co.in");
            connection.setRequestProperty("priority", "u=1, i");
            connection.setRequestProperty("referer", "https://jiradbp.unionbankofindia.co.in/secure/Dashboard.jspa?");
            connection.setRequestProperty("sec-ch-ua", "\"Chromium\";v=\"130\", \"Microsoft Edge\";v=\"130\", \"Not?A_Brand\";v=\"99\"");
            connection.setRequestProperty("sec-ch-ua-mobile", "?0");
            connection.setRequestProperty("sec-ch-ua-platform", "\"Windows\"");
            connection.setRequestProperty("sec-fetch-dest", "empty");
            connection.setRequestProperty("sec-fetch-mode", "cors");
            connection.setRequestProperty("sec-fetch-site", "same-origin");
            connection.setRequestProperty("user-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0");
            connection.setRequestProperty("x-requested-with", "XMLHttpRequest");

            // Enable input/output streams
            connection.setDoOutput(true);

            // Write data to the request body
            String requestBody = "os_username=Sampada.Wadkar%40ibm.com&os_password=Qwerty123%24";
            try (OutputStream os = connection.getOutputStream()) {
                byte[] input = requestBody.getBytes(StandardCharsets.UTF_8);
                os.write(input, 0, input.length);
            }

            // Read the response
            BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(), StandardCharsets.UTF_8));
            StringBuilder response = new StringBuilder();
            String responseLine;
            while ((responseLine = br.readLine()) != null) {
                response.append(responseLine.trim());
            }

            // Print the response for debugging (optional)
            System.out.println("Response: " + response.toString());

            // Extract cookies from the response headers
            Map<String, String> cookieMap = new HashMap<>();
            // Loop through all Set-Cookie headers
            List<String> setCookieHeaders = connection.getHeaderFields().get("Set-Cookie");
            if (setCookieHeaders != null) {
                for (String cookieHeader : setCookieHeaders) {
                    String[] cookiesArray = cookieHeader.split(";");
                    for (String cookie : cookiesArray) {
                        cookie = cookie.trim();
                        if (cookie.startsWith("JSESSIONID")) {
                            cookieMap.put("JSESSIONID", cookie.split("=")[1]);
                        }
                        if (cookie.startsWith("atlassian.xsrf.token")) {
                            cookieMap.put("atlassian.xsrf.token", cookie.split("=")[1]);
                        }
                    }
                }
            }

            // Output the extracted cookies for debugging
            System.out.println("Extracted Cookies: " + cookieMap);
            return cookieMap;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


}
