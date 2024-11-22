package com.ubi.base;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

public class ObjectIntialization {
	
	public static final String OR_BasePath = "\\src\\main\\java\\com\\ubi\\objectRepository\\objectRepository.json";
	private static final Logger LOGGER = LoggerFactory.getLogger(ObjectIntialization.class);

    public  static HashMap<String, List<ORPageModel>> intializeOR(String filePath) {
    	Map<String, List<ORPageModel>> resultMap = new HashMap<String, List<ORPageModel>>();
    	try {
            ObjectMapper objectMapper = new ObjectMapper();


            Path configFilePath = Paths.get(filePath, OR_BasePath);
            String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
           // Map<String, Object> hashMap = objectMapper.readValue(jsonString, HashMap.class);
            Map<String, Object> map = objectMapper.readValue(jsonString, new TypeReference<>() {});
            //ORPage map1 = objectMapper.readValue(jsonString, ORPage.class);

            
            for(String item : map.keySet()) {
            	Object listofLocators = map.get(item);
                ObjectMapper objectMapper1 = new ObjectMapper();
                String respData = objectMapper.writeValueAsString(map.get(item));
                List<ORPageModel> itemList = objectMapper1.readValue(respData, new TypeReference<List<ORPageModel>>() {});

              
                //Root map2 = objectMapper1.readValue(jsonString, Root.class);
            	String[] listOfItems = listofLocators.toString().split("}"); 


            	ORPageModel singleElement = new ORPageModel();
            	//listofLocators.
            	
                //myPOJO.setField1((String) linkedHashMap.get("field1"));

                List<ORPageModel> elements = (List<ORPageModel>) map.get(item);
                //List<ORPageModel> fruits = objectMapper1.readValue(map.get(item), new TypeReference<List<ORPageModel>>(){});
                resultMap.put(item,itemList);
            	}


             //resultMap = objectMapper.readValue(jsonString, new TypeReference<HashMap<String, ORPageModel>>() {
            
    	
        }
    	catch (JSONException | IOException e) {
    	{
            LOGGER.error("OR is not in correct format", e);

    	}
    }
    return  (HashMap<String, List<ORPageModel>>) resultMap;

    }
}

