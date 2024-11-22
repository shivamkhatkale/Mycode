package com.ubi.testbase;

import java.util.HashMap;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.runner.RunWith;
import org.openqa.selenium.WebDriver;

import com.ubi.base.ORPageModel;
import com.ubi.base.ObjectIntialization;
import com.ubi.pageObject.MFAPage;

import io.restassured.RestAssured;
import io.restassured.config.SSLConfig;
import net.bytebuddy.asm.Advice.Return;
import net.serenitybdd.annotations.Managed;
import net.serenitybdd.core.pages.PageObject;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.openqa.selenium.WebDriver;
import net.serenitybdd.junit.runners.*;

@RunWith(SerenityRunner.class)
public class TestBase  {

	@Managed(driver="appium")
	WebDriver appium;
	

    public static String baseUrlBrowser = "";
    public static String browser = "";
    public  static String  _setEnvPath = "";
    public  static String _loginURL = "";
    public  static HashMap<String, List<ORPageModel>>_ORIntializater = new HashMap<String, List<ORPageModel>>() ;
    public static String _baseDir = "";

	@BeforeClass	
	public static void init(){
        RestAssured.config = RestAssured.config().sslConfig(new SSLConfig().relaxedHTTPSValidation());
		//baseUrlBrowser = AppConfig.getBaseUrl();
		//browser = AppConfig.getBrowser();
		_baseDir = System.getProperty("user.dir").toString(); 
		_setEnvPath = AppConfig.getEnvironment();
		_loginURL = AppConfig.getRestUrl(_setEnvPath) + "mga/sps/apiauthsvc/policy/mblogin";
		_ORIntializater  = ObjectIntialization.intializeOR(_baseDir);
		
		try {
			System.out.println("Base URL: " + baseUrlBrowser);
			System.out.println("Browser: " + browser);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@AfterClass
    public static void deleteFolderAfterSuite() {
        String folderPath = "src\\test\\resources\\responseFolder";
        File folder = new File(folderPath);

        if (folder.exists()) {
            deleteDirectory(folder);
            System.out.println("Folder deleted successfully.");
        } else {
            System.out.println("Folder does not exist.");
        }
    }

    private static void deleteDirectory(File directoryToBeDeleted) {
        File[] allContents = directoryToBeDeleted.listFiles();
        if (allContents != null) {
            for (File file : allContents) {
                deleteDirectory(file);
            }
        }
        directoryToBeDeleted.delete();
    }
	
}


