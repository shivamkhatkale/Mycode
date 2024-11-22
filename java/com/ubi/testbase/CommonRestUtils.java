package com.ubi.testbase;

import org.apache.commons.text.similarity.LevenshteinDistance;

import com.fasterxml.jackson.core.exc.StreamReadException;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Scanner;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ubi.utils.FetchOTPTest;
import com.ubi.utils.FileUtils;
import com.ubi.utils.ReuseableSpecifications;
import net.serenitybdd.rest.SerenityRest;
import net.serenitybdd.core.Serenity;
import io.cucumber.java.PendingException;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.serenitybdd.annotations.Step;
import io.restassured.RestAssured;
import io.restassured.config.SSLConfig;
import io.restassured.response.Response;
import io.restassured.response.ValidatableResponse;
import org.apache.commons.text.similarity.LevenshteinDistance;
import com.fasterxml.jackson.core.exc.StreamReadException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.util.HashMap;
import java.util.Map;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import com.ubi.testbase.JsonUpdater;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ubi.utils.FileUtils;
import com.ubi.utils.ReuseableSpecifications;
import net.serenitybdd.rest.SerenityRest;
import net.serenitybdd.core.Serenity;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.serenitybdd.annotations.Step;
import io.restassured.RestAssured;
import io.restassured.config.SSLConfig;
import io.restassured.response.Response;
import io.restassured.response.ValidatableResponse;

public class CommonRestUtils {

	public static String bearerToken = "";
	static String stringdbpID = formatStringforHeaders(AppConfig.getdbpId().trim());
	static String stringdbpSecret = formatStringforHeaders(AppConfig.getdbpSecret().trim());
	// static String stringSITdbpID =
	// formatStringforHeaders(AppConfig.getSITdbpID().trim());
	// static String stringSITdbpSecret =
	// formatStringforHeaders(AppConfig.getSITdbpSecret().trim());
	
	//FileHandler fileHandlerToResponseFolder = new FileHandler("responseFolder");
	//FileHandler fileHandlerToRequestBodies = new FileHandler("/testdata/api/request/mvp/fdrd");
	//FileHandler fileHandlerToRequestBodies = new FileHandler("/testdata/api/request/Drop2/NCMC");
	
	public static String RequestBodyFolderName ;
	FileHandler fileHandlerToResponseFolder = new FileHandler("responseFolder");
	FileHandler fileHandlerToRequestBodies = new FileHandler("/testdata/api/request/" + RequestBodyFolderName);
	
	//FileHandler fileHandlerToRequestBodies = new FileHandler("/testdata/api/request/mvp/registration");
	
	public static String otpRMN = "";

	@Step("^user triggers a post request form file {0} $")
	public void triggerPostRequestWithBody(String parameter) {
		/*
		 * SerenityRest.given()
		 * .baseUri("https://sitdp.unionbankofindia.co.in/app/customer/api/v1")
		 * .basePath("/saveTermDeposit") .contentType("application/json")
		 * .body(FileUtils.readFile(filePath)) .when() .post() .then();
		 */
		ValidatableResponse response = SerenityRest.given().pathParam("cif", parameter).when()
				.get("fiacbalinq/117910012003125")

				.then().statusCode(200);

		String responseBody = response.extract().asString();
		System.out.println("Response Body: " + responseBody);
	}

	@Then("^user triggers a get request with parameter (.*)$")
	public void triggerGetRequestCommonRest(String parameter) {
		Response response = SerenityRest.given().header("Content-Type", "application/json")
				.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)
				.header("Authorization", "Bearer " + bearerToken).when().get(RestAssured.baseURI + "/" + parameter);

		String responseBody1 = response.then().extract().body().asString();
		Serenity.setSessionVariable("response").to(response);

		System.out.println("Response Body: " + responseBody1);

		// return response;
	}

	
	/*@Then("^user triggers a get request with body Debit Card (.+)$")
	public void triggerGetRequestwithBodyDebitCard(String reqbody) {
		// TODO Auto-generated method stub
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			// String baseDir = System.getProperty("user.dir");
			// Print the base directory
			// System.out.println("Base Directory: " + baseDir);
			// Append other paths to the base directory
			Path configFilePath = Paths.get(TestBase._baseDir, reqbody);
			String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
			System.out.println("Response Body: " + jsonString);
			Response response = SerenityRest.given().header("Content-Type", "application/json")
					.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)
					.header("Authorization", "Bearer " + bearerToken)// Add any other headers as needed
					.when().body(jsonString).get(RestAssured.baseURI);
			String responseBody = response.then().extract().body().asString();
			Serenity.setSessionVariable("response").to(response);
			System.out.println("Response Body: " + responseBody);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}*/
	
	//Login Registration,Debit card and general service common method
	
	@Then("^user triggers a get request with body (.*)$")
	public void triggerGetRequestwithBody(String reqbody) {
		// TODO Auto-generated method stub
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			// String baseDir = System.getProperty("user.dir");
			// Print the base directory
			// System.out.println("Base Directory: " + baseDir);
			// Append other paths to the base directory
			Path configFilePath = Paths.get(TestBase._baseDir, reqbody);
			String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
			System.out.println("Request Body: " + jsonString);
			Response response = SerenityRest.given().header("Content-Type", "application/json")
					.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)
					.header("Authorization", "Bearer " + bearerToken)// Add any other headers as needed
					.when().body(jsonString).get(RestAssured.baseURI);
			String responseBody = response.then().extract().body().asString();
			Serenity.setSessionVariable("response").to(response);
			System.out.println("Response Body: " + responseBody);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	//Below is the Old Post Request method is used for without API chaining 
	/*@Then("user triggers a post request with (.*)$")
	public void triggerPostRequestCommonRest(String requestBody) {
		ObjectMapper objectMapper = new ObjectMapper();

		try {
			// String baseDir = System.getProperty("user.dir");

			// Print the base directory
			// System.out.println("Base Directory: " + baseDir);

			// Append other paths to the base directory
			Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
			String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
			System.out.println("Response Body: " + jsonString);

			Response response = SerenityRest.given().header("Content-Type", "application/json")
					.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)
					.header("Authorization", "Bearer " + bearerToken)// Add any other headers as needed
					.when().body(jsonString).post(RestAssured.baseURI);

			String responseBody = response.then().extract().body().asString();
			Serenity.setSessionVariable("response").to(response);

			System.out.println("Response Body: " + responseBody);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}*/
	
	//Below is the Old Post Request method is used for API chaining
	
	@Then("user triggers a post request with (.*)$")
	public void triggerPostRequestCommonRest(String requestBody) {
		
		ObjectMapper objectMapper = new ObjectMapper();
		String fileName = fileHandlerToResponseFolder.extractFilename(requestBody);
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
			
			

			String responseBody = response.then().extract().body().asString();
			Serenity.setSessionVariable("response").to(response);

			System.out.println("Response Body triggerPostRequestCommonRest: " + responseBody);

			// Parse the response body string into a JsonNode
			JsonNode jsonNode = objectMapper.readTree(responseBody);

			// Save the response body to a file using FileHandler
			fileHandlerToResponseFolder.writeJsonToFile(fileName, jsonNode);

		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	//Below Method declaration is used for NPS
	@Then("^user triggers post request for NPS flows (.*)$")
	public void triggerPostRequestCommonRestForNPS(String requestBody)
	{
       ObjectMapper objectMapper = new ObjectMapper();
       try {
        
        Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
		String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
		System.out.println("Response Body: " + jsonString);
	   Response response =SerenityRest.given()
			    .header("Content-Type", "application/json")
			    .header("dbp-id",stringdbpID)
			    .header("dbp-secret",stringdbpSecret)
			    .header("Authorization","Bearer " + bearerToken)// Add any other headers as needed
				.when()
				.body(jsonString)
				.post(RestAssured.baseURI);
	   System.out.println("rrrrrrrr");
	   String responseBody = response.then().extract()
	            .body()
	            .asString();		
	    Serenity.setSessionVariable("response").to(response);
	    System.out.println("Response Body: " + responseBody);
       } catch (IOException e) {
   		// TODO Auto-generated catch block
   		e.printStackTrace();
   	}
	}
	//NPS Method declaration
	@Then("user checks error message for different HTTP method with (.+)$")
	public void triggerGetRequestForNPS(String requestBody)
	{
       ObjectMapper objectMapper = new ObjectMapper();
       try {
        //String baseDir = System.getProperty("user.dir");
        // Print the base directory
        //System.out.println("Base Directory: " + baseDir);
        // Append other paths to the base directory
        Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
		String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
		System.out.println("Response Body: " + jsonString);
	   Response response =SerenityRest.given()
			    .header("Content-Type", "application/json")
			    .header("dbp-id",stringdbpID)
			    .header("dbp-secret",stringdbpSecret)
			    .header("Authorization","Bearer " + bearerToken)// Add any other headers as needed
				.when()
				.body(jsonString)
				.get(RestAssured.baseURI);
	   String responseBody = response.then().extract()
	            .body()
	            .asString();		
	    Serenity.setSessionVariable("response").to(response);
	    System.out.println("Response Body: " + responseBody);
       } catch (IOException e) {
   		// TODO Auto-generated catch block
   		e.printStackTrace();
   	}
	}
	/*
	 * @Then("user sets the global paramter for environment") public void
	 * setGlobalParameter() { RestAssured.baseURI = RestAssured.baseURI +
	 * "mga/sps/apiauthsvc/policy/mblogin"; }
	 */

	@Given("user sets the bearer token")
	public static void settingBearerToken() {
		ObjectMapper objectMapper = new ObjectMapper();

		try {
			// String baseDir = System.getProperty("user.dir");

			// Print the base directory
			// System.out.println("Base Directory: " + baseDir);

			// Append other paths to the base directory
			Path configFilePath = Paths.get(TestBase._baseDir,
					"\\src\\test\\resources\\testdata\\api\\response\\expected\\mvp\\login\\mblogin.json");
			String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
			System.out.println("Request Body: " + jsonString);

			System.out.println("id: " + AppConfig.getdbpId().toString().trim());
			System.out.println("secret: " + AppConfig.getdbpSecret());
			String stringdbpID = formatStringforHeaders(AppConfig.getdbpId().trim());
			String stringdbpSecret = formatStringforHeaders(AppConfig.getdbpSecret().trim());

			/*
			 * if (stringdbpID.toLowerCase().equals("218c83a45a906e6g978009b03va1485d")){
			 * System.out.println("The strings are the same (==)."); } else {
			 * System.out.println("The strings are not the same (==)."); }
			 * 
			 * LevenshteinDistance levenshtein = new LevenshteinDistance(); int distance =
			 * levenshtein.apply(appConfig1, "218c83a45a906e6g978009b03va1485d");
			 * System.out.println("Levenshtein distance: " + distance);
			 * displayDetailedDifferences(appConfig1, "218c83a45a906e6g978009b03va1485d");
			 */

			Response response = SerenityRest.given().header("Content-Type", "application/json")
					.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)// Add any other headers as
					// needed
					.when().body(jsonString).post(RestAssured.baseURI);

			if (response.statusCode() == 200) {
				ObjectMapper objectMapperBearer = new ObjectMapper();
				String responseBody = response.then().extract().body().asString();
				JsonNode jsonNode = objectMapperBearer.readTree(responseBody);
				JsonNode tokenNode = jsonNode.path("response").path("access_token");

				bearerToken = tokenNode.asText();
				System.out.println("Bearer Token: " + bearerToken);

			} else {
				System.out.println("Failed to retrieve the token. HTTP error code: " + response.statusCode());
			}

			String responseBody = response.then().extract().body().asString();
			Serenity.setSessionVariable("response").to(response);

			//	    System.out.println("Response Body: " + responseBody);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/*
	 * @Given("get customer accounts by cif") public void
	 * get_customer_accounts_by_cif() throws Exception { ObjectMapper objectMapper =
	 * new ObjectMapper();
	 * 
	 * Path configFilePath = Paths.get(TestBase._baseDir,
	 * "\\src\\test\\resources\\testdata\\api\\request\\mvp\\fdrd\\getcustomeraccountsbody.json"
	 * );
	 * 
	 * String jsonString = objectMapper.readTree(new
	 * File(configFilePath.toString())).toString();
	 * 
	 * System.out.println("id: " + AppConfig.getdbpId().toString().trim());
	 * System.out.println("secret: " + AppConfig.getdbpSecret()); String stringdbpID
	 * = formatStringforHeaders(AppConfig.getdbpId().trim()); String stringdbpSecret
	 * = formatStringforHeaders(AppConfig.getdbpSecret().trim());
	 * 
	 * Response response= SerenityRest.given() .header("Content-Type",
	 * "application/json") .header("dbp-id",stringdbpID)
	 * .header("dbp-secret",stringdbpSecret) .header("Authorization", bearer)// Add
	 * any other headers as needed .when() .body(jsonString) .post(
	 * "https://rmb.unionbankofindia.co.in/sit/dbp/mb/mpgw/app/customer/api/v1/getCustomerAccounts"
	 * );
	 * 
	 * System.out.println(response.asString());
	 * 
	 * }
	 */

	//	@Given ("get customer accounts by cif")
	//	public static void getCustomerAccounts() throws IOException {
	//		ObjectMapper objectMapper = new ObjectMapper();
	//		String bearer = CommonRestUtils.settingBearerToken();
	//		Path configFilePath = Paths.get(TestBase._baseDir, "\\src\\test\\resources\\testdata\\api\\request\\mvp\\fdrd\\getcustomeraccountsbody.json");
	//		
	//		
	//	String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
	//
	//	    System.out.println("id: " + AppConfig.getdbpId().toString().trim());
	//	    System.out.println("secret: " + AppConfig.getdbpSecret());
	//         String stringdbpID = formatStringforHeaders(AppConfig.getdbpId().trim());
	//         String stringdbpSecret = formatStringforHeaders(AppConfig.getdbpSecret().trim());
	//         
	//        Response response= SerenityRest.given()
	//		    .header("Content-Type", "application/json")
	//		    .header("dbp-id",stringdbpID)
	//		    .header("dbp-secret",stringdbpSecret)
	//		    .header("Authorization", bearer)// Add any other headers as needed
	//			.when()
	//			.body(jsonString)
	//			.post("https://rmb.unionbankofindia.co.in/sit/dbp/mb/mpgw/app/customer/api/v1/getCustomerAccounts");
	//        
	//        System.out.println(response.asString());
	//	}

	public static void displayDetailedDifferences(String str1, String str2) {
		int maxLength = Math.max(str1.length(), str2.length());
		StringBuilder differences = new StringBuilder();

		for (int i = 0; i < maxLength; i++) {
			char char1 = i < str1.length() ? str1.charAt(i) : '\0';
			char char2 = i < str2.length() ? str2.charAt(i) : '\0';

			if (char1 != char2) {
				differences.append("Difference at index ").append(i).append(": '").append(char1).append("' vs '")
				.append(char2).append("'\n");
			}
		}

		if (differences.length() > 0) {
			System.out.println("Differences found:\n" + differences);
		} else {
			System.out.println("The strings are identical.");
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



	// Methods are using in Assisted Portal

	// Used in CS1, CS2, CS7
	@Then("^user triggers a path parameter post request (.+) and (.+)$")
	public void triggerPostRequestCommonRestwithPathParam(String requestId, String consentStatus) {
		System.out.println("inside common rest utils method");
		System.out.println(RestAssured.baseURI + "/" + requestId + "/" + consentStatus);
		Response response = SerenityRest.given().header("Content-Type", "application/json").when()
				.post(RestAssured.baseURI + "/" + requestId + "/" + consentStatus);
		System.out.println(response);
		String responseBody1 = response.then().extract().body().asString();
		Serenity.setSessionVariable("response").to(response);
		System.out.println("Response Body: " + responseBody1);

		// return response;
	}

	// Used in AS6, CS3, CS4, CS5
	@Then("^user triggers a path parameter get request (.+)$")
	public void triggerGetRequestCommonRestwithPathParam(String requestId) {
		System.out.println("ccccccc");
		System.out.println(RestAssured.baseURI + "/" + requestId);
		Response response = SerenityRest.given().header("Content-Type", "application/json").when()
				.get(RestAssured.baseURI + "/" + requestId);
		String responseBody1 = response.then().extract().body().asString();
		Serenity.setSessionVariable("response").to(response);
		System.out.println("Response Body: " + responseBody1);

		// return response;
	}

	// Used in AS1
	@Then("^user sends a post request with parameters (.+) and (.+) and (.+)$")
	public void triggerPostRequestCommonRestwithParams(Double param1, Double param2, String requestBody) {
		System.out.println("prasaaad===123");
		System.out.println(param1);
		System.out.println(param2);
		System.out.println(requestBody);
		ObjectMapper objectMapper = new ObjectMapper();
		try {

			Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
			String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
			System.out.println("Request Body: " + jsonString);
			Response response = SerenityRest.given().header("Content-Type", "application/json")
					.queryParam("amountFrom", param1).queryParam("amountTo", param2)// Add any other params as needed
					.when().body(jsonString).post(RestAssured.baseURI);
			String responseBody = response.then().extract().body().asString();
			Serenity.setSessionVariable("response").to(response);
			System.out.println("Response Body: " + responseBody);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	// Used in AS3
	@Then("^user sends a post request with query and path parameters (.+) and (.+) and (.+)$")
	public void triggerGetRequestCommonRestwithQueryAndPathParams(Double param1, Double param2, String solid) {
		System.out.println("prasaaad===456");
		System.out.println(param1);
		System.out.println(param2);
		System.out.println(solid);

		Response response = SerenityRest.given().header("Content-Type", "application/json")
				.queryParam("amountFrom", param1).queryParam("amountTo", param2)// Add any other params as needed
				.when().get(RestAssured.baseURI + "/" + solid);

		String responseBody = response.then().extract().body().asString();
		Serenity.setSessionVariable("response").to(response);
		System.out.println("Response Body: " + responseBody);

	}

	// New
	// Used in AS2, AS4, AS5, CS6
	@Then("^user triggers a post request for assisted portal (.+)$")
	public void triggerPostRequestCommonRestforAssistedPortal(String requestBody) {
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
			String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
			System.out.println("Request Body: " + jsonString);
			Response response = SerenityRest.given().header("Content-Type", "application/json")// Add any other headers
					// as needed
					.when().body(jsonString).post(RestAssured.baseURI);
			String responseBody = response.then().extract().body().asString();
			Serenity.setSessionVariable("response").to(response);
			System.out.println("Response Body: " + responseBody);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// Used in DS1, DS2, DS3, DS4, DS7, DS8, DS9
	// Used in DS1, DS2, DS3, DS4, DS7, DS8, DS9
	@Then("^user triggers a post request for dashboard service (.+) and (.+)$")
	public void triggerPostRequestCommonRestforDashboard(String requestType, String solIdOrMobileNum) {
		ObjectMapper objectMapper = new ObjectMapper();
		String bearerToken = "eyJhbGciOiJSUzI1NiIsImtpZCI6Imh0dHBzZXJ2ZXJrZXkiLCJ0eXAiOiJhdCtqd3QifQ.eyJhY3RpdmVGbGFnIjp0cnVlLCJhdWQiOlsiY2xpZW50X3JvcGMiXSwiYXV0aG9yaXRpZXMiOlsiR0xPQkFMX1NFQVJDSCIsIklOVFJBX0JSX0FTU0lHTk1FTlQiLCJJTlRSQV9CUl9SRUFTU0lHTk1FTlRfT1BFTiIsIk5FV19BUFBMSUNBVElPTiIsIk5PVElGSUNBVElPTlMiLCJQUk9EVUNUX0NBVF9DQVJEUyIsIlBST0RVQ1RfQ0FUX0dPVlRTQ0hFTUUiLCJQUk9EVUNUX0NBVF9MRU5ESU5HIiwiUFJPRFVDVF9DQVRfTElBQklMSVRJRVMiLCJQUk9EVUNUX0NBVF9UUFAiLCJSRVBPUlRTIiwiUk9MRV9URU5BTlRfRFNBIiwiU0VMRl9BU1NJR05NRU5UIiwiU1VNTUFSWV9EQVNIQk9BUkQiXSwiY2xpZW50X2lkIjoiY2xpZW50X3JvcGMiLCJkZXNpZ25hdGlvbiI6Ik1hbmFnZXIiLCJleHAiOjE3MTMzNTgwMDIsImdpdmVuTmFtZSI6IkhhcmlvbSIsImdyYW50X2lkIjoiZGI5NjVmMTEtNmM5Zi00NGUyLTlhZTktOWY1N2Y2NTY5MzI5IiwiaWF0IjoxNzEzMzU3NzAxLCJpc0VtcGxveWVlRmxhZyI6dHJ1ZSwiaXNzIjoiaHR0cHM6Ly9pYW1sYWIuYXBwcy5ucHJkLnViaWRwLmxvY2FsIiwianRpIjoiMWJjY2Q5ZGMtYmQ2My00NGFlLTk3YTMtZDJiZTQyOTc4NGI3IiwibmJmIjoxNzEzMzU3NzAxLCJvZmZpY2VUeXBlIjoiQk8iLCJyb2xlRGVzY3JpcHRpb24iOiJEZXB1dHkgQnJhbmNoIEhlYWQiLCJyb2xlSWQiOiJCUl9PTyIsInNjb3BlIjoib3BlbmlkLGdpdmVuTmFtZT1IYXJpb20sc249TmVtYSx1c2VyVHlwZT1zdGFmZiIsInNvbElEIjoiMzE4ODAiLCJzdWIiOiI1NTIwNDEiLCJzdXJuYW1lIjoiTmVtYSIsInVzZXJfbmFtZSI6IjU1MjA0MSJ9.ZPd1x0Y29zZaYvHaFTMHBf7pwRMnIRmgCPnR57B9u2uiHlfkYWp0kXgNO_1u1LuX9jY0pdsOXk0sJ_0VGG_Xzr9tOGzPkFycfpPgL6DztdhtpU3B_XCHNTRuGYTxZW-iNs5Um4Dc2fd3f3n0iNoOVrFDpiD1zBU_u2TMBLU5SQM8lH7RDpcszmezV8KkHvfKqFzB8iM9Nd1T2Nq-s3C2LdSeks0f7RglBmAvs1hLzbgJJwVALpxSzJeGHUOxSbMLrGuDqKvj44IsQbhmyC9C_ps1vfnFrWldq7ApNTkceRJpU_BemWfdttEfPr0z6b1nP50n-h1NbJbtxylQ-RWI0w";
		Response response = null;
		if (requestType.equals("basic")) {
			response = SerenityRest.given().header("Authorization", "Bearer " + bearerToken)// Add any other headers as
					// needed
					.when().post(RestAssured.baseURI);
		} else if (requestType.equals("pathparam")) {
			response = SerenityRest.given().header("Authorization", "Bearer " + bearerToken)// Add any other headers as
					// needed
					.when().post(RestAssured.baseURI + "/" + solIdOrMobileNum);
		} else if (requestType.equals("basicerror")) {
			response = SerenityRest.given().header("Authorization", "Bearer " + bearerToken)// Add any other headers as
					// needed
					.when().get(RestAssured.baseURI);
		} else if (requestType.equals("pathparamerror")) {
			response = SerenityRest.given().header("Authorization", "Bearer " + bearerToken)// Add any other headers as
					// needed
					.when().get(RestAssured.baseURI + "/" + solIdOrMobileNum);
		}

		String responseBody = response.then().extract().body().asString();
		Serenity.setSessionVariable("response").to(response);
		System.out.println("rieooe");
		System.out.println("Response Body: " + responseBody);
	}

	// Used in DS10, DS11, DS12
	@Then("^user triggers a get request for dashboard service")
	public void triggerGetRequestCommonRestforDashboard() {
		String bearerToken = "eyJhbGciOiJSUzI1NiIsImtpZCI6Imh0dHBzZXJ2ZXJrZXkiLCJ0eXAiOiJhdCtqd3QifQ.eyJhY3RpdmVGbGFnIjp0cnVlLCJhdWQiOlsiY2xpZW50X3JvcGMiXSwiYXV0aG9yaXRpZXMiOlsiQVNTSUdOTUVOVF9WSUVXIiwiR0xPQkFMX1NFQVJDSCIsIklOVFJBX0JSX0FTU0lHTk1FTlQiLCJJTlRSQV9CUl9SRUFTU0lHTk1FTlRfT1BFTiIsIk5FV19BUFBMSUNBVElPTiIsIk5PVElGSUNBVElPTlMiLCJQUk9EVUNUX0NBVF9DQVJEUyIsIlBST0RVQ1RfQ0FUX0dPVlRTQ0hFTUUiLCJQUk9EVUNUX0NBVF9MRU5ESU5HIiwiUFJPRFVDVF9DQVRfTElBQklMSVRJRVMiLCJQUk9EVUNUX0NBVF9UUFAiLCJSRVBPUlRTIiwiUk9MRV9URU5BTlRfRFNBIiwiU0VMRl9BU1NJR05NRU5UIl0sImNsaWVudF9pZCI6ImNsaWVudF9yb3BjIiwiZGVzaWduYXRpb24iOiJDbGVyayIsImV4cCI6MTcxNTYwNjY3OSwiZ2l2ZW5OYW1lIjoiTWF5dXJpIiwiZ3JhbnRfaWQiOiI1Y2Y4NDk5OS0xOGEzLTQ0YTgtOTdlOS0xNzBmYTI1OTI0NWMiLCJpYXQiOjE3MTU2MDMwNzgsImlzRW1wbG95ZWVGbGFnIjp0cnVlLCJpc3MiOiJodHRwczovL2lhbWxhYi5hcHBzLm5wcmQudWJpZHAubG9jYWwiLCJqdGkiOiJlY2VjYTc5OC02NzA3LTQ0MzEtOTZmYy0xMTg5ZDNlNmU5ZjQiLCJuYmYiOjE3MTU2MDMwNzgsIm9mZmljZVR5cGUiOiJCTyIsInJvbGVEZXNjcmlwdGlvbiI6IkNsZXJrIiwicm9sZUlkIjoiQlJfT08iLCJzY29wZSI6Im9wZW5pZCxnaXZlbk5hbWU9TWF5dXJpLHNuPUdhcmFkLHVzZXJUeXBlPXN0YWZmIiwic29sSUQiOiIxNDc1MiIsInN1YiI6ImRpdGlibXN2cHZ6OCIsInN1cm5hbWUiOiJHYXJhZCIsInVzZXJfbmFtZSI6IkRJVElCTVNWUFZaOCJ9.ygy-T3i9NilC__8V7oJTwE8FcIfZNC6gjWZCzT16aMGLc33knKwImM5fi5bmZClujM3pZK0xsBZyHGiaQj4aDqgLrFSR4r8AU5qGPiwdkkihWSrwPtxEPlrUa_ObHOnbVgtRNljvEzqr8xQejvyknQNI9D8zoYt9hQeIguDpj2_Ia52_LGS2FMgEq0gR5GgXuG7IWOl0mAPLAlCXfZORwPPIwg_Vc1JlHRdRPduodK6eTh3xcA-uIhEw9DH6MfYCJXJi7FJSdLgyrdSud8GBRFytcpiZQmoilt95mmV0y6R4QZ4LXC7jho4bGq49CDqNdd3Ni1M2g0TW5EWPETy4CA";
		System.out.println("uuuuuuuuuuu");
		Response response = SerenityRest.given().header("Content-Type", "application/json")
				.header("Authorization", "Bearer " + bearerToken).when().get(RestAssured.baseURI);

		String responseBody = response.then().extract().body().asString();
		Serenity.setSessionVariable("response").to(response);
		System.out.println("Response Body: " + responseBody);
	}

	// Used in DS6
	@Then("^multiple filters on dashboard page$")
	public void passMultipleFiltersOnDashboard(List<String> filters) {
		String bearerToken = "eyJhbGciOiJSUzI1NiIsImtpZCI6Imh0dHBzZXJ2ZXJrZXkiLCJ0eXAiOiJhdCtqd3QifQ.eyJhY3RpdmVGbGFnIjp0cnVlLCJhdWQiOlsiY2xpZW50X3JvcGMiXSwiYXV0aG9yaXRpZXMiOlsiR0xPQkFMX1NFQVJDSCIsIklOVFJBX0JSX0FTU0lHTk1FTlQiLCJJTlRSQV9CUl9SRUFTU0lHTk1FTlRfT1BFTiIsIk5FV19BUFBMSUNBVElPTiIsIk5PVElGSUNBVElPTlMiLCJQUk9EVUNUX0NBVF9DQVJEUyIsIlBST0RVQ1RfQ0FUX0dPVlRTQ0hFTUUiLCJQUk9EVUNUX0NBVF9MRU5ESU5HIiwiUFJPRFVDVF9DQVRfTElBQklMSVRJRVMiLCJQUk9EVUNUX0NBVF9UUFAiLCJSRVBPUlRTIiwiUk9MRV9URU5BTlRfRFNBIiwiU0VMRl9BU1NJR05NRU5UIiwiU1VNTUFSWV9EQVNIQk9BUkQiXSwiY2xpZW50X2lkIjoiY2xpZW50X3JvcGMiLCJkZXNpZ25hdGlvbiI6Ik1hbmFnZXIiLCJleHAiOjE3MTMzNTgwMDIsImdpdmVuTmFtZSI6IkhhcmlvbSIsImdyYW50X2lkIjoiZGI5NjVmMTEtNmM5Zi00NGUyLTlhZTktOWY1N2Y2NTY5MzI5IiwiaWF0IjoxNzEzMzU3NzAxLCJpc0VtcGxveWVlRmxhZyI6dHJ1ZSwiaXNzIjoiaHR0cHM6Ly9pYW1sYWIuYXBwcy5ucHJkLnViaWRwLmxvY2FsIiwianRpIjoiMWJjY2Q5ZGMtYmQ2My00NGFlLTk3YTMtZDJiZTQyOTc4NGI3IiwibmJmIjoxNzEzMzU3NzAxLCJvZmZpY2VUeXBlIjoiQk8iLCJyb2xlRGVzY3JpcHRpb24iOiJEZXB1dHkgQnJhbmNoIEhlYWQiLCJyb2xlSWQiOiJCUl9PTyIsInNjb3BlIjoib3BlbmlkLGdpdmVuTmFtZT1IYXJpb20sc249TmVtYSx1c2VyVHlwZT1zdGFmZiIsInNvbElEIjoiMzE4ODAiLCJzdWIiOiI1NTIwNDEiLCJzdXJuYW1lIjoiTmVtYSIsInVzZXJfbmFtZSI6IjU1MjA0MSJ9.ZPd1x0Y29zZaYvHaFTMHBf7pwRMnIRmgCPnR57B9u2uiHlfkYWp0kXgNO_1u1LuX9jY0pdsOXk0sJ_0VGG_Xzr9tOGzPkFycfpPgL6DztdhtpU3B_XCHNTRuGYTxZW-iNs5Um4Dc2fd3f3n0iNoOVrFDpiD1zBU_u2TMBLU5SQM8lH7RDpcszmezV8KkHvfKqFzB8iM9Nd1T2Nq-s3C2LdSeks0f7RglBmAvs1hLzbgJJwVALpxSzJeGHUOxSbMLrGuDqKvj44IsQbhmyC9C_ps1vfnFrWldq7ApNTkceRJpU_BemWfdttEfPr0z6b1nP50n-h1NbJbtxylQ-RWI0w";
		Response response = SerenityRest.given().header("Content-Type", "application/json")
				.queryParam("overallStatus", filters.get(0)).queryParam("subJourney", filters.get(1))
				.queryParam("journey", filters.get(2)).queryParam("page", Integer.parseInt(filters.get(3)))
				.queryParam("amountRangefrom", Integer.parseInt(filters.get(4)))
				.queryParam("size", Integer.parseInt(filters.get(5))).queryParam("assignedTo", filters.get(6))
				.queryParam("amountRangeTo", Integer.parseInt(filters.get(7)))
				.queryParam("applicationStage", Integer.parseInt(filters.get(8)))
				.queryParam("assignmentStatus", filters.get(9)).queryParam("applicationStatus", filters.get(10))
				.header("Content-Type", "application/json").header("Authorization", "Bearer " + bearerToken)// Add any
				// other
				// params as
				// needed
				.when().post(RestAssured.baseURI);

		String responseBody = response.then().extract().body().asString();
		Serenity.setSessionVariable("response").to(response);
		System.out.println("Response Body: " + responseBody);

	}

	//Below for UPI New Method
	@Then("user triggers a post request without request")
	public void triggerPostRequestCommonRest() throws IOException {
		ObjectMapper objectMapper = new ObjectMapper();
		Response response = SerenityRest.given().header("Content-Type", "application/json")
				.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret).header("x-auth-dbp", bearerToken)// Add
				// any
				// other
				// headers
				// as
				// needed
				.when()
				// .body(jsonString)
				.post(RestAssured.baseURI);
		String responseBody = response.then().extract().body().asString();
		Serenity.setSessionVariable("response").to(response);
		System.out.println("Response Body: " + responseBody);
	}
	
	@Then("user triggers get request with request body (.*)$")
	public void triggerGetRequestwithBodyUpi(String reqbody) {
		// TODO Auto-generated method stub
		ObjectMapper objectMapper = new ObjectMapper();
	       try {
	        //String baseDir = System.getProperty("user.dir");
	        // Print the base directory
	        //System.out.println("Base Directory: " + baseDir);
	        // Append other paths to the base directory
	        Path configFilePath = Paths.get(TestBase._baseDir, reqbody);
			String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
			System.out.println("Response Body: " + jsonString);
		   Response response =SerenityRest.given()
				    .header("Content-Type", "application/json")
				    .header("dbp-id",stringdbpID)
				    .header("dbp-secret",stringdbpSecret)
				    .header("Authorization","Bearer " + bearerToken)// Add any other headers as needed
					.when()
					.body(jsonString)
					.get(RestAssured.baseURI);
		   String responseBody = response.then().extract()
		            .body()
		            .asString();		
		    Serenity.setSessionVariable("response").to(response);
		    System.out.println("Response Body: " + responseBody);
	       } catch (IOException e) {
	   		// TODO Auto-generated catch block
	   		e.printStackTrace();
	   	}
	}

	// Below code is for SSA that Get request without CIF
	@Then("user triggers a get request")
	public void triggerGetRequestCommonRests() {
		Response response = SerenityRest.given().header("Content-Type", "application/json")
				.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)
				.header("Authorization", "Bearer " + bearerToken)// Add any other headers as needed
				.when().get(RestAssured.baseURI);
		System.out.print(RestAssured.baseURI);
		String responseBody = response.then().extract().body().asString();
		Serenity.setSessionVariable("response").to(response);
		System.out.println("Response Body: " + responseBody);

		// return response;
	}
	//SSA 405 Method
	@Then("^user triggers a get request with (.+)$")
		public void triggermethodnotallowRequestCommonRest(String requestBody)
		{
	       ObjectMapper objectMapper = new ObjectMapper();
	       try {
	        //String baseDir = System.getProperty("user.dir");
	        // Print the base directory
	        //System.out.println("Base Directory: " + baseDir);
	        // Append other paths to the base directory
	        Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
			String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
			System.out.println("Response Body: " + jsonString);
		   Response response =SerenityRest.given()
				    .header("Content-Type", "application/json")
				    .header("dbp-id",stringdbpID)
				    .header("dbp-secret",stringdbpSecret)
				    .header("Authorization","Bearer " + bearerToken)// Add any other headers as needed
					.when()
					.body(jsonString)
					.get(RestAssured.baseURI);
		   String responseBody = response.then().extract()
		            .body()
		            .asString();		
		    Serenity.setSessionVariable("response").to(response);
		    System.out.println("Response Body: " + responseBody);
	       } catch (IOException e) {
	   		// TODO Auto-generated catch block
	   		e.printStackTrace();
	   	}
		}

	
	 @Then("user triggers a post request without body for SSA") 
	 public void triggerPostRequestCommonRests() 
	 { Response response =SerenityRest.given()
	 .header("Content-Type", "application/json") .header("dbp-id",stringdbpID)
	 .header("dbp-secret",stringdbpSecret) .header("Authorization","Bearer " +
	 bearerToken)// Add any other headers as needed .when()
	 .post(RestAssured.baseURI); System.out.print(RestAssured.baseURI); String
	 responseBody = response.then().extract().body().asString();
	 Serenity.setSessionVariable("response").to(response);
	 System.out.println("Response Body: " + responseBody);
	 }
	 
	 // return response; }
	 

	// Credit Card New Method as below
	@Then("^user sends post request for Credit Card features (.+)$")
	public void sendsPostRequestForCreditCard(String requestBody) {
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
			String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
			System.out.println("Request Body: " + jsonString);

			Response response = SerenityRest.given().header("Content-Type", "application/json")
					.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)// Add any other headers as
					// needed
					.when().body(jsonString).post(RestAssured.baseURI);

			String responseBody = response.then().extract().body().asString();
			Serenity.setSessionVariable("response").to(response);
			System.out.println("Response Body: " + responseBody);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Then("^user sends get request for Credit Card features (.+)$")
	public void sendsGetRequestForCreditCard(String requestBody) {
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
			String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
			System.out.println("Request Body: " + jsonString);

			Response response = SerenityRest.given().header("Content-Type", "application/json")
					.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)// Add any other headers as
					// needed
					.when().body(jsonString).get(RestAssured.baseURI);

			String responseBody = response.then().extract().body().asString();
			Serenity.setSessionVariable("response").to(response);
			System.out.println("Response Body: " + responseBody);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// Debit Card New Method as below
	@Then("^user sends post request for Debit Card features (.+)$")
	public void sendsPostRequestForDebitCard(String requestBody) {
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
			String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
			System.out.println("Request Body: " + jsonString);
			Response response = SerenityRest.given().header("Content-Type", "application/json")
					.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)// Add any other headers as
					// needed
					.when().body(jsonString).post(RestAssured.baseURI);
			String responseBody = response.then().extract().body().asString();
			Serenity.setSessionVariable("response").to(response);
			System.out.println("Response Body: " + responseBody);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// General Service New Method as below
	/*@Then("^user triggers a get request with body General Services (.*)$)")
	public void triggerGetRequestGeneralService(String requestBody) {
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			// String baseDir = System.getProperty("user.dir");
			// Print the base directory
			// System.out.println("Base Directory: " + baseDir);
			// Append other paths to the base directory
			Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
			String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
			System.out.println("Response Body: " + jsonString);
			Response response = SerenityRest.given().header("Content-Type", "application/json")
					.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)
					.header("Authorization", "Bearer " + bearerToken)// Add any other headers as needed
					.when().body(jsonString).get(RestAssured.baseURI);
			String responseBody = response.then().extract().body().asString();
			Serenity.setSessionVariable("response").to(response);
			System.out.println("Response Body: " + responseBody);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}*/

	// Cheque Service as below method

	@Then("user triggers a get request for cheque services (.*)$")
	public void triggerGetRequestForChequeServices(String reqbody) {
		// TODO Auto-generated method stub
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			// String baseDir = System.getProperty("user.dir");
			// Print the base directory
			// System.out.println("Base Directory: " + baseDir);
			// Append other paths to the base directory
			Path configFilePath = Paths.get(TestBase._baseDir, reqbody);
			String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
			System.out.println("Response Body: " + jsonString);
			Response response = SerenityRest.given().header("Content-Type", "application/json")
					.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)
					.header("Authorization", "Bearer " + bearerToken)// Add any other headers as needed
					.when().body(jsonString).get(RestAssured.baseURI);
			String responseBody = response.then().extract().body().asString();
			Serenity.setSessionVariable("response").to(response);
			System.out.println("Response Body: " + responseBody);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//Below code is for login registration
    public void enterOTP() throws Exception {
		// TODO Auto-generated method stub
  	  FetchOTPTest fetchOTPTest = new FetchOTPTest();
  	  otpRMN = fetchOTPTest.testFetchOTP();
    }
    
	//@Then("user triggers OTP with a post request (.*)$)")
  	public void triggerPostRequestwithOTP(String requestBody)
  	{
         ObjectMapper objectMapper = new ObjectMapper();
         try {
          //String baseDir = System.getProperty("user.dir");
          // Print the base directory
          //System.out.println("Base Directory: " + baseDir);
          // Append other paths to the base directory
          Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
  		String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
  		System.out.println("Request Body: " + jsonString);
  		jsonString= jsonString.replace("{{otpRMN}}",otpRMN );
  		System.out.println("Request Body with OTP: " + jsonString);
  	    System.out.println(RestAssured.baseURI);
  	  
  	   Response response =SerenityRest.given()
  			    .header("Content-Type", "application/json")
  			    .header("dbp-id",stringdbpID)
  			    .header("dbp-secret",stringdbpSecret)
  			   // .header("Authorization","Bearer "+bearerToken)// Add any other headers as needed
  				.when()
  				.body(jsonString)
  				.post(RestAssured.baseURI);
  	   String responseBody = response.then().extract()
  	            .body()
  	            .asString();		
  	    Serenity.setSessionVariable("response").to(response);
  	    System.out.println("Response Body: " + responseBody);
         } catch (IOException e) {
     		// TODO Auto-generated catch block
     		e.printStackTrace();
     	}
  	}

	//New method for API chaining
	
	@Then("user updates the requestField (.+) of request body from (.+) with responsefield (.+) from filename (.+)$")
	public void updateRequestBodyCommonRests(List<String> requestFieldList, String requestBodyPath, List<String> responsefieldList, String fileNameOfSavedResponseData) {
	    try {
	       String fileNameOfRequestBody = fileHandlerToRequestBodies.extractFilename(requestBodyPath);
	       System.out.println("Extracted filename from request body path: " + fileNameOfRequestBody);

	       // Read the request body JSON
	       JsonNode requestBodyJson = fileHandlerToRequestBodies.readJson(fileNameOfRequestBody);
	       System.out.println("Original request body: " + requestBodyJson);

	       // Read the data to be used for updates
	       JsonNode updateDataJson = fileHandlerToResponseFolder.readJson(fileNameOfSavedResponseData); // Adjust the path as needed
	       System.out.println("Data for updates: " + updateDataJson);

	       // Iterate over the responsefieldList and requestFieldList
	       for (int i = 0; i < responsefieldList.size(); i++) {
	          String responseFieldPath = responsefieldList.get(i);
	          String requestFieldPath = requestFieldList.get(i);

	          // Get the value from the response data using the path
	          JsonNode newValue = getValueFromPath(updateDataJson, responseFieldPath);

	          if (newValue != null) {
	             // Update the request body with the new value using the path
	             requestBodyJson = updateValueAtPath(requestBodyJson, requestFieldPath, newValue);
	             System.out.println("Updated '" + requestFieldPath + "' with value from '" + responseFieldPath + "': " + newValue);
	          } else {
	             System.out.println("Field '" + responseFieldPath + "' not found in update data.");
	          }
	       }

	       // Save the updated request body
	       fileHandlerToRequestBodies.writeJsonToFile(fileNameOfRequestBody, requestBodyJson);
	       System.out.println("Updated request body saved to file.");
	    } catch (IOException e) {
	       System.err.println("IOException occurred: " + e.getMessage());
	       e.printStackTrace();
	    }
	}

	// Helper method to get a value from a nested path
	private JsonNode getValueFromPath(JsonNode rootNode, String path) {
	    String[] pathParts = path.split("\\.");
	    JsonNode currentNode = rootNode;

	    for (String part : pathParts) {
	       // Check if the root node is an array
	       if (currentNode.isArray() && part.matches("\\[\\d+\\]")) {
	          int index = Integer.parseInt(part.substring(1, part.length() - 1));
	          currentNode = currentNode.get(index);
	       } else if (part.matches(".*\\[\\d+\\]")) {
	          // Extract the array name and index
	          String arrayName = part.substring(0, part.indexOf("["));
	          int index = Integer.parseInt(part.substring(part.indexOf("[") + 1, part.indexOf("]")));

	          // Navigate to the array and then the specific element
	          currentNode = currentNode.get(arrayName);
	          if (currentNode != null && currentNode.isArray()) {
	             currentNode = currentNode.get(index);
	          } else {
	             return null; // Array or element not found
	          }
	       } else {
	          // Standard object key
	          currentNode = currentNode.get(part);
	       }

	       if (currentNode == null) {
	          return null; // Path not found
	       }
	    }

	    return currentNode; // Return the final value found
	}



	// Helper method to update a value at a nested path
	private JsonNode updateValueAtPath(JsonNode rootNode, String path, JsonNode newValue) {
	    String[] pathParts = path.split("\\.");
	    JsonNode currentNode = rootNode;

	    for (int i = 0; i < pathParts.length - 1; i++) {
	       String part = pathParts[i];

	       if (currentNode.isArray() && part.matches("\\[\\d+\\]")) {
	          int index = Integer.parseInt(part.substring(1, part.length() - 1));
	          currentNode = currentNode.get(index);
	       } else if (part.matches(".*\\[\\d+\\]")) {
	          String arrayName = part.substring(0, part.indexOf("["));
	          int index = Integer.parseInt(part.substring(part.indexOf("[") + 1, part.indexOf("]")));

	          currentNode = currentNode.get(arrayName).get(index);
	       } else {
	          currentNode = currentNode.get(part);
	       }

	       if (currentNode == null) {
	          return rootNode; // Path not found, return original rootNode
	       }
	    }

	    String lastPart = pathParts[pathParts.length - 1];
	    if (currentNode.isArray()) {
	       int index = Integer.parseInt(lastPart.substring(1, lastPart.length() - 1));
	       ((ArrayNode) currentNode).set(index, newValue);
	    } else {
	       ((ObjectNode) currentNode).set(lastPart, newValue);
	    }

	    return rootNode;
	}

}