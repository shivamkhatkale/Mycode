package com.ubi.testbase;
import io.cucumber.java.en.Then;
import io.restassured.response.Response;
import junit.framework.Assert;
import net.serenitybdd.annotations.Step;
import net.serenitybdd.core.Serenity;

@SuppressWarnings("unused")
public class VerificationAPI {
	
	@SuppressWarnings("deprecation")
	@Step ("user verifies that status is (.*)$")
	public static void verifySuccessStatus(int statusCode) {
		
		Response response = Serenity.sessionVariableCalled("response");
		String responseBody1 = response.then().extract()
	            .body()
	            .asString();
	    System.out.println("Response Body: " + responseBody1);

		Assert.assertEquals(200,response.getStatusCode());
		
		//Credit Card Regression Status code as below
		if(statusCode==200) {
			Assert.assertEquals(200,response.getStatusCode());
		}
		else if(statusCode==400) {
			Assert.assertEquals(400,response.getStatusCode());
		}
		else if(statusCode==404) {
			Assert.assertEquals(404,response.getStatusCode());
		}
	}
	
	@SuppressWarnings("deprecation")
	@Step ("user verifies that status is (.*)$")
	public static void verifyNotFoundStatus(int statusCode) {
		
		Response response = Serenity.sessionVariableCalled("response");
		String responseBody1 = response.then().extract()
	            .body()
	            .asString();
	    //System.out.println("Response Body: " + responseBody1);
		Assert.assertEquals(404,response.getStatusCode());
	}
	
	//SSA Verification API
	@Step ("user verifies that status is (.*)$")
	public static void verifyBadRequestStatus(int statusCode) {
			
			Response response = Serenity.sessionVariableCalled("response");
			String responseBody1 = response.then().extract()
		            .body()
		            .asString();
		    //System.out.println("Response Body: " + responseBody1);
			Assert.assertEquals(400,response.getStatusCode());
			
		}
	
	//500 Verification API
	@Step ("user verifies that status is (.*)$")
	public static void verifyInternalServerErrorStatus(int statusCode) {
			
			Response response = Serenity.sessionVariableCalled("response");
			String responseBody1 = response.then().extract()
		            .body()
		            .asString();
		    //System.out.println("Response Body: " + responseBody1);
			Assert.assertEquals(500,response.getStatusCode());
			
		}
	
	//Registration API for 405
	@Step ("user verifies that status is (.*)$")
	public static void verifyMethodNotAllowedStatus(int statusCode) {
		// TODO Auto-generated method stub
		Response response = Serenity.sessionVariableCalled("response");
		String responseBody1 = response.then().extract()
	            .body()
	            .asString();
	    //System.out.println("Response Body: " + responseBody1);
		Assert.assertEquals(405,response.getStatusCode());
	}

}
