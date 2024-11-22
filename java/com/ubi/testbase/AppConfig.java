package com.ubi.testbase;

import net.serenitybdd.core.Serenity;
import net.thucydides.model.util.EnvironmentVariables;

public class AppConfig {
    private static EnvironmentVariables environmentVariables = Serenity.environmentVariables();
     
    public static String getBaseUrl() {
        return environmentVariables.getProperty("webdriver.base.url");
    }

    public static String getBrowser() {
        return environmentVariables.getProperty("webdriver.driver");
    }
    
    public static String getRestUrl(String env) {
        return environmentVariables.getProperty("rest.base." + env);
    }
    
    public static String getdbpId() {
        return environmentVariables.getProperty("rest.dbp-id" + environmentVariables.getProperty("environment"));
    }
    
   /* public static String getSITdbpID() {
    	return environmentVariables.getProperty("rest.dbp-idsit" +  environmentVariables.getProperty("environment"));
    }
    
    public static String getSITdbpSecret() {
    	return environmentVariables.getProperty("rest.dbp-secretsit" +  environmentVariables.getProperty("environment"));
    }*/
    
    public static String getdbpSecret() {
        return environmentVariables.getProperty("rest.dbp-secret" + environmentVariables.getProperty("environment") );
    }
    
    public static String getEnvironment() {
        return environmentVariables.getProperty("environment");
    }
    
  //Below app config for Assisted portal
    public static String getRestAssistedUrl(String env) {
    	return environmentVariables.getProperty("rest.base.sit." + env);
    }

    


}
