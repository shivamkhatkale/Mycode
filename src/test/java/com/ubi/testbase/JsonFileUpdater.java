package com.ubi.testbase;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.mifmif.common.regex.Generex;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import net.serenitybdd.core.Serenity;
import net.serenitybdd.rest.SerenityRest;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.json.JSONObject;

public class JsonFileUpdater {
	
	
	public static String bearerToken = "";
	static String stringdbpID = formatStringforHeaders(AppConfig.getdbpId().trim());
	static String stringdbpSecret = formatStringforHeaders(AppConfig.getdbpSecret().trim());
	public static String RequestBodyFolderName ;
	static FileHandler fileHandlerToResponseFolder = new FileHandler("responseFolder");
	FileHandler fileHandlerToRequestBodies = new FileHandler("/testdata/api/request/" + RequestBodyFolderName);

    // Method to update JSON file with random values generated using regex
    public static void updateJsonFileWithRandomValue(String filePath, List<String> keyList, List<String> regexList) throws IOException {
        // Create an ObjectMapper to read and write JSON
        ObjectMapper mapper = new ObjectMapper();

        // Load the JSON file into an ObjectNode
        File jsonFile = new File(filePath);
        ObjectNode jsonObject = (ObjectNode) mapper.readTree(jsonFile);

        for(int i=0;i<keyList.size();i++)
        {
        // Generate a random value based on the provided regex
        Generex generex = new Generex(regexList.get(i));
        String randomValue = generex.random();

        // Update the JSON with the generated value for the specified key
        jsonObject.put(keyList.get(i), randomValue);

        // Write the updated JSON back to the file
        mapper.writerWithDefaultPrettyPrinter().writeValue(jsonFile, jsonObject);
        }
        System.out.println("Updated JSON Request: " + jsonObject.toString());
    }
    
    public static void updateJsonResponseFile(String sourceFilePath, String destinationFilePath ) throws IOException {
    	
    	Path src = Paths.get(TestBase._baseDir, sourceFilePath);
    	Path dest = Paths.get(TestBase._baseDir, destinationFilePath);
    	
        try (FileReader fileReader = new FileReader(src.toString());
             FileWriter fileWriter = new FileWriter(dest.toString())) {

            int data;
            // Read data from the source file and write it to the destination file
            while ((data = fileReader.read()) != -1) {
                fileWriter.write(data);
            }

            System.out.println("File copied successfully!");
        } catch (IOException e) {
            System.out.println("Error occurred while copying the file.");
            e.printStackTrace();
        }
    }
    
 public static void getResponsefromTriggerPost(String responseBody, String requestBody ) throws IOException {
    	
	 ObjectMapper objectMapper = new ObjectMapper();
		String fileName = fileHandlerToResponseFolder.extractFilename(responseBody);
		try {
			// Append other paths to the base directory
			Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
			String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
			System.out.println("Request Body: " + jsonString);

			Response response = SerenityRest.given()
					.header("Content-Type", "application/json")
					.header("dbp-id", stringdbpID)
					.header("dbp-secret", stringdbpSecret)
					.header("Authorization", "Bearer " + bearerToken) // Add any other headers as needed
					.when()
					.body(jsonString)
					.post(RestAssured.baseURI);
			
			

			String responseBodyfromRequest = response.then().extract().body().asString();
			Serenity.setSessionVariable("response").to(response);

			System.out.println("Response Body triggerPostRequestCommonRest: " + responseBodyfromRequest);

			// Parse the response body string into a JsonNode
			JsonNode jsonNode = objectMapper.readTree(responseBodyfromRequest);

			// Save the response body to a file using FileHandler
			fileHandlerToResponseFolder.writeJsonToFile(fileName, jsonNode);

		} catch (IOException e) {
			e.printStackTrace();
		}
    }
    
	public static String formatStringforHeaders(String formatString) {
		if (formatString.length() > 1) {
			// Remove the first and last characters
			formatString = formatString.substring(1, formatString.length() - 1);
		} else {
			// Handle the case where the string is too short
			formatString = ""; // Or handle according to your needs
		}
		return formatString;
	}
	
	
	    
}

