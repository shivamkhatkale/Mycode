package com.ubi.steps.mvp;

import com.ubi.pageObject.DashboardPage;
import com.ubi.pageObject.DepositPage;
import com.ubi.pageObject.MFAPage;
import com.ubi.testbase.CommonMethods;

import io.cucumber.java.en.Then;

public class FDRDSteps {
	
	DepositPage depositPage = new DepositPage();
	DashboardPage dashboardPage = new DashboardPage();
	CommonMethods common = new CommonMethods();
	
	@Then("user clicks on AddAcounts")
	public void clickonAddAccount() throws InterruptedException
	{

		common.clickObject(dashboardPage.Accounts);
		common.clickObject(depositPage.AddDeposit);
		common.clickObject(depositPage.FixedDeposit);

	}



}
