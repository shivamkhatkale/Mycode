package com.ubi.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.ubi.testbase.JSONComparator;

import net.serenitybdd.annotations.Step;
import net.serenitybdd.core.Serenity;

public class LoggerSerenity {

    private static final Logger LOGGER = LoggerFactory.getLogger(JSONComparator.class);
    
    @Step
    public static void logInfo(String message) {
        LOGGER.info(message);
        Serenity.recordReportData().withTitle("Info Log").andContents(message);

}
}