package com.ubi.cucumber;

import org.junit.runner.RunWith;
import org.openqa.selenium.WebDriver;

import com.ubi.testbase.TestBase;

import io.cucumber.junit.CucumberOptions;
import net.serenitybdd.annotations.Managed;
import net.serenitybdd.cucumber.CucumberWithSerenity;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(
		
//For running combine features as below
//features = {
//"src/test/resources/features/API/MVP/FixedRecurringDeposit",
//"src/test/resources/features/API/MVP/NPS",
//"src/test/resources/features/API/MVP/PPF",
//"src/test/resources/features/API/MVP/Registration",
//"src/test/resources/features/API/MVP/SSA"}
//)

//features = "src\\test\\resources\\features\\API\\MVP\\FixedRecurringDeposit\\FDRDSmoke.feature")

//features = "src\\test\\resources\\features\\API\\MVP\\FixedRecurringDeposit\\FDRDSmoke.feature")

//features = "src/test/resources/features/API/MVP/FixedRecurringDeposit/FDRDSmoke.feature",tags="@TestCaseKey=UDB-T7627")

//features = "src/test/resources/features/API/MVP/NPS/NPSSmoke.feature")
//features = "src/test/resources/features/API/MVP/PPF/PPFRegression.feature",tags="@TestCaseKey=UDB-T34022")
		
//Below Feature File External Dependency Services
//features = "src\\test\\resources\\features\\API\\Drop2\\ExternalServices")
		
//features = "src/test/resources/features/API/Drop2")

//Below feature link for Feature FD-RD		
//features = "src\\test\\resources\\features\\API\\MVP\\FixedRecurringDeposit\\FDRDRegression.feature",tags="@TestCaseKey=UDB-T34268")
//features = "src\\test\\resources\\features\\API\\MVP\\FixedRecurringDeposit\\FDRDSmoke.feature")
//features = "src/test/resources/features/API/MVP/FixedRecurringDeposit")
//features = "src/test/resources/features/API/MVP/PPF/PPFRegression.feature")

//Below feature link for Feature Login Registration	
//features = "src/test/resources/features/API/MVP/Registration/RegistrationSmokeBranchToken.feature")
//features = "src/test/resources/features/API/MVP/Registration/RegistrationSmokeAadhar.feature")
//features = "src/test/resources/features/API/MVP/Registration/RegistrationSmokeDebitCard.feature")
//features = "src/test/resources/features/API/MVP/Registration/")

//Below feature link for Feature SSA
//features = "src\\test\\resources\\features\\API\\MVP\\SSA\\SSASmoke.feature")


//Below feature link for Feature PPF
//features = "src\\test\\resources\\features\\API\\MVP\\PPF\\PPFSmoke.feature")
//features = "src/test/resources/features/API/MVP/PPF/PPFRegression.feature",tags="@test")

//This are for Assisted Portal 	
features="src\\test\\resources\\feature\\API\\MVP\\AssistedPortal\\AssignmentService.feature")
		
//features="src\\test\\resources\\features\\API\\MVP\\AssistedPortal\\ConsentService.feature")
//features="C:\\Users\\004QAI744\\UBIAutomation\\automationubi\\ubiAutomation\\src\\test\\resources\\features\\API\\MVP\\AssistedPortal\\DashboardService.feature")

//This feature file for Debit Card
//features="src/test/resources/features/API/Drop2/DebitCard/DebitCardRegression.feature")

//Below Feature file for the Cheque Service
//features = "src/test/resources/features/API/Drop2/ChequeService")

//Below Feature file for the UPI
//features = "src\\test\\resources\\features\\API\\Drop2\\UPI\\UPIRegression2.feature")

//Below Feature for Fund Transfer
//features = "src\\test\\resources\\features\\API\\Drop2\\FundTransfer\\FundTransferRegression.feature")

//Below Feature file is for General Service	
//features ="src\\test\\resources\\features\\API\\Drop2\\GeneralService\\GeneralServiceSmoke.feature")
//features ="src/test/resources/features/API/Drop2/GeneralService")

//Below Feature file is for Credit Card
//features = "src/test/resources/features/API/Drop2/CreditCard")

//Below Feature File is for BBPS
//features = "src/test/resources/features/API/Drop2/BBPS")

//Below Feature File is for Govt Scheme
//features = "src\\test\\resources\\features\\API\\Drop2\\GovtScheme\\GovtSchemeMobileRegression.feature")

//Below Feature File is for NCMC
//features = {"src/test/resources/features/API/Drop2/FundTransfer",
//"src/test/resources/features/API/Drop2/ExternalServices"})

//Mobile 
//features = "src/test/resources/features/Mobile/MVP")
		
public class TestRunner extends TestBase{
	//@Managed(driver="Appium")
	//WebDriver appium;
}


