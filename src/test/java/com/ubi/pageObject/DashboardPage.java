package com.ubi.pageObject;

import java.util.List;

import com.ubi.base.ORPageModel;
import com.ubi.testbase.CommonMethods;
import com.ubi.testbase.TestBase;

public class DashboardPage {
	
	List<ORPageModel> listofElements = TestBase._ORIntializater.get(DashboardPage.class.getSimpleName());
	CommonMethods common = new CommonMethods();
	public ORPageModel Accounts = common.findElement(listofElements,"Accounts"); 
	
	public ORPageModel Home = common.findElement(listofElements,"Home");
}
