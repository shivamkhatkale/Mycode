package com.ubi.pageObject;

import java.util.List;

import com.ubi.base.ORPageModel;
import com.ubi.testbase.CommonMethods;
import com.ubi.testbase.TestBase;

public class DepositPage {
	List<ORPageModel> listofElements = TestBase._ORIntializater.get(DepositPage.class.getSimpleName());
	CommonMethods common = new CommonMethods();
	public ORPageModel AddDeposit = common.findElement(listofElements,"AddDeposit"); 
	public ORPageModel FixedDeposit = common.findElement(listofElements,"FixedDeposit"); 

}
