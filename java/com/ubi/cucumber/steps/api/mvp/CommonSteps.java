package com.ubi.cucumber.steps.api.mvp;

import com.ubi.testbase.AppConfig;
import com.ubi.testbase.CommonRestUtils;
import com.ubi.testbase.JSONComparator;
import com.ubi.testbase.RestUtilCustom;
import com.ubi.testbase.TestBase;
import com.ubi.testbase.VerificationAPI;
import com.ubi.testbase.XMLHandler;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import net.serenitybdd.annotations.Steps;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.junit.Rule;
import org.junit.Test;
import org.junit.runner.RunWith;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import io.restassured.response.Response;
import net.serenitybdd.annotations.Steps;
import net.serenitybdd.core.Serenity;
import net.serenitybdd.junit.runners.SerenityRunner;

public class CommonSteps {
	public static String setEnvPath = "";

	@Steps
	CommonRestUtils steps;
	VerificationAPI stepsVerify;
	JSONComparator jsonComparator;

	@Given("^user set the basepath to (.*)$")
	public void setbaseurl(String service) {
		if (service.equals("customer")) {

			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "app/customer/api/v1";
		}
		;
		if (service.equals("registration")) {

			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			System.out.println("Rest base url " + Env);
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "mga/sps/apiauthsvc/policy";
		}
		;

		// Login New Service
		if (service.equals("prelogin")) {
			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "app/prelogin/api/v1";
		}
		;

		// FD RD Service as below
		if (service.equals("deposits")) {

			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "app/deposits/api/v1";
		}
		;

		// Assisted Portal Services as below
		if (service.equals("config")) {

			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "mpgw/config/fetchBusinessRules";
		}
		;
		if (service.equals("webform")) {
			String Env = AppConfig.getRestAssistedUrl("assignment");
			RestAssured.baseURI = AppConfig.getRestAssistedUrl("assignment") + "web/form-assignment/v1";
		}
		;
		if (service.equals("weblogin")) {
			String Env = AppConfig.getRestAssistedUrl("assignment");
			RestAssured.baseURI = AppConfig.getRestAssistedUrl("assignment") + "web/login-details/v1";
		}
		;
		if (service.equals("consent")) {
			String Env = AppConfig.getRestAssistedUrl("consent");
			RestAssured.baseURI = AppConfig.getRestAssistedUrl("consent") + "web/form-consent/v1";
		}
		;
		if (service.equals("dashboard")) {
			String Env = AppConfig.getRestAssistedUrl("dashboard");
			RestAssured.baseURI = AppConfig.getRestAssistedUrl("dashboard") + "dashboard";
		}
		;

		// Debit card Services as below
		if (service.equals("debitCard")) {
			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			System.out.println("Rest base url " + Env);
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "v1/debit-card/";
		}
		;

		// Cheque service Services as below

		if (service.equals("chequeservice")) {
			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			System.out.println("Rest base url " + Env);
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "v1/cheque";

		}
		;

		// UPI Services as below

		if (service.equals("UPI")) {
			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			System.out.println("Rest base url " + Env);
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "app/upi/api/v1";
		}
		;

		// PPF Service as below
		if (service.equals("invst")) {

			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "app/invst/ppf/api/v1";
		}
		;

		// SSY Service as below
		if (service.equals("ssa")) {
			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			System.out.println("Rest base url " + Env);
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "app/invst/ssa/api/v1";
		}
		;
		if (service.equals("refmaster")) {
			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "refdata";
		}
		;
		if (service.equals("masterdata")) {
			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "master";
		}
		;

		// Fund Transfer Services as below
		if (service.equals("fundtransfer")) {
			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			System.out.println("Rest base url " + Env);
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "v1/fund-transfer/manage-payee";
		}
		;

		if (service.equals("impsnameenquiry")) {
			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			System.out.println("Rest base url " + Env);
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "v1/fund-transfer/imps/name-enquiry";
		}
		;

		if (service.equals("impstransfer")) {
			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			System.out.println("Rest base url " + Env);
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "v1/fund-transfer/imps/initiate";
		}
		;

		if (service.equals("limit")) {
			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			System.out.println("Rest base url " + Env);
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "v1/fund-transfer";
		}
		;

		if (service.equals("payment")) {
			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			System.out.println("Rest base url " + Env);
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "v1/fund-transfer/initiate";
		}
		;

		if (service.equals("standinginstruction")) {
			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			System.out.println("Rest base url " + Env);
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "v1/fund-transfer";
		}
		;

		// General Service- Services as below
		if (service.equals("generalservice")) {
			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			System.out.println("Rest base url " + Env);
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "v1/generalservice/";

		}
		;

		// Business Service API Service as below
		if (service.equals("businessServices")) {
			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			System.out.println("Rest base url " + Env);
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "v1/businessServices/";
		}

		// Credit Card Services as below
		if (service.equals("creditcard")) {
			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			System.out.println("Rest base url " + Env);
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "v1/credit-card/manage-card";
		}
		;

		// BBPS Services as below

		if (service.equals("bbps")) {
			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			System.out.println("Rest base url " + Env);
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "bbps-bff-mobile/api/v1";
		}
		;

		// Gov Scheme Services as below

		if (service.equals("govt_scheme_mobile")) {
			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			System.out.println("Rest base url " + Env);
			// Env = AppConfig.getRestUrl(TestBase._setEnvPath + "_govtscheme");
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "govt-schemes/api/v1";
		}
		;

		if (service.equals("govt_scheme_assisted")) {
			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			System.out.println("Rest base url " + Env);
			// Env = AppConfig.getRestUrl(TestBase._setEnvPath + "_assisted");
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "/ast/mpgw/govt-schemes/api/v1";
		}
		;

		// NCMC Services as below
		if (service.equals("ncmc")) {
			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			System.out.println("Rest base url " + Env);
			RestAssured.baseURI = "https://rmb.unionbankofindia.co.in/sit/dbp/mb/mpgw/v1/debit-card/";

		}
		;

		// NPS Service as below
		if (service.equals("nps")) {
			String Env = AppConfig.getRestUrl(TestBase._setEnvPath);
			System.out.println("Rest base url " + Env);
			RestAssured.baseURI = AppConfig.getRestUrl(TestBase._setEnvPath) + "app/invst/nps/api/v1";
		}
		;
	}

	@Then("^display url$")
	public void displayEndPoint() {
		System.out.println("Rest base url " + RestAssured.baseURI);

	}

	@Then("^set the endpoint (.*)$")
	public void setEndpoint(String endpoint) {
		RestAssured.baseURI = RestAssured.baseURI + endpoint;
		System.out.println(RestAssured.baseURI);
	}

	@Given("^user sets the environment of endpoint")
	public void setEnvironment() {
		// System.out.println(RestAssured.baseURI);
		setEnvPath = AppConfig.getEnvironment();
		RestAssured.baseURI = AppConfig.getRestUrl(setEnvPath);
	}

	@Then("^user triggers a get request with parameter (.*)$")
	public void triggergetRequest(String cif) {
		steps.triggerGetRequestCommonRest(cif);

	}

	// Registration New Method
	@Then("^user triggers a get request with body(.*)$")
	public void triggergetRequestwithBody(String reqbody) {
		steps.triggerGetRequestwithBody(reqbody);
	}

	/*
	 * @Then("^user triggers a get request with body Debit Card(.*)$") public void
	 * triggergetRequestwithBodyDebitCard(String reqbody) {
	 * steps.triggerGetRequestwithBodyDebitCard(reqbody); }
	 */

	/*
	 * @Then("^user verifies that status is (.*)$") public void
	 * verifyResponseStatus(int statusCode) {
	 * stepsVerify.verifySuccessStatus(statusCode); }
	 */

	@Then("^user verifies that status is (.*)$")
	public void verifyResponseStatus(int statusCode) {
		if (statusCode == 200) {
			stepsVerify.verifySuccessStatus(statusCode);
		} else if (statusCode == 404) {
			stepsVerify.verifyNotFoundStatus(statusCode);
		} else if (statusCode == 400) {
			stepsVerify.verifyBadRequestStatus(statusCode);
		} else if (statusCode == 500) {
			stepsVerify.verifyInternalServerErrorStatus(statusCode);
		} else if (statusCode == 405) {
			stepsVerify.verifyMethodNotAllowedStatus(statusCode);
		}
	}

	@Then("^user triggers a post request with (.*)$")
	public void triggerPostRequest(String requestBody) {
		System.out.print("Print RequestBody");
		steps.triggerPostRequestCommonRest(requestBody);
		// jsonComparator.compareJsonOutput(responseBody);
	}

	//NPS method as below
	@Then("^user triggers post request for NPS flows (.*)$")
	public void triggerPostRequestForNPS(String requestBody) {
		System.out.print("Print RequestBody");
		steps.triggerPostRequestCommonRestForNPS(requestBody);
		// jsonComparator.compareJsonOutput(responseBody);
	}
	
	@Then("user checks error message for different HTTP method with (.+)$")
	public void triggergetRequestforNPS(String requestBody)
	{
		steps.triggerGetRequestForNPS(requestBody);
	}
	
	// Old Code with Spelling mistake
	/*
	 * @Then("user verfies json from (.*)$") public void verifyJsonResponse(String
	 * responseBody) { // Write code here that turns the phrase above into concrete
	 * actions jsonComparator.compareJsonOutput(responseBody); }
	 */

	@Given("user sets the bearer token")
	public void setGlobalParameter() {
		System.out.println("Test Bearer SIT");
		RestAssured.baseURI = TestBase._loginURL;
		steps.settingBearerToken();
	}

	// Below Common steps are added for Login registration
	@Given("user enters OTP on console")
	public void enterOTPconsole() throws Exception {
		RestAssured.baseURI = TestBase._loginURL;
		steps.enterOTP();
	}

	@Then("^user triggers OTP with a post request (.*)$")
	public void triggerPostRequestwithOTP(String requestBody) {
		System.out.print(requestBody);
		steps.triggerPostRequestwithOTP(requestBody);
		// jsonComparator.compareJsonOutput(responseBody);
	}

	// Common steps are added for Assisted Portal
	@Then("^user triggers a path parameter post request (.+) and (.+)$")
	public void triggerPostRequestwithPathParam(String requestId, String consentStatus) {
		System.out.println("inside commonstep method");
		steps.triggerPostRequestCommonRestwithPathParam(requestId, consentStatus);
	}

	@Then("^user triggers a path parameter get request (.+)$")
	public void triggerGetRequestwithPathParam(String requestId) {
		steps.triggerGetRequestCommonRestwithPathParam(requestId);
	}

	@Then("^user sends a post request with parameters (.+) and (.+) and (.+)$")
	public void triggerPostRequestWithParams(Double amountFrom, Double amountTo, String requestBody) {
		steps.triggerPostRequestCommonRestwithParams(amountFrom, amountTo, requestBody);
	}

	@Then("^user sends a post request with query and path parameters (.+) and (.+) and (.+)$")
	public void triggerGetRequestwithQueryAndPathParams(Double amountFrom, Double amountTo, String solid) {
		steps.triggerGetRequestCommonRestwithQueryAndPathParams(amountFrom, amountTo, solid);
	}

	@Then("^user triggers a post request for assisted portal (.+)$")
	public void triggerPostRequestforAssistedPortal(String requestBody) {
		steps.triggerPostRequestCommonRestforAssistedPortal(requestBody);
	}

	@Then("^user triggers a post request for dashboard service (.+) and (.+)$")
	public void triggerPostRequestforAssistedPortal(String requestType, String solidOrMobileNum) {
		System.out.println("inside common step");
		steps.triggerPostRequestCommonRestforDashboard(requestType, solidOrMobileNum);
	}

	@Then("^user triggers a get request for dashboard service")
	public void triggerGetRequestforAssistedPortal() {

		steps.triggerGetRequestCommonRestforDashboard();
	}

	@Then("^multiple filters on dashboard page$")
	public void multipleFiltersOnDashboard(List<String> list) {
		System.out.println(list);
		steps.passMultipleFiltersOnDashboard(list);
	}

	@Given("^environment of endpoint for Assisted Portal (.*)$")
	public void setAssistedPortalEnvironment(String env) {
		// setEnvPath = AppConfig.getEnvironment();
		RestAssured.baseURI = AppConfig.getRestAssistedUrl(env);
	}

	// below for UPI
	@Then("user triggers a post request without request")
	public void triggerPostRequestwithoutRequest() throws IOException {
		// System.out.print(requestBody);
		steps.triggerPostRequestCommonRest();
		// jsonComparator.compareJsonOutput(responseBody);
	}

	@Then("user triggers get request with request body (.*)$")
	public void triggergetRequestwithBodyUpi(String reqbody) {
		steps.triggerGetRequestwithBodyUpi(reqbody);
	}

	// SSA Common
	@Then("user triggers a get request")
	public void triggergetRequests() {
		steps.triggerGetRequestCommonRests();

	}

	// 405 SSA
	@Then("^user triggers a get request with (.+)$")
	public void triggermethodnotallowRequest(String requestBody) {
		// System.out.print(requestBody);
		steps.triggermethodnotallowRequestCommonRest(requestBody);
		// jsonComparator.compareJsonOutput(responseBody);
	}

	@Then("user triggers a post request without body for SSA")
	public void triggerpostRequests() {
		steps.triggerPostRequestCommonRests();

	}

	// Credit Card Method
	@Then("^user sends post request for Credit Card features (.+)$")
	public void triggerPostRequestForCreditCard(String requestBody) {
		System.out.print(requestBody);
		steps.sendsPostRequestForCreditCard(requestBody);
		// jsonComparator.compareJsonOutput(responseBody);
	}

	@Then("^user sends get request for Credit Card features (.+)$")
	public void triggerGetRequestForCreditCard(String requestBody) {
		System.out.print(requestBody);
		steps.sendsGetRequestForCreditCard(requestBody);
		// jsonComparator.compareJsonOutput(responseBody);
	}

	// Debit Card Method
	@Then("^user sends post request for Debit Card features (.+)$")
	public void triggerPostRequestForDebitCard(String requestBody) {
		System.out.print(requestBody);
		steps.sendsPostRequestForDebitCard(requestBody);
		// jsonComparator.compareJsonOutput(responseBody);
	}

	// Below Method use in BBPS
	@Then("^the endpoint (.*) with cif (.*)$")
	public void theEndpointWithCif(String endpoint, String cif) {
		RestAssured.baseURI = RestAssured.baseURI + endpoint + "/" + cif;
		System.out.println("RestAssured.baseURI :" + RestAssured.baseURI);
	}

	@Then("^trigger a post request with (.*) with updated (.*) (.*)$")
	public void trigger_a_post_request_with_request_body_with_updated_attribute_value(String requestBody,
			String attribute, String value) {
		// Write code here that turns the phrase above into concrete actions
		RestUtilCustom.triggerPostRequestwithUpdatedJsonrequest(requestBody, attribute, value);
		// throw new io.cucumber.java.PendingException();
	}

	@Then("user verifies message {int} from response")
	public void user_verifies_message_from_response(Integer inte) {
		// Write code here that turns the phrase above into concrete actions
		if (inte == 400) {
			Response response = Serenity.sessionVariableCalled("response");
			String jsonStringActual = response.then().extract().body().asString();
			RestUtilCustom.validateJsonResponseFor400(jsonStringActual);
			// throw new io.cucumber.java.PendingException();
		} else if (inte == 404) {
			Response response = Serenity.sessionVariableCalled("response");
			String jsonStringActual = response.then().extract().body().asString();
			RestUtilCustom.validateJsonResponseFor404(jsonStringActual);
			// throw new io.cucumber.java.PendingException();
		} else if (inte == 500) {
			Response response = Serenity.sessionVariableCalled("response");
			String jsonStringActual = response.then().extract().body().asString();
			XMLHandler.validateXMLFor500(jsonStringActual);
			// throw new io.cucumber.java.PendingException();
		}
	}

	@Then("user trigger a post request with (.*) and exclude header parameter (.*)$")
	public void user_trigger_a_post_request_with_request_body_and_exclude_header_parameter_missing_header(
			String requestBody, String missingHeader) {
		// Write code here that turns the phrase above into concrete actions
		RestUtilCustom.triggerPostRequestWithHeaderFlag(requestBody, missingHeader);
		// throw new io.cucumber.java.PendingException();
	}

	@Then("trigger a post request with (.*) and remove attribute (.*)$")
	public void trigger_a_post_request_with_request_body_and_remove_attribute_attribute(String requestBody,
			String attribute) {
		// Write code here that turns the phrase above into concrete actions
		RestUtilCustom.triggerPostRequestwithAttributeRemovedJsonrequest(requestBody, attribute);
	}

	// Added for General Service 405 error

	/*
	 * @Then("^user triggers a get request with body General Services(.*)$") public
	 * void triggerGetRequestGeneralService(String requestBody) {
	 * System.out.print("Print RequestBody");
	 * steps.triggerGetRequestGeneralService(requestBody);
	 * //jsonComparator.compareJsonOutput(responseBody); }
	 */

	// Cheque Service
	@Then("user triggers a get request for cheque services (.*)$")
	public void triggergetRequestForChequeServices(String reqbody) {
		steps.triggerGetRequestForChequeServices(reqbody);
	}

	// for setting the fileHanlder path in commonRestUtil
	@Given("user sets the file path for this feature file for (.*)$")
	public void settingFileHandler(String path) {
		CommonRestUtils.RequestBodyFolderName = path;
	}

	// Below new method code is for API chaining
	@Then("user updates the requestField (.+) of request body from (.+) with responsefield (.+) from filename (.+)$")
	public void updateRequestBody(String requestField, String requestBody, String responsefield, String filename) {

		System.out.println("Request body file path: " + requestBody);
		System.out.println("Fields to update - requestField: " + requestField);
		System.out.println("Fields to update from - responsefield  " + responsefield);
		System.out.println("Filename from where we need to take fields: " + filename);

		// Check if filename is null or empty and handle it accordingly
		if (filename == null || filename.equalsIgnoreCase("null") || filename.isEmpty()) {
			System.out.println("Filename is null or empty, skipping update.");
			return;
		}

		// Convert the comma-separated fields string to a list
		List<String> requestFieldList = requestField.isEmpty() ? new ArrayList<>()
				: Arrays.asList(requestField.split(","));
		List<String> responsefieldList = responsefield.isEmpty() ? new ArrayList<>()
				: Arrays.asList(responsefield.split(","));
		try {
			// Call the common method with the parsed fields list
			steps.updateRequestBodyCommonRests(requestFieldList, requestBody, responsefieldList, filename);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// New Code for all features to be ignore
	@Then("user verifies json from (.*)$")
	public void verifyJsonResponse(String responseBody) {
		// Determine fields to ignore based on the API
		String[] fieldsToIgnore = {};

		// General Service ignore the values in json response
		Map<String, String[]> specificValuesToIgnore = new HashMap<>();

		// UPI Ignore Fields as below
		if (RestAssured.baseURI.contains("deRegister")) {
			fieldsToIgnore = new String[] { "errorId", "errorAt" };
		}
		// General Service Ignore Fields as below
		else if (RestAssured.baseURI.contains("general")) {
			fieldsToIgnore = new String[] { "fileData", "kyc_reviewDt", "kyc_dt", "clr_bal_amt", "outstanding_Lien",
					"last_Tran_Date" };
			specificValuesToIgnore.put("errorMessage", new String[] { "timestamp", "requestId" });
			specificValuesToIgnore.put("accountInfo",
					new String[] { "last_Tran_Date", "clr_bal_amt", "outstanding_Lien" });

		} else if (RestAssured.baseURI.contains("business")) {
			fieldsToIgnore = new String[] { "fileData" };
			specificValuesToIgnore.put("errorMessage", new String[] { "timestamp", "requestId" });
		} else if (RestAssured.baseURI.contains("cheque")) {
			fieldsToIgnore = new String[] { "date", "referenceNumber", "chequeLeafs", "acctBals" };
			specificValuesToIgnore.put("errorMessage", new String[] { "timestamp", "requestId" });
		}

		// Govt-scheme Mobile ignore fields as below
		else if (RestAssured.baseURI.contains("govt-schemes")) {
			fieldsToIgnore = new String[] { "id", "errorId", "errorAt", "requestId", "timestamp", "status",
					"asOnDate" };
		} else if (RestAssured.baseURI.contains("retrieveEnrollmentDetails")) {
			fieldsToIgnore = new String[] { "errorAt", "errorId" };
		} else if (RestAssured.baseURI.contains("premiumDeduction")) {
			fieldsToIgnore = new String[] { "errorAt", "errorId" };
		} else if (RestAssured.baseURI.contains("getPMSchemeDetails")) {
			fieldsToIgnore = new String[] { "errorAt", "errorId" };
		}

		// NCMC ignore fields as below

		else if (RestAssured.baseURI.contains("debit-card")) {
			fieldsToIgnore = new String[] { "errorAt", "rrn", "errorId", "requestId", "totalTransaction", "title",
					"transactionparticular", "amount", "transactionId", "balAmount", "postedDateTime", "timestamp",
					"transactionDateTime" };
		}

		else if (RestAssured.baseURI.contains("registration-direct")) {
			fieldsToIgnore = new String[] { "errorId", "errorAt" };
		}

		else if (RestAssured.baseURI.contains("fetch-accounts")) {
			fieldsToIgnore = new String[] { "errorId", "errorAt" };
			specificValuesToIgnore.put("data.acctlist[0]", new String[] { "vpa" });
		} else if (RestAssured.baseURI.contains("token")) {
			fieldsToIgnore = new String[] { "data", "errorId", "errorAt" };
		} else if (RestAssured.baseURI.contains("SuggestVPA")) {
			fieldsToIgnore = new String[] { "data", "errorId", "errorAt" };
		} else if (RestAssured.baseURI.contains("listkeys")) {
			fieldsToIgnore = new String[] { "data", "errorId", "errorAt" };
		} else if (RestAssured.baseURI.contains("listbanks/cc")) {
			fieldsToIgnore = new String[] { "listBanks" };
		} else if (RestAssured.baseURI.contains("listbanks/cl")) {
			fieldsToIgnore = new String[] { "listBanks" };
		} else if (RestAssured.baseURI.contains("listbanks/all")) {
			fieldsToIgnore = new String[] { "listBanks" };
		} else if (RestAssured.baseURI.contains("listbanks/account")) {
			fieldsToIgnore = new String[] { "listBanks" };
		} else if (RestAssured.baseURI.contains("setvpa")) {
			fieldsToIgnore = new String[] { "createdDateTime", "errorId", "errorAt" };
		} else if (RestAssured.baseURI.contains("verify/vpa")) {
			fieldsToIgnore = new String[] { "errorId", "errorAt" };
		} else if (RestAssured.baseURI.contains("OTP")) {
			fieldsToIgnore = new String[] { "errorId", "errorAt" };
		} else if (RestAssured.baseURI.contains("getlistVpa")) {
			fieldsToIgnore = new String[] { "errorId", "errorAt", "data" };
		} else if (RestAssured.baseURI.contains("balance-inquiry")) {
			fieldsToIgnore = new String[] { "data", "errorId", "errorAt" };
		} else if (RestAssured.baseURI.contains("profile-vpa")) {
			fieldsToIgnore = new String[] { "errorId", "errorAt" };
		} else if (RestAssured.baseURI.contains("delink/vpa")) {
			fieldsToIgnore = new String[] { "delinkDateTime", "errorId", "errorAt" };
		} else if (RestAssured.baseURI.contains("transactionid")) {
			fieldsToIgnore = new String[] { "data" };
		} else if (RestAssured.baseURI.contains("transaction/pay")) {
			fieldsToIgnore = new String[] { "rrn", "txnDate", "txnId", "errorId", "errorAt" };
		} else if (RestAssured.baseURI.contains("removeaccount")) {
			fieldsToIgnore = new String[] { "errorId", "errorAt" };
		} else if (RestAssured.baseURI.contains("UPI")) {
			// Add fields to ignore for UPI API if any
		}
		// Credit Card Ignore Fields as below

		else if (RestAssured.baseURI.contains("getCardProfile")) {
		       //fieldsToIgnore = new String[] { "cashLimit","cvv","errorId","errorAt","requestId"};
	    		fieldsToIgnore = new String[] {"cardProfile", "errors","errorId","timestamp","path","requestId","description","errorAt"};
		    }
	    else if (RestAssured.baseURI.contains("getCard")) {
		       fieldsToIgnore = new String[] { "cashLimit","cvv","errorId","errorAt","timestamp","requestId"};
	    }
	
	    else if (RestAssured.baseURI.contains("tempBlockUnblock")) {
		       fieldsToIgnore = new String[] { "traceId","errorId","description","timestamp","reqRefNo","path","errorAt"};
		    }
	    else if (RestAssured.baseURI.contains("tempBlockUnblock.")) {
		       fieldsToIgnore = new String[] { "timestamp","path","requestId"};
		    }
	
	    else if (RestAssured.baseURI.contains("tempBlock")) {
		       fieldsToIgnore = new String[] { "traceId","timestamp","path","requestId","errorId","errorAt"};
		    }
	
	    else if (RestAssured.baseURI.contains("tempBlock.")) {
		       fieldsToIgnore = new String[] { "traceId","timestamp","path","requestId","errorId","errorAt"};
		    }
	
	    else if (RestAssured.baseURI.contains("txnDetails")) {
		       fieldsToIgnore = new String[] { "traceId","errorAt","errorId","timestamp" };
		    }
	    else if (RestAssured.baseURI.contains("txnDet")) {
		       fieldsToIgnore = new String[] { "traceId","errorAt","errorId","requestId","timestamp" };
		    }
	
	    else if (RestAssured.baseURI.contains("ccmsSetPin")) {
		       fieldsToIgnore = new String[] { "traceId" ,"errorId","errorAt","requestId","timestamp","error" };
		    }
	
	    else if (RestAssured.baseURI.contains("ccmsSetP")) {
		       fieldsToIgnore = new String[] { "traceId" ,"errorId","errorAt","requestId","timestamp"};
		    }
	  
	    else if (RestAssured.baseURI.contains("ccmsSet123")) {
		       fieldsToIgnore = new String[] { "requestId" ,"timestamp"};
		    }
	
	
	    else if (RestAssured.baseURI.contains("ccmsSetCardControl")) {
		       fieldsToIgnore = new String[] { "traceId","errorId","errorAt","timestamp" };
		    }
	    else if (RestAssured.baseURI.contains("ccmsSetCardCont")) {
		       fieldsToIgnore = new String[] { "traceId","errorId","errorAt","requestId","timestamp" };
		    }
	    else if (RestAssured.baseURI.contains("get-outstandingBill")) {
		       fieldsToIgnore = new String[] { "paymentRefNo", "ccPaymentRefNo", "txnDate","errorAt","errorId","timestamp" };
		    }
	 
	    else if (RestAssured.baseURI.contains("get-outstanding")) {
		       fieldsToIgnore = new String[] { "paymentRefNo", "ccPaymentRefNo", "txnDate","errorAt","errorId", "requestId","timestamp" };
		    }
		// FD RD Ignore Fields as below
		else if (RestAssured.baseURI.contains("getTDDetailsToResume")) {
			fieldsToIgnore = new String[] { "transRefNumber", "errors", "errorId", "errorAt", "depositAmount",
					"interestRate", "depositTerm", "maturityAmount", "applicationFrmNum", "scheme", "nominee" };
		} else if (RestAssured.baseURI.contains("getTDStatus")) {
			fieldsToIgnore = new String[] { "applicationFrmNum", "entity", "entity", "errors", "errorId", "errorAt",
					"transRefNumber" };
		} else if (RestAssured.baseURI.contains("downloadTDCertificate")) {
			fieldsToIgnore = new String[] { "fileData", "errors", "errorId", "errorAt" };
		} else if (RestAssured.baseURI.contains("downloadStatement")) {
			fieldsToIgnore = new String[] { "fileData", "errors", "errorId", "errorAt", "data" };
		} else if (RestAssured.baseURI.contains("downloadInterestCertificate")) {
			fieldsToIgnore = new String[] { "fileData", "errors", "errorId", "errorAt" };
		} else if (RestAssured.baseURI.contains("getTDJournyState")) {
			fieldsToIgnore = new String[] { "transactionDate", "applicationFormNumber", "journeyTaskRequestDate",
					"errors", "errorId", "errorAt", "journeyTask", "journeyStatus" };
		} else if (RestAssured.baseURI.contains("saveTermDeposit")) {
			fieldsToIgnore = new String[] { "entity", "errorId", "errorAt", "errors", "transRefNumber",
					"applicationFrmNum" };
		} else if (RestAssured.baseURI.contains("openTermDeposit")) {
			fieldsToIgnore = new String[] { "entity", "errors", "errorId", "errorAt", "transRefNumber" };
		}
		// else if (RestAssured.baseURI.contains("getTDStatus")) {
		// fieldsToIgnore = new String[] {
		// "entity","entity","errors","errorId","errorAt" };
		// }
		else if (RestAssured.baseURI.contains("getCASAAccountDetails")) {
			fieldsToIgnore = new String[] { "acctBals", "errors", "errorId", "errorAt", "nominee" };
		} else if (RestAssured.baseURI.contains("getCustomerByCIF")) {
			fieldsToIgnore = new String[] { "errors", "errorId", "errorAt", "contactInfo","fatherOrHusbandName" };
		} else if (RestAssured.baseURI.contains("getCustomerAccounts")) {
			fieldsToIgnore = new String[] { "errors", "errorId", "errorAt" };
		} else if (RestAssured.baseURI.contains("getCASAAccounts")) {
			fieldsToIgnore = new String[] { "errors", "errorId", "errorAt" };
		} else if (RestAssured.baseURI.contains("getMaturityDetails")) {
			fieldsToIgnore = new String[] { "errors", "errorId", "errorAt", "maturityAmount", "interestRate",
					"totalInterestPayoutAmount", "depositTerm", "interestPayoutAmount" };
		} else if (RestAssured.baseURI.contains("getTDDetails")) {
			fieldsToIgnore = new String[] { "errors", "errorId", "errorAt" };
		} else if (RestAssured.baseURI.contains("getTDTransactions")) {
			fieldsToIgnore = new String[] { "errors", "errorId", "errorAt", "transactions" };
		} else if (RestAssured.baseURI.contains("getCustKycStatus")) {
			fieldsToIgnore = new String[] { "errors", "errorId", "errorAt" };
		} else if (RestAssured.baseURI.contains("emailStatement")) {
			fieldsToIgnore = new String[] { "errors", "errorId", "errorAt" };
		} else if (RestAssured.baseURI.contains("closeTermDeposit")) {
			fieldsToIgnore = new String[] { "errors", "errorId", "errorAt" };
		}

		// Credit Card Ignore Fields as below

		else if (RestAssured.baseURI.contains("getCardProfile")) {
			fieldsToIgnore = new String[] { "cashLimit", "cvv", "errorId", "errorAt", "requestId" };

		} else if (RestAssured.baseURI.contains("getCard")) {
			fieldsToIgnore = new String[] { "cashLimit", "cvv", "errorId", "errorAt", "timestamp", "requestId" };
		}

		else if (RestAssured.baseURI.contains("tempBlockUnblock")) {
			fieldsToIgnore = new String[] { "traceId", "errorId", "errorAt" };
		}

		else if (RestAssured.baseURI.contains("tempBlock")) {
			fieldsToIgnore = new String[] { "traceId", "timestamp", "requestId", "errorId", "errorAt" };
		}

		else if (RestAssured.baseURI.contains("txnDetails")) {
			fieldsToIgnore = new String[] { "traceId", "errorAt", "errorId", "timestamp" };
		} else if (RestAssured.baseURI.contains("txnDet")) {
			fieldsToIgnore = new String[] { "traceId", "errorAt", "errorId", "requestId", "timestamp" };
		}

		else if (RestAssured.baseURI.contains("ccmsSetPin")) {
			fieldsToIgnore = new String[] { "traceId", "errorId", "errorAt" };
		}

		else if (RestAssured.baseURI.contains("ccmsSetP")) {
			fieldsToIgnore = new String[] { "traceId", "errorId", "errorAt", "requestId", "timestamp" };
		}

		else if (RestAssured.baseURI.contains("ccmsSetCardControl")) {
			fieldsToIgnore = new String[] { "traceId", "errorId", "errorAt", "timestamp" };
		} else if (RestAssured.baseURI.contains("ccmsSetCardCont")) {
			fieldsToIgnore = new String[] { "traceId", "errorId", "errorAt", "requestId", "timestamp" };
		} else if (RestAssured.baseURI.contains("get-outstandingBill")) {
			fieldsToIgnore = new String[] { "paymentRefNo", "ccPaymentRefNo", "txnDate", "errorAt", "errorId",
					"timestamp" };
		}

		else if (RestAssured.baseURI.contains("get-outstanding")) {
			fieldsToIgnore = new String[] { "paymentRefNo", "ccPaymentRefNo", "txnDate", "errorAt", "errorId",
					"requestId", "timestamp" };
		}

		// Cheque Service Ignore Fields as below
		// date, reference number
		else if (RestAssured.baseURI.contains("book-request")) {
			fieldsToIgnore = new String[] { "date", "referenceNumber" };
		}

		else if (RestAssured.baseURI.contains("status-inquiry")) {
			fieldsToIgnore = new String[] { "date" };
		} else if (RestAssured.baseURI.contains("positive-pay-limit")) {
			fieldsToIgnore = new String[] { "date" };
		}

		else if (RestAssured.baseURI.contains("stop-cheque-payment")) {
			fieldsToIgnore = new String[] { "date", "referenceNumber" };
		} else if (RestAssured.baseURI.contains("cheque-leafs")) {
			fieldsToIgnore = new String[] { "cheque-status", "chequeLeafs" };
		} else if (RestAssured.baseURI.contains("account-info")) {
			fieldsToIgnore = new String[] { "accounts" };
		} else if (RestAssured.baseURI.contains("cheque")) {
			fieldsToIgnore = new String[] { "date", "referenceNumber", "chequeLeafs", "acctBals" };
		}

		// Login Registration Ignore fields as below
		else if (RestAssured.baseURI.contains("generateaadharotp")) {
			fieldsToIgnore = new String[] { "txn" };
		} else if (RestAssured.baseURI.contains("generateotp")) {
			fieldsToIgnore = new String[] { "stateId", "location", "hint" };
		} else if (RestAssured.baseURI.contains("mblogin")) {
			fieldsToIgnore = new String[] { "access_token", "expires_in", "refresh_token", "lastLoginTime" };
		} else if (RestAssured.baseURI.contains("custInqByMob")) {
			fieldsToIgnore = new String[] { "errorId", "errorAt" };
		} else if (RestAssured.baseURI.contains("custInqByMob")) {
			fieldsToIgnore = new String[] { "errorId", "errorAt", "message" };
		}

		// SSA Ignore Fields as below

		else if (RestAssured.baseURI.contains("checkExistingAccounts")) {
			fieldsToIgnore = new String[] { "errorAt", "errorId", "errors" };
		} else if (RestAssured.baseURI.contains("getInvestmentAccounts")) {
			fieldsToIgnore = new String[] { "investmentAccts", "errorId", "errorAt", "errors", "errorLocation" };
		} else if (RestAssured.baseURI.contains("saveSsa")) {
			fieldsToIgnore = new String[] { "errorAt", "applicationFrmNum", "errorId", "errors" };
		} else if (RestAssured.baseURI.contains("openSsa")) {
			fieldsToIgnore = new String[] { "applicationFrmNum", "errorAt", "errorId", "errors" };
		} else if (RestAssured.baseURI.contains("getSSAAccountDetails")) {
			fieldsToIgnore = new String[] { "amount", "errorAt", "errorId", "applicationFrmNum", "errors" };
		} else if (RestAssured.baseURI.contains("upload")) {
			fieldsToIgnore = new String[] { "uri", "docRefNo", "errorAt", "errorId", "path", "requestId", "errors",
					"timestamp" };
		} else if (RestAssured.baseURI.contains("download")) {
			fieldsToIgnore = new String[] { "fileData", "errorAt", "errorId", "errors" };
		} else if (RestAssured.baseURI.contains("removedoc")) {
			fieldsToIgnore = new String[] { "applicationFrmNum", "errorAt", "errorId", "errors" };
		} else if (RestAssured.baseURI.contains("AcknowledgementLetter")) {
			fieldsToIgnore = new String[] { "data", "errorAt", "errorId", "errors" };
		} else if (RestAssured.baseURI.contains("emailStatement")) {
			fieldsToIgnore = new String[] { "data", "errorAt", "errorId", "errors" };
		} else if (RestAssured.baseURI.contains("downloadStatement")) {
			fieldsToIgnore = new String[] { "errorAt", "errorId", "errors" };
		} else if (RestAssured.baseURI.contains("contribution")) {
			fieldsToIgnore = new String[] { "applNum", "paymentTxnId", "channelTxnId", "paymentTxnDate", "errors",
					"errorAt", "errorId", "name", "maturityDate" };
		} else if (RestAssured.baseURI.contains("validateContribution")) {
			fieldsToIgnore = new String[] { "errors", "errorAt", "errorId" };
		} else if (RestAssured.baseURI.contains("getPaymentStatus")) {
			fieldsToIgnore = new String[] { "channelTxnId", "applNum", "paymentTxnId", "paymentTxnDate", "errors",
					"errorAt", "errorId", "name", "maturityDate" };
		} else if (RestAssured.baseURI.contains("getSSATransactions")) {
			fieldsToIgnore = new String[] { "errors", "errorAt", "errorId" };
		} else if (RestAssured.baseURI.contains("getSSATermsAndCondition")) {
			fieldsToIgnore = new String[] { "errorAt", "errorId", "errors" };
		} else if (RestAssured.baseURI.contains("findBranch")) {
			fieldsToIgnore = new String[] { "requestId", "timestamp" };
		} else if (RestAssured.baseURI.contains("SSY_RELATION_WITH_MINOR")) {
			fieldsToIgnore = new String[] { "requestId", "timestamp" };
		} else if (RestAssured.baseURI.contains("birth_type")) {
			fieldsToIgnore = new String[] { "requestId", "timestamp" };
		} else if (RestAssured.baseURI.contains("birth_order")) {
			fieldsToIgnore = new String[] { "requestId", "timestamp" };
		} else if (RestAssured.baseURI.contains("getSSADetailsToResume")) {
			fieldsToIgnore = new String[] { "errorAt", "errorId", "errors" };
		} else if (RestAssured.baseURI.contains("getSSAStatus")) {
			fieldsToIgnore = new String[] { "errorAt", "errorId", "errors" };
		} else if (RestAssured.baseURI.contains("createLead")) {
			fieldsToIgnore = new String[] { "errorAt", "errorId", "errors" };
		}
		// PPF Ignore Fields as below
		else if (RestAssured.baseURI.contains("savePpf")) {
			fieldsToIgnore = new String[] { "transRefNumber", "entity", "errorId", "errorAt", "errors" };
		} else if (RestAssured.baseURI.contains("makeContribute")) {
			fieldsToIgnore = new String[] { "transRefNumber", "entity", "errorId", "errorAt", "errors" };
		} else if (RestAssured.baseURI.contains("getPPFAccountDetails")) {
			fieldsToIgnore = new String[] { "errorId", "errorAt", "errors" };
		} else if (RestAssured.baseURI.contains("openPpf")) {
			fieldsToIgnore = new String[] { "errorId", "errorAt", "errors" };
		} else if (RestAssured.baseURI.contains("getPPFStatus")) {
			fieldsToIgnore = new String[] { "errorId", "errorAt", "errors" };
		} else if (RestAssured.baseURI.contains("emailStatement")) {
			fieldsToIgnore = new String[] { "errorId", "errorAt", "errors", "message" };
		} else if (RestAssured.baseURI.contains("downloadStatement")) {
			fieldsToIgnore = new String[] { "errorId", "errorAt", "errors", "fileData", "fileName", "data" };
		} else if (RestAssured.baseURI.contains("getTDJournyState")) {
			fieldsToIgnore = new String[] { "errorId", "errorAt", "errors" };
		} else if (RestAssured.baseURI.contains("PPFCertificate")) {
			fieldsToIgnore = new String[] { "errorId", "errorAt", "errors" };
		} else if (RestAssured.baseURI.contains("getPPFExistingAccount")) {
			fieldsToIgnore = new String[] { "errorId", "errorAt", "errors" };
		} else if (RestAssured.baseURI.contains("getPPFDetailsToResume")) {
			fieldsToIgnore = new String[] { "errorId", "errorAt", "errors", "accts" };
		}

		// BBPS Ignore Fields as below
		else if (RestAssured.baseURI.contains("onClickUtility")) {
			fieldsToIgnore = new String[] { "service_provider" };
			// Add fields to ignore for UPI API if any
		} else if (RestAssured.baseURI.contains("onClickRechargeFastag")) {
			fieldsToIgnore = new String[] { "service_provider" };
			// Add fields to ignore for UPI API if any
		} else if (RestAssured.baseURI.contains("onClickProviderDetailContinueFastag")) {
			fieldsToIgnore = new String[] { "payment_details" };
			// Add fields to ignore for UPI API if any
		} else if (RestAssured.baseURI.contains("onClickTransactionPinContinueFastag")) {
			fieldsToIgnore = new String[] { "service_details", "payment_details", "transaction_details", "region" };
			// Add fields to ignore for UPI API if any
		} else if (RestAssured.baseURI.contains("onClickProviderDetailContinueDTH")) {
			fieldsToIgnore = new String[] { "payment_details" };
			// Add fields to ignore for UPI API if any
		} else if (RestAssured.baseURI.contains("onClickContact")) {
			fieldsToIgnore = new String[] { "account_details", "service_providers", "region", "plan_categories" };
			// Add fields to ignore for UPI API if any
		} else if (RestAssured.baseURI.contains("onClickTransactionPinContinue")) {
			fieldsToIgnore = new String[] { "service_details", "payment_details", "transaction_details" };
			// Add fields to ignore for UPI API if any
		} else if (RestAssured.baseURI.contains("onClickUserNotEnabledAutoPay")) {
			fieldsToIgnore = new String[] { "billerAccounts", "linkedBills" };
			// Add fields to ignore for UPI API if any
		}

		// Fund transfer Ignore Fields as below
		else if (RestAssured.baseURI.contains("get-fev-transactions")) {
			fieldsToIgnore = new String[] { "data", "timestamp", "requestId" };
		}

		else if (RestAssured.baseURI.contains("set-si")) {
			fieldsToIgnore = new String[] { "referenceNumber", "timestamp", "requestId" };
		}

		// for incorrect endpoint url
		else if (RestAssured.baseURI.contains("set-si1")) {
			fieldsToIgnore = new String[] { "referenceNumber", "timestamp", "requestId" };
		}

		else if (RestAssured.baseURI.contains("get-si")) {
			fieldsToIgnore = new String[] { "referenceNumber", "timestamp", "requestId", "errorId", "errorAt", "data" };
		}

		// for incorrect endpoint url
		else if (RestAssured.baseURI.contains("get-si1")) {
			fieldsToIgnore = new String[] { "referenceNumber", "timestamp", "requestId", "errorId", "errorAt" };
		}

		else if (RestAssured.baseURI.contains("get-si-records")) {
			fieldsToIgnore = new String[] { "referenceNumber", "timestamp", "requestId", "errorId", "errorAt" };
		}

		// for incorrect endpoint url
		else if (RestAssured.baseURI.contains("get-si-records1")) {
			fieldsToIgnore = new String[] { "referenceNumber", "timestamp", "requestId", "errorId", "errorAt" };
		}

		else if (RestAssured.baseURI.contains("cancel-si")) {
			fieldsToIgnore = new String[] { "referenceNumber", "timestamp", "requestId", "errorId", "errorAt" };
		}

		// for incorrect endpoint url
		else if (RestAssured.baseURI.contains("cancel-si1")) {
			fieldsToIgnore = new String[] { "referenceNumber", "timestamp", "requestId", "errorId", "errorAt" };
		}

		else if (RestAssured.baseURI.contains("get-customer-consumed-limit")) {
			fieldsToIgnore = new String[] { "currentDate", "withinBankBalDailyTrnLimit",
					"withinBankConsumedDailyTrnLimit", "balanceDailyTrnLimit", "consumedDailyTrnLimit", "date",
					"errorId", "errorAt", "requestId", "timestamp", "outsideBankBalDailyTrnLimit",
					"outsideBankConsumedDailyTrnLimit" };
		}

		// for incorrect endpoint url
		else if (RestAssured.baseURI.contains("get-customer-consumed-limit1")) {
			fieldsToIgnore = new String[] { "currentDate", "withinBankBalDailyTrnLimit",
					"withinBankConsumedDailyTrnLimit", "balanceDailyTrnLimit", "consumedDailyTrnLimit", "date",
					"errorId", "errorAt", "requestId", "timestamp" };
		}

		else if (RestAssured.baseURI.contains("get-payee-consumed-limit")) {
			fieldsToIgnore = new String[] { "currentDate", "withinBankBalDailyTrnLimit",
					"withinBankConsumedDailyTrnLimit", "balanceDailyTrnLimit", "consumedDailyTrnLimit", "date",
					"currentDate", "outsideBankBalDailyTrnLimit", "outsideBankConsumedDailyTrnLimit", "timestamp",
					"requestId", "errorId", "errorAt" };
		}

		// for incorrect endpoint url
		else if (RestAssured.baseURI.contains("get-payee-consumed-limit1")) {
			fieldsToIgnore = new String[] { "currentDate", "withinBankBalDailyTrnLimit",
					"withinBankConsumedDailyTrnLimit", "balanceDailyTrnLimit", "consumedDailyTrnLimit", "date",
					"timestamp", "requestId" };
		}

		else if (RestAssured.baseURI.contains("p2p")) {
			fieldsToIgnore = new String[] { "timestamp", "requestId", "transactionDate", "rrn" };
		}

		// for incorrect endpoint url
		else if (RestAssured.baseURI.contains("p2p1")) {
			fieldsToIgnore = new String[] { "timestamp", "requestId", "transactionDate", "rrn" };
		}

		else if (RestAssured.baseURI.contains("p2a")) {
			fieldsToIgnore = new String[] { "timestamp", "requestId", "transactionDate", "rrn", "timestamp",
					"requestId" };
		}

		// for incorrect endpoint url
		else if (RestAssured.baseURI.contains("p2a1")) {
			fieldsToIgnore = new String[] { "timestamp", "requestId", "transactionDate", "rrn", "timestamp",
					"requestId" };
		}

		else if (RestAssured.baseURI.contains("fund-transfer")) {
			fieldsToIgnore = new String[] { "coolingPeriodTime", "createdDate", "openingDate", "timestamp", "requestId",
					"coolingPeriodTimeRemaining", "mbMaxPerTrnLimit", "modifiedDate", "referenceNumber",
					"trnxTimestamp", "modifiedDate", "openingDate", "timestamp", "requestId", "createdDate",
					"mobileNumber", "modifiedDate", "openingDate", "ibMaxDailyTrnLimit", "ibMaxPerTrnLimit",
					"ibMinDailyTrnLimit", "ibMiPerTrnLimit", "referenceNumber", "remarks", "trnxTimestamp",
					"availableBalance", "ledgerBalance", "txnDate", "availableBalance", "txnId", "debitAccountName",
					"trnxId", "errorId", "errorAt" };
		}

		else if (RestAssured.baseURI.contains("add-fav-trans")) {
			fieldsToIgnore = new String[] { "createdDate", "openingDate", "trnxId" };
		} else if (RestAssured.baseURI.contains("add")) {
			fieldsToIgnore = new String[] { "coolingPeriodTime", "createdDate", "openingDate", "errorDetails",
					"timestamp", "requestId" };
		}

		// for incorrect endpoint url
		else if (RestAssured.baseURI.contains("add1")) {
			fieldsToIgnore = new String[] { "coolingPeriodTime", "createdDate", "openingDate", "errorDetails",
					"timestamp", "requestId" };
		}

		// for incorrect endpoint url
		else if (RestAssured.baseURI.contains("get-fev-transactions1")) {
			fieldsToIgnore = new String[] { "data", "timestamp", "requestId" };
		}

		else if (RestAssured.baseURI.contains("get-payees")) {
			fieldsToIgnore = new String[] { "coolingPeriodTime", "createdDate", "openingDate", "timestamp", "requestId",
					"coolingPeriodTimeRemaining", "mbMaxPerTrnLimit", "modifiedDate" };
		}

		else if (RestAssured.baseURI.contains("within-bank-transfer")) {
			fieldsToIgnore = new String[] { "data" };
		}

		// for incorrect endpoint url
		else if (RestAssured.baseURI.contains("within-bank-transfer1")) {
			fieldsToIgnore = new String[] { "availableBalance", "ledgerBalance", "txnDate", "txnId", "timestamp",
					"requestId", "debitAccountName" };
		}

		else if (RestAssured.baseURI.contains("add-fav-trans")) {
			fieldsToIgnore = new String[] { "createdDate", "openingDate", "trnxId" };
		}

		// for incorrect endpoint url
		else if (RestAssured.baseURI.contains("add-fav-trans1")) {
			fieldsToIgnore = new String[] { "createdDate", "openingDate", "trnxId" };
		}

		// for incorrect endpoint url
		else if (RestAssured.baseURI.contains("get-payees1")) {
			fieldsToIgnore = new String[] { "coolingPeriodTime", "createdDate", "openingDate", "timestamp",
					"coolingPeriodTimeRemaining", "requestId" };
		}

		else if (RestAssured.baseURI.contains("edit")) {
			fieldsToIgnore = new String[] { "modifiedDate", "openingDate", "timestamp", "requestId", "createdDate",
					"mobileNumber", "modifiedDate", "openingDate", "ibMaxDailyTrnLimit", "ibMaxPerTrnLimit",
					"ibMinDailyTrnLimit", "ibMiPerTrnLimit" };
		}
		// for incorrect endpoint url
		else if (RestAssured.baseURI.contains("edit1")) {
			fieldsToIgnore = new String[] { "modifiedDate", "openingDate", "timestamp", "requestId", "createdDate",
					"mobileNumber", "modifiedDate", "openingDate" };
		} else if (RestAssured.baseURI.contains("delete")) {
			fieldsToIgnore = new String[] { "createdDate", "openingDate", "errorId", "errorAt", "" };
		}

		// for incorrect endpoint url
		else if (RestAssured.baseURI.contains("delete1")) {
			fieldsToIgnore = new String[] { "createdDate", "openingDate", "errorId", "errorAt", "" };
		}

		else if (RestAssured.baseURI.contains("setPerTransactionLimit")) {
			fieldsToIgnore = new String[] { "createdDate", "modifiedDate", "timestamp", "errorId", "errorAt",
					"requestId" };
		}
		// for incorrect endpoint url
		else if (RestAssured.baseURI.contains("setPerTransactionLimit1")) {
			fieldsToIgnore = new String[] { "createdDate", "modifiedDate", "timestamp", "errorId", "errorAt",
					"requestId" };
		}

		else if (RestAssured.baseURI.contains("outside-bank-transfer")) {
			fieldsToIgnore = new String[] { "trxId", "trnxTimestamp", "txnId", "timestamp", "requestId",
					"referenceNumber", "remarks", "trnxTimestamp" };
		}

		// for incorrect endpoint url
		else if (RestAssured.baseURI.contains("outside-bank-transfer1")) {
			fieldsToIgnore = new String[] { "trxId", "trnxTimestamp", "txnId", "timestamp", "requestId",
					"referenceNumber", "remarks", "trnxTimestamp" };
		}

		// Assisted portal ignore fields as below

		else if (RestAssured.baseURI.contains("assignment-service")) {
			fieldsToIgnore = new String[] { "timestamp", "requestId" };
		}

		else if (RestAssured.baseURI.contains("consent-service")) {
			fieldsToIgnore = new String[] { "timestamp", "requestId" };
		} else if (RestAssured.baseURI.contains("dashboard")) {
			fieldsToIgnore = new String[] { "timestamp", "requestId", "errorId", "errorAt" };
		}

		// NPS ignore fields as below
		else if (RestAssured.baseURI.contains("nps")) {
			fieldsToIgnore = new String[] { "id", "errorId", "errorAt", "requestId", "timestamp", "status",
					"asOnDate" };
		}
		// ignore cases for debit card
		else if (RestAssured.baseURI.contains("debitCardProfile")) {
			fieldsToIgnore = new String[] { "data" };
		}

		// Call the JSON comparison method with the fields to ignore and specific values
		// to ignore
		jsonComparator.compareJsonOutput(responseBody, fieldsToIgnore, specificValuesToIgnore);
	}

}