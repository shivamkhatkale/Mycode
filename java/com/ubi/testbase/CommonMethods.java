package com.ubi.testbase;

import java.time.Duration;
import java.util.List;

import org.mockito.internal.matchers.Find;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.ubi.base.ORPageModel;

import io.appium.java_client.AppiumBy;
import io.appium.java_client.android.AndroidDriver;
import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.core.pages.WebElementFacade;
import net.thucydides.core.webdriver.WebDriverFacade;


public class CommonMethods extends PageObject{
	
	public  ORPageModel getElementFromObject(List<ORPageModel> listofElements, String name)
	{
		ORPageModel element = new ORPageModel(); 
		WebElement elementObject = null;
		for (ORPageModel item : listofElements) {
            if (item.getName().equals(name)) 
            {  element = item; 
            	break; // Exit loop once found
                //elementObject = findElement(element.locator, element.value);
            }    
            }
		return element;

		}
	
	public ORPageModel findElement(List<ORPageModel> listofElements, String name)
	{
		return getElementFromObject(listofElements,name);
	}
	
	public  WebElement findElement(ORPageModel element)
	{
		WebElement elementObject = null;
		switch(element.locator) {
		  case "id":
			  elementObject =  find(By.id(element.value));
			  break;
		  case "xpath":
			  elementObject =  find(By.xpath(element.value));
			  break;
			    }
        return elementObject; 
		    // code block
		}	
	
	public void findElement(WebElement element) {
	  WebDriverWait wait = new WebDriverWait(getDriver(), Duration.ofSeconds(10));
	  wait.until(ExpectedConditions.visibilityOf(element));
	}
	
	public void clickObject(ORPageModel element)
	{
		  //element.isEnabled();
		 findElement(element).click();
		
		  //element.click(); 
	}
	public void enterText(ORPageModel element, String text)
	{
		  //element.isEnabled();
		 findElement(element).sendKeys(text);

		  //element.click(); 
	}
	public void waitTillElementDisplayed(ORPageModel element) {
		// element.isEnabled();
		AndroidDriver androidDriver = ((AndroidDriver) ((WebDriverFacade) getDriver()).getProxiedDriver());
		WebDriverWait wait = new WebDriverWait(androidDriver, Duration.ofSeconds(60));
		wait.until(ExpectedConditions.visibilityOf(findElement(element)));
		// element.click();
	}
	
	public void scrollDown(String elementText) {
		AndroidDriver androidDriver = ((AndroidDriver) ((WebDriverFacade) getDriver()).getProxiedDriver());
		boolean elementFound = false;
		do {
			try {
				// Try to find the element
				WebElement element = androidDriver
						.findElement(AppiumBy.androidUIAutomator("new UiSelector().text(\"" + elementText + "\")"));
				element.isDisplayed();
				elementFound = true; // Element found and clicked
			} catch (NoSuchElementException e) {
				// If element is not found, scroll down
				androidDriver.findElement(AppiumBy
						.androidUIAutomator("new UiScrollable(new UiSelector().scrollable(true)).scrollForward();"));
			}
		} while (!elementFound);
	}
	public void scrollUp(String elementText) {
		AndroidDriver androidDriver = ((AndroidDriver) ((WebDriverFacade) getDriver()).getProxiedDriver());
		boolean elementFound = false;
		do {
			try {
				// Try to find the element
				WebElement element = androidDriver
						.findElement(AppiumBy.androidUIAutomator("new UiSelector().text(\"" + elementText + "\")"));
				element.isDisplayed();
				elementFound = true; // Element found and clicked
			} catch (NoSuchElementException e) {
				// If element is not found, scroll down
				androidDriver.findElement(AppiumBy
						.androidUIAutomator("new UiScrollable(new UiSelector().scrollable(true)).scrollBackward();"));
			}
		} while (!elementFound);
	}
}
