package com.ubi.base;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class ORPage {
	
	public String pageName;
	public List<ORPageModel> pageModel;
	
    public String getPageName() {
        return pageName;
    }

    public List<ORPageModel> getORPageModel() {
        return pageModel;
    }
}


