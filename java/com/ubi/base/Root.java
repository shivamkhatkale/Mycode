package com.ubi.base;

import java.util.ArrayList;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Root {
	@JsonProperty("MobilePageElements") 
    public MobilePageElements mobilePageElements;
    @JsonProperty("WebPagElements") 
    public WebPageElements webPagelements;
}

