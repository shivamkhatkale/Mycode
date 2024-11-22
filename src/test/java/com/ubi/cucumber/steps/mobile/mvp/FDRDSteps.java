package com.ubi.cucumber.steps.mobile.mvp;

import com.ubi.cucumber.steps.api.mvp.CommonMobileSteps;
import com.ubi.pageObject.DashboardPage;
import com.ubi.pageObject.DepositPage;
import com.ubi.pageObject.MFAPage;
import com.ubi.testbase.AppConfig;
import com.ubi.testbase.CommonMethods;
import com.ubi.testbase.CommonRestUtils;
import com.ubi.testbase.JSONComparator;
import com.ubi.testbase.TestBase;
import com.ubi.testbase.VerificationAPI;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.restassured.RestAssured;
import net.serenitybdd.annotations.Managed;
import net.serenitybdd.annotations.Steps;
import net.serenitybdd.core.pages.PageObject;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


public class FDRDSteps extends PageObject {
public static String setEnvPath = "";
	

@Managed(driver="appium")
WebDriver appium;

	/*@Steps
	CommonRestUtils steps;
	VerificationAPI stepsVerify;
	JSONComparator jsonComparator;*/
 
    
	
	

	DepositPage depositPage = new DepositPage();
	DashboardPage dashboardPage = new DashboardPage();
	CommonMethods common = new CommonMethods();
	
	
	
	@Then("^user clicks on AddAcounts$")
	public void clickonAddAccount() throws InterruptedException
	{

		common.waitTillElementDisplayed(dashboardPage.Accounts);
		common.clickObject(dashboardPage.Accounts);
		common.clickObject(depositPage.AddDeposit);
		common.clickObject(depositPage.FixedDeposit);


	}
}
	


