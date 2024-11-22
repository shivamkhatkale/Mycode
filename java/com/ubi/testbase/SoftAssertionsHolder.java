package com.ubi.testbase;
import org.assertj.core.api.SoftAssertions;


public class SoftAssertionsHolder {
	
	private static final ThreadLocal<SoftAssertions> softAssertions = ThreadLocal.withInitial(SoftAssertions::new);

    public static SoftAssertions getSoftAssertions() {
        return softAssertions.get();
    }

    public static void assertAll() {
        softAssertions.get().assertAll();
    }

    public static void reset() {
        softAssertions.remove();
    }


}
