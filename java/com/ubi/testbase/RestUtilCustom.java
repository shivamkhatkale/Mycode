package com.ubi.testbase;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Map;
import com.ubi.testbase.CommonRestUtils;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.JsonObject;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import net.serenitybdd.core.Serenity;
import net.serenitybdd.rest.SerenityRest;

public class RestUtilCustom {
	
	 public static String bearerToken = "";
	 public static String stringdbpID = CommonRestUtils.formatStringforHeaders(AppConfig.getdbpId().trim());
	 public static String stringdbpSecret = CommonRestUtils.formatStringforHeaders(AppConfig.getdbpSecret().trim());
	
	public static void triggerPostRequestwithUpdatedJsonrequest(String filePath, String attributeName, String attributeValue) {
        //ObjectMapper objectMapper = new ObjectMapper();

        System.out.println("filePath "+filePath);
        System.out.println("attributeName " +attributeName);
        System.out.println("attributeValue " +attributeValue);
  	  try {
            String updatedJson = JsonUpdater.updateJsonAttribute(filePath, attributeName, attributeValue);
            System.out.println(" updatedJson --------:"+ updatedJson);
            if (updatedJson.startsWith("Error") || updatedJson.equals("Attribute not found in the JSON file.")) {
                System.out.println(updatedJson);
                return;
            }

            Response response =SerenityRest.given()
    			    .header("Content-Type", "application/json")
    			    .header("dbp-id",stringdbpID)
    			    .header("dbp-secret",stringdbpSecret)
    			    .header("x-auth-dbp",bearerToken)// Add any other headers as needed
    				.when()
    				.body(updatedJson)
    				.post(RestAssured.baseURI);

    	   String responseBody = response.then().extract()
    	            .body()
    	            .asString();		
    	    Serenity.setSessionVariable("response").to(response);


            System.out.println("Actual Response Body: " + responseBody);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public static boolean validateJsonResponseFor400(String jsonResponse) {
  	 // com.google.gson.Gson gson = new Gson();
  	  com.google.gson.JsonObject jsonObject = com.google.gson.JsonParser.parseString(jsonResponse).getAsJsonObject();

        // Validate the root attributes
        if (!jsonObject.has("errorId") || !jsonObject.has("errorAt") || !jsonObject.has("errors")) {
            System.out.println("Required attributes are missing in the root JSON object.");
            return false;
        }

        // Validate the "errors" array
        com.google.gson.JsonArray errorsArray = jsonObject.getAsJsonArray("errors");
        if (errorsArray.size() == 0) {
            System.out.println("The errors array is empty.");
            return false;
        }

        // Validate the first error object
        JsonObject firstErrorObject = errorsArray.get(0).getAsJsonObject();
        if (!firstErrorObject.has("code") || !firstErrorObject.has("message")) {
            System.out.println("Required attributes are missing in the first error object.");
            return false;
        }

        // Validate the values of "code" and "message"
        String code = firstErrorObject.get("code").getAsString();
        String message = firstErrorObject.get("message").getAsString();
        if (!"400".equals(code) || !message.contains("400 Bad Request")) {
            System.out.println("The values of 'code' or 'message' are incorrect.");
            return false;
        }

        return true;
    }
    public static void validateJsonResponseFor404(String jsonResponse) {
        try {
            // Parse JSON string into JsonObject
            JsonObject jsonObject = com.google.gson.JsonParser.parseString(jsonResponse).getAsJsonObject();

            // Check for required attributes
            if (!jsonObject.has("timestamp") || !jsonObject.has("path") || !jsonObject.has("status") ||
                !jsonObject.has("error") || !jsonObject.has("message") || !jsonObject.has("requestId")) {
                System.out.println("Validation failed: Missing required attributes.");
                return;
            }

            // Check the value of the status attribute
            int status = jsonObject.get("status").getAsInt();
            if (status != 404) {
                System.out.println("Validation failed: Status is not 404.");
                return;
            }

            // Check the value of the error attribute
            String error = jsonObject.get("error").getAsString();
            if (!"Not Found".equals(error)) {
                System.out.println("Validation failed: Error does not contain 'Not Found'.");
                return;
            }

            // If all checks pass
            System.out.println("Validation successful: All attributes are present and valid.");
            System.out.println("Captured 'error' attribute: " + error);

        } catch (Exception e) {
            System.out.println("Validation failed: An unexpected error occurred.");
        }
    }
    public static void triggerPostRequestWithHeaderFlag(String requestBody, String headerFlag) {
        ObjectMapper objectMapper = new ObjectMapper();

        try {
            Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
            String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();

            Map<String, String> headers = new HashMap<>();
            headers.put("Content-Type", "application/json");
            headers.put("dbp-id", "stringdbpID");
            headers.put("dbp-secret", "stringdbpSecret");
            headers.put("x-auth-dbp", "bearerToken");

            // Split headerFlag by '_&_'
            String[] headerFlags = headerFlag.split("_&_");

            // Remove headers that match any of the headerFlags
            for (String flag : headerFlags) {
                flag = flag.trim();
                if (headers.containsKey(flag)) {
                    headers.remove(flag);
                }
            }

            // Build the request with the remaining headers
            Response response = SerenityRest
                .given()
                .headers(headers)
                .body(jsonString)
                .post(RestAssured.baseURI);

            String responseBody = response.then().extract().body().asString();
            Serenity.setSessionVariable("response").to(response);

            System.out.println("Actual Response Body: " + responseBody);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void triggerPostRequestwithAttributeRemovedJsonrequest(String filePath, String attributeName) {
        //ObjectMapper objectMapper = new ObjectMapper();

        System.out.println("filePath "+filePath);
        System.out.println("attributeName " +attributeName);
        //System.out.println("attributeValue " +attributeValue);
  	  try {
            String updatedJson = JsonUpdater.removeJsonAttribute(filePath, attributeName);
            System.out.println(" updatedJson --------:"+ updatedJson);
            if (updatedJson.startsWith("Error") || updatedJson.equals("Attribute not found in the JSON file.")) {
                System.out.println(updatedJson);
                return;
            }

            Response response =SerenityRest.given()
    			    .header("Content-Type", "application/json")
    			    .header("dbp-id",stringdbpID)
    			    .header("dbp-secret",stringdbpSecret)
    			    .header("x-auth-dbp",bearerToken)// Add any other headers as needed
    				.when()
    				.body(updatedJson)
    				.post(RestAssured.baseURI);

    	   String responseBody = response.then().extract()
    	            .body()
    	            .asString();		
    	    Serenity.setSessionVariable("response").to(response);


            System.out.println("Actual Response Body: " + responseBody);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
