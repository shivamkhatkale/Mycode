package com.ubi.cucumber.steps.api.mvp;

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


public class CommonMobileSteps extends PageObject {
public static String setEnvPath = "";
	
	/*@Steps
	CommonRestUtils steps;
	VerificationAPI stepsVerify;
	JSONComparator jsonComparator;*/

	@Managed(driver="appium")
	WebDriver appium;
	MFAPage mfaPage = new MFAPage();
	CommonMethods common = new CommonMethods();
	DepositPage depositPage = new DepositPage();
	DashboardPage dashboardPage = new DashboardPage();
	
	@Given("^user logins to app$")
	public void test() throws InterruptedException
	{
		
		   //find(By.xpath("//android.widget.TextView[@resource-id=\"textId\" and @text=\"English\"]")).click();
		   //find(By.xpath("//android.widget.Button[@content-desc=\"Continue\"]")).click();
	      Thread.sleep(4000);      	

		common.clickObject(mfaPage.SelectEnglish);
		common.clickObject(mfaPage.ContinueButton);
		common.clickObject(mfaPage.Symbol);
		common.clickObject(mfaPage.AllowPermission);
		common.clickObject(mfaPage.AllowPermissionAgain);
		common.clickObject(mfaPage.AllowPermissionAgain);
		common.clickObject(mfaPage.AllowPermissionAgain);
		common.clickObject(mfaPage.Symbol2);
		//common.clickObject(mfaPage.DownloadTC);
		//common.clickObject(mfaPage.AllowPermissionAgain);
		common.clickObject(mfaPage.AllowDTC);
		//common.clickObject(mfaPage.Icon);

		
		common.clickObject(mfaPage.LetsGetStarted);
		Thread.sleep(7000);      
		common.waitTillElementDisplayed(mfaPage.ChooseSim1);
    	common.clickObject(mfaPage.ChooseSim1);
		common.clickObject(mfaPage.ContinueSim);
		
		common.waitTillElementDisplayed(mfaPage.EnterLoginPin1);

		common.clickObject(mfaPage.EnterLoginPin1);
		//common.clickObject(mfaPage.EnterLoginPin1);
        common.enterText(mfaPage.EnterLoginPin1, "2");
        common.enterText(mfaPage.EnterLoginPin2, "5");
        common.enterText(mfaPage.EnterLoginPin3, "8");
        common.enterText(mfaPage.EnterLoginPin4, "0");
        common.waitTillElementDisplayed(dashboardPage.Accounts);
        common.clickObject(dashboardPage.Accounts);
        common.waitTillElementDisplayed(dashboardPage.Home);
        common.clickObject(dashboardPage.Home);
       
      common.scrollDown("Account Services");
      common.scrollUp("Deposits");
		//common.clickObject(mfaPage.ChooseSim1);
		//common.clickObject(mfaPage.ContinueSim);
	     Thread.sleep(7000);      



  		//CommonMethods.clickObject(mfaPage.ContinueButton);
 
	}
  	
	@Then("^login page is displayed$")
	public void test1()
	{
  		System.out.print("bye");
	}
	

	
}
	


