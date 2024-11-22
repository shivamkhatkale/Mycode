package com.ubi.testbase;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.json.JSONException;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.testng.asserts.SoftAssert;
import com.fasterxml.jackson.core.exc.StreamReadException;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ubi.utils.FileUtils;
import com.ubi.utils.LoggerSerenity;

import io.restassured.response.Response;
import net.serenitybdd.annotations.Step;
import net.serenitybdd.core.Serenity;
import com.fasterxml.jackson.databind.node.ObjectNode;

public class JSONComparator {
	  private static final Logger LOGGER = LoggerFactory.getLogger(JSONComparator.class);
	    //field names that should be ignored.
	  //  private static final String[] FIELDS_TO_IGNORE = {"transRefNumber", "applicationFrmNum","fileData","transactionDate","applicationFormNumber","journeyTaskRequestDate","entity","hint","stateId","location","refresh_token","access_token","lastLoginTime","expires_in","txn","date","referenceNumber","listBanks","timestamp","modifiedDate", "createdDate","fileName","data","traceId","paymentRefNo","ccPaymentRefNo","txnDate","cashLimit","acctBals","amount","paymentTxnId","channelTxnId","paymentTxnDate","errorId","errors","maturityDate"};

	           @Step ("user verifies that json (.*)$")
	           // public  static void compareJsonOutput(String responseBody)
	           public static void compareJsonOutput(String responseBody, String[] fieldsToIgnore,Map<String, String[]> specificValuesToIgnore)throws Exception{


	            try {
	              ObjectMapper objectMapper = new ObjectMapper();

	              Response response = Serenity.sessionVariableCalled("response");

	              String exptectedResult = FileUtils.readFile(responseBody).toString();
	              Path configFilePath = Paths.get(TestBase._baseDir, responseBody);
	              String jsonStringExpected = objectMapper.readTree(new File(configFilePath.toString())).toString();

	             LOGGER.info("The expected JSON: " + jsonStringExpected);
	              String jsonStringActual = response.then().extract().body().asString();
	             LOGGER.info("The actual JSON: " + jsonStringActual);

	             
	         //String jsonStringActual = decryptedResponseBody;

	           
	  	       System.out.println("Response Body encrypted: " + jsonStringActual);
	  	       
	  	    if (EncryptionUtil.isResponseEncrypted(jsonStringActual))
             {
	  	       objectMapper = new ObjectMapper();
	             
	             // Parse JSON string to JsonNode
	             JsonNode rootNode = objectMapper.readTree(jsonStringActual);
	             
	             // Extract the value of the "data" field
	             String dataValue = rootNode.path("data").asText();
	             
	             // Print the extracted value
	             System.out.println("Modified response: " + dataValue);

	             
	             
	  	       // Decrypt the response body
	  	      String decryptedResponseBody;
	  	       
	  	     String xapikey="zLiJyowJ3SV6LBMlcwz5pYN6pnfLEXZl";
	  	      
	  	          decryptedResponseBody = EncryptionUtil.decrypt(dataValue, xapikey);
	  	        decryptedResponseBody=Serenity.sessionVariableCalled("decryptedResponseBody");
	             
	            // String jsonStringActual = response.then().extract().body().asString();
	             
	            
	  	      jsonStringActual = decryptedResponseBody;
	  	        LOGGER.info("The actual JSON: " + decryptedResponseBody);
	             
	             }
	             // JSON string into a Map<String, Object> using the ObjectMapper.
	             Map<String, Object> resultMapExpected = objectMapper.readValue(jsonStringExpected, new TypeReference<HashMap<String, Object>>() {
	             });
	             Map<String, Object> resultMapActual = objectMapper.readValue(jsonStringActual, new TypeReference<HashMap<String, Object>>() {
	             });
	               // JSONObject obj1 = new JSONObject(exptectedResult);
	                //JSONObject obj2 = new JSONObject(actualResult);
	             
	             //old code
	             // Removing specific fields that should be ignored from both maps
	             //removeIgnoredFields(resultMapExpected);
	             //removeIgnoredFields(resultMapArrayActual);
	             
	          // Remove specific fields that should be ignored from both maps
	             removeIgnoredFields(resultMapExpected, fieldsToIgnore,specificValuesToIgnore);
	             removeIgnoredFields(resultMapActual, fieldsToIgnore,specificValuesToIgnore);

	                boolean areEqual = resultMapExpected.equals(resultMapActual);

	             LOGGER.info("Are the two JSON objects equal? " + areEqual);
	                if (!areEqual) {
	                LOGGER.info("Differences:");
	                    findDifferences(resultMapExpected, resultMapActual);
	                }

	               } catch (JSONException | IOException e) {
	             LOGGER.error("Error comparing JSON outputs", e);
	          }
	            /*catch (FileNotFoundException e) {
	                  // TODO Auto-generated catch block
	                  e.printStackTrace();
	               }*/
	        }

	   /* private static void removeIgnoredFields(Map<String, Object> map) {
	       for (String field : FIELDS_TO_IGNORE) {
	          map.remove(field);
	       }
	    }*/
	           //Old code for removeIgnoredFields
	           /*private static void removeIgnoredFields(Map<String, Object> map) {
	        	    Iterator<Map.Entry<String, Object>> iterator = map.entrySet().iterator();
	        	    while (iterator.hasNext()) {
	        	       Map.Entry<String, Object> entry = iterator.next();
	        	       String key = entry.getKey();
	        	       Object value = entry.getValue();
	        	       // Remove the field if it should be ignored
	        	       for (String field : FIELDS_TO_IGNORE) {
	        	          if (key.equals(field)) {
	        	             iterator.remove();
	        	             break;
	        	          }
	        	       }
	        	       // Recursively remove ignored fields from nested maps
	        	       if (value instanceof Map) {
	        	          removeIgnoredFields((Map<String, Object>) value);
	        	       }
	        	       // Recursively remove ignored fields from nested lists
	        	       if (value instanceof Iterable) {
	        	          for (Object item : (Iterable<?>) value) {
	        	             if (item instanceof Map) {
	        	                removeIgnoredFields((Map<String, Object>) item);
	        	             }
	        	          }
	        	       }
	        	    }
	        	}*/
	           
	         /*  private static void removeIgnoredFields(Map<String, Object> map, String[] fieldsToIgnore,Map<String, String[]> specificValuesToIgnore) {
	        	    Iterator<Map.Entry<String, Object>> iterator = map.entrySet().iterator();
	        	    while (iterator.hasNext()) {
	        	       Map.Entry<String, Object> entry = iterator.next();
	        	       String key = entry.getKey();
	        	       Object value = entry.getValue();

	        	       // Remove the field if it should be ignored
	        	       for (String field : fieldsToIgnore) {
	        	          if (key.equals(field)) {
	        	             iterator.remove();
	        	             //break;
	        	             continue;
	        	          }
	        	       }
	        	       
	        	    // Special handling for specific values inside fields
	        	          if (specificValuesToIgnore.containsKey(key)) {
	        	             if (value instanceof String) {
	        	                String stringValue = (String) value;
	        	                // Check if the string is a JSON object
	        	                try {
	        	                   ObjectMapper objectMapper = new ObjectMapper();
	        	                   JsonNode jsonNode = objectMapper.readTree(stringValue);
	        	                   // If it's a JSON object, remove/replace the timestamp
	        	                   if (jsonNode.isObject()) {
	        	                      for (String ignoreValue : specificValuesToIgnore.get(key)) {
	        	                         if (ignoreValue.equals("timestamp") && jsonNode.has("timestamp")) {
	        	                            // Replace the timestamp with an empty string or placeholder
	        	                            ((ObjectNode) jsonNode).put("timestamp", "");
	        	                         }
	        	                         else if (ignoreValue.equals("requestId") && jsonNode.has("requestId")) {
	        	                             // Replace the timestamp with an empty string or placeholder
	        	                             ((ObjectNode) jsonNode).put("requestId", "");
	        	                          }
	        	                         else if (ignoreValue.equals("clr_bal_amt") && jsonNode.has("clr_bal_amt")) {
	        	                             // Replace the timestamp with an empty string or placeholder
	        	                             ((ObjectNode) jsonNode).put("clr_bal_amt", "");
	        	                          }
	        	                         else if (ignoreValue.equals("last_Tran_Date") && jsonNode.has("last_Tran_Date")) {
	        	                             // Replace the timestamp with an empty string or placeholder
	        	                             ((ObjectNode) jsonNode).put("last_Tran_Date", "");
	        	                          }
	        	                         else if (ignoreValue.equals("outstanding_Lien") && jsonNode.has("outstanding_Lien")) {
	        	                             // Replace the timestamp with an empty string or placeholder
	        	                             ((ObjectNode) jsonNode).put("outstanding_Lien", "");
	        	                          }
	        	                      }
	        	                      // Update the map with the modified JSON string
	        	                      map.put(key, jsonNode.toString());
	        	                   }
	        	                } catch (IOException e) {
	        	                   // If the value is not a valid JSON, continue
	        	                   LOGGER.warn("Value for key '" + key + "' is not a valid JSON string.");
	        	                }
	        	             }
	        	          }
	        	       // Recursively remove ignored fields from nested maps
	        	       if (value instanceof Map) {
	        	          removeIgnoredFields((Map<String, Object>) value, fieldsToIgnore,specificValuesToIgnore);
	        	       }
	        	       // Recursively remove ignored fields from nested lists
	        	       if (value instanceof Iterable) {
	        	          for (Object item : (Iterable<?>) value) {
	        	             if (item instanceof Map) {
	        	                removeIgnoredFields((Map<String, Object>) item, fieldsToIgnore,specificValuesToIgnore);
	        	             }
	        	        
	        	          }
	        	       }
	        	    }*/
					private static void removeIgnoredFields(Map<String, Object> map, String[] fieldsToIgnore, Map<String, String[]> specificValuesToIgnore) {
	        	    // Collect keys to remove
	        	    List<String> keysToRemove = new ArrayList<>();

	        	    // Iterate through the map's entries
	        	    for (Map.Entry<String, Object> entry : map.entrySet()) {
	        	       String key = entry.getKey();
	        	       Object value = entry.getValue();

	        	       // Remove the field if it should be ignored
	        	       for (String field : fieldsToIgnore) {
	        	          if (key.equals(field)) {
	        	             keysToRemove.add(key); // Mark for removal
	        	             break; // Exit the loop early since we found a match
	        	          }
	        	       }

	        	       // Special handling for specific values inside fields
	        	       if (specificValuesToIgnore.containsKey(key)) {
	        	          if (value instanceof String) {
	        	             String stringValue = (String) value;
	        	             // Check if the string is a JSON object
	        	             try {
	        	                ObjectMapper objectMapper = new ObjectMapper();
	        	                JsonNode jsonNode = objectMapper.readTree(stringValue);
	        	                // If it's a JSON object, remove/replace specified fields
	        	                       	                      
	        	                      if (jsonNode.isObject()) {
		        	                      for (String ignoreValue : specificValuesToIgnore.get(key)) {
		        	                         if (ignoreValue.equals("timestamp") && jsonNode.has("timestamp")) {
		        	                            // Replace the timestamp with an empty string or placeholder
		        	                            ((ObjectNode) jsonNode).put("timestamp", "");
		        	                         }
		        	                         else if (ignoreValue.equals("requestId") && jsonNode.has("requestId")) {
		        	                             // Replace the timestamp with an empty string or placeholder
		        	                             ((ObjectNode) jsonNode).put("requestId", "");
		        	                          }
		        	                         else if (ignoreValue.equals("clr_bal_amt") && jsonNode.has("clr_bal_amt")) {
		        	                             // Replace the timestamp with an empty string or placeholder
		        	                             ((ObjectNode) jsonNode).put("clr_bal_amt", "");
		        	                          }
		        	                         else if (ignoreValue.equals("last_Tran_Date") && jsonNode.has("last_Tran_Date")) {
		        	                             // Replace the timestamp with an empty string or placeholder
		        	                             ((ObjectNode) jsonNode).put("last_Tran_Date", "");
		        	                          }
		        	                         else if (ignoreValue.equals("outstanding_Lien") && jsonNode.has("outstanding_Lien")) {
		        	                             // Replace the timestamp with an empty string or placeholder
		        	                             ((ObjectNode) jsonNode).put("outstanding_Lien", "");
		        	                          }
	        	                   }
	        	                   // Update the map with the modified JSON string
	        	                   map.put(key, jsonNode.toString());
	        	                }
	        	             } catch (IOException e) {
	        	                // If the value is not a valid JSON, continue
	        	                LOGGER.warn("Value for key '" + key + "' is not a valid JSON string.");
	        	             }
	        	          }
	        	       }

	        	       // Recursively remove ignored fields from nested maps
	        	       if (value instanceof Map) {
	        	          removeIgnoredFields((Map<String, Object>) value, fieldsToIgnore, specificValuesToIgnore);
	        	       }
	        	       // Recursively remove ignored fields from nested lists
	        	       if (value instanceof Iterable) {
	        	          for (Object item : (Iterable<?>) value) {
	        	             if (item instanceof Map) {
	        	                removeIgnoredFields((Map<String, Object>) item, fieldsToIgnore, specificValuesToIgnore);
	        	             }
	        	          }
	        	       }
	        	    }

	        	    // Now remove all keys that were marked for removal
	        	    for (String key : keysToRemove) {
	        	       map.remove(key);
	        	    }
	        	}

	        private static void findDifferences(Map<String, Object> expectedResult, Map<String, Object> actualResult) {
	            for (String key : expectedResult.keySet()) {
	                if (!actualResult.containsKey(key)) {
	                LOGGER.info("Key '" + key + "' is missing in the second JSON object.");
	                } else   {
	                   areEquals(expectedResult,actualResult,key);
	                }
	            }

	            for (String key : actualResult.keySet()) {
	                if (!expectedResult.containsKey(key)) {
	                LOGGER.info("Key '" + key + "' is missing in the first JSON object.");
	                }
	            }
	        }

	        private static  void areEquals(Map<String, Object> expectedResult,  Map<String, Object> actualResult, String key )
	        {

	           Object expectedValue = expectedResult.get(key);
	           Object actualValue = actualResult.get(key);
	            SoftAssert softAssert = new SoftAssert();


	          if (expectedValue != null && actualValue != null) {
	             if (!expectedValue.equals(actualValue)) {
	                LOGGER.info("Values for key '" + key + "' are different: Expected JSON: " + expectedValue + ", Actual JSON: " + actualValue);
	                softAssert.assertEquals(actualValue, expectedValue, "Values for key '" + key + "' are different.");
	             }
	          } else if (expectedValue == null && actualValue != null) {
	             LOGGER.info("Values for key '" + key + "' are different: Expected JSON is null, Actual JSON: " + actualValue);
	             softAssert.assertEquals(actualValue, expectedValue, "Values for key '" + key + "' are different: Expected JSON is null.");
	          } else if (expectedValue != null && actualValue == null) {
	             LOGGER.info("Values for key '" + key + "' are different: Expected JSON: " + expectedValue + ", Actual JSON is null.");
	             softAssert.assertEquals(actualValue, expectedValue, "Values for key '" + key + "' are different: Actual JSON is null.");
	          }

	          softAssert.assertAll();
	          
	          
	       }
	        
	        //below code is for general service
	        
}
	
//    private static final Logger LOGGER = LoggerFactory.getLogger(JSONComparator.class);
// 
//    
//	    	@Step ("user verifies that json (.*)$")
//	        public  static void compareJsonOutput(String responseBody) {
//	    		
//
//	        try {
//		    	ObjectMapper objectMapper = new ObjectMapper();
//
//	    		Response response = Serenity.sessionVariableCalled("response");
//	    		
//	    		String exptectedResult = FileUtils.readFile(responseBody).toString();
//	    		Path configFilePath = Paths.get(TestBase._baseDir, responseBody);
//	    		String jsonStringExpected = objectMapper.readTree(new File(configFilePath.toString())).toString();
//
//	    		System.out.println("The expected json :" + jsonStringExpected );
//	    		String jsonStringActual = response.then().extract().body().asString();
//	    		System.out.println("The actual json :" + jsonStringActual );
//	    		Map<String, Object> resultMapExpected;
//	    	    Map<String, Object> resultMapArrayActual;
//	    		
//	    		//JsonSizeComparison(exptectedResult,actualResult);
//	    	    resultMapExpected = objectMapper.readValue(jsonStringExpected, new TypeReference<HashMap<String, Object>>() {
//	            });
//	    	    resultMapArrayActual = objectMapper.readValue(jsonStringActual, new TypeReference<HashMap<String, Object>>() {
//	            });
//	    		
//	    		JsonNode jsonNode = objectMapper.readTree(new File(configFilePath.toString()));
//	    		resultMapExpected = objectMapper.readValue(jsonStringExpected, new TypeReference<HashMap<String, Object>>() {
//	    	     });
//	    		resultMapArrayActual = objectMapper.readValue(jsonStringActual, new TypeReference<HashMap<String, Object>>() {
//	    	     });
//	    		
//	           // JSONObject obj1 = new JSONObject(exptectedResult);
//	            //JSONObject obj2 = new JSONObject(actualResult);
//
//	            boolean areEqual = resultMapExpected.equals(resultMapArrayActual);
//
//	            System.out.println("Are the two JSON objects equal? " + areEqual);
//	            if (!areEqual) {
//	                System.out.println("Differences:");
//	                findDifferences(resultMapExpected, resultMapArrayActual);
//	            }
//	            
//	           } catch (JSONException e) {
//	            e.printStackTrace();
//	        }
//	        catch (IOException e) {
//	       		// TODO Auto-generated catch block
//	       		e.printStackTrace();
//	       	}
//	        /*catch (FileNotFoundException e) {
//	       		// TODO Auto-generated catch block
//	       		e.printStackTrace();
//	       	}*/
//        }
//	    
//	    private static Map<String, Object> jsonToMap(JsonNode node) {
//	            Map<String, Object> map = new HashMap<>();
//	            Iterator<Map.Entry<String, JsonNode>> fields = node.fields();
//	            while (fields.hasNext()) {
//	                Map.Entry<String, JsonNode> field = fields.next();
//	                map.put(field.getKey(), field.getValue());
//	            }
//	            return map;
//	    }
//	    
//	    private static void findDifferences(Map<String, Object> expectedResult, Map<String, Object> actualResult) {
//	        for (String key : expectedResult.keySet()) {
//	            if (!actualResult.containsKey(key)) {
//	                System.out.println("Key '" + key + "' is missing in the second JSON object.");
//	            } else   {
//	            	areEquals(expectedResult,actualResult,key);
//	            }
//	        }
//
//	        for (String key : actualResult.keySet()) {
//	            if (!expectedResult.containsKey(key)) {
//	                System.out.println("Key '" + key + "' is missing in the first JSON object.");
//	            }
//	        }
//	    }
//	    
//
//	    
//	    private static  void areEquals(Map<String, Object> expectedResult,  Map<String, Object> actualResult, String key )
//	    {
//	    	
//	    	Object expectedValue = expectedResult.get(key);
//	    	Object actualValue = actualResult.get(key);
//	        SoftAssert softAssert = new SoftAssert();
//
//	
//	    	if (expectedResult.get(key) != null && actualResult.get(key) != null )
//	    	{
//	    		System.out.println("Values for key '" + key + "' are different: " +
//                        "Expected JSON: " + expectedResult.get(key) + ", Actual JSON: " + actualResult.get(key));
//	            SoftAssertionsHolder.getSoftAssertions().assertThat(expectedResult.get(key).equals(actualResult.get(key)));
//	            LoggerSerenity.logInfo("Values for key '" + key + "' are different: " +
//                        "Expected JSON: " + expectedResult.get(key) + ", Actual JSON: " + actualResult.get(key));
//	    		Assert.assertEquals("Values for key '" + key + "' are different: " +
//                        "Expected JSON: " + expectedResult.get(key) + ", Actual JSON: " + actualResult.get(key),expectedResult, actualResult);
//	    		/*softAssert.assertEquals(expectedResult.get(key), actualResult.get(key),"Values for key '" + key + "' are different: " +
//                        "Expected JSON: " + expectedResult.get(key) + ", Actual JSON: " + actualResult.get(key));*/
//	    		
//	    	}
//	    	else if (actualValue == null)
//	    	{
//	    		System.out.println("Values for key '" + key + "' are different: " +
//                        "Expected JSON is : " + null + ", Actual JSON: " + actualResult.get(key));
//	            //SoftAssertionsHolder.getSoftAssertions().assertThat(true).isFalse();
//	    		LoggerSerenity.logInfo("Values for key '" + key + "' are different: " +
//                        "Expected JSON is : " + null + ", Actual JSON: " + actualResult.get(key));
//
//	    		/*softAssert.assertEquals(actualResult, null,"Values for key '" + key + "' are different: " +
//                        "Expected JSON is : " + null + ", Actual JSON: " + expectedResult.get(key));*/
//	    		
//	    	}
//	    	else if (expectedValue == null)
//	    	{
//	    		System.out.println("Values for key '" + key + "' are different: " +
//                        "Expected JSON is : " + null + ", Actual JSON: " + actualResult.get(key));
//	    		
//	    		LoggerSerenity.logInfo("Values for key '" + key + "' are different: " +
//	                        "Expected JSON is : " + null + ", Actual JSON: " + actualResult.get(key));
//	            //SoftAssertionsHolder.getSoftAssertions().assertThat(true).isFalse();
//	    		/*softAssert.assertEquals( null, actualResult.get(key),"Values for key '" + key + "' are different: " +
//                        "Expected JSON is : " + null + ", Actual JSON: " + actualResult.get(key));*/
//	    		
//	    	}
//            SoftAssertionsHolder.assertAll();
//	    }
//


