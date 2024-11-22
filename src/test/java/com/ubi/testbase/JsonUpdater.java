package com.ubi.testbase;

import com.google.gson.*;

import java.io.FileReader;
import java.io.IOException;

public class JsonUpdater {

	/*
	 * public static void main(String[] args) { String filePath =
	 * "path/to/your/json/file.json"; String attributeName = "cif"; String
	 * attributeValue = "new_value";
	 * 
	 * try { String updatedJson = updateJsonAttribute(filePath, attributeName,
	 * attributeValue); System.out.println(updatedJson); } catch (IOException e) {
	 * e.printStackTrace(); } }
	 */
    public static String updateJsonAttribute(String filePath, String attributeName, String attributeValue) throws IOException {
        try (FileReader reader = new FileReader(filePath)) {
            JsonElement jsonElement = JsonParser.parseReader(reader);
            System.out.println("jsonObject before update: " + jsonElement);
            attributeName = attributeName.trim();
            attributeValue=attributeValue.trim();
            System.out.println("attributeName: " + attributeName);

            boolean updated = updateJsonElement(jsonElement, attributeName, attributeValue);

            if (updated) {
                System.out.println("jsonObject after update: " + jsonElement);
                return jsonElement.toString();
            } else {
                return "Attribute not found in the JSON file.";
            }
        } catch (JsonSyntaxException | IOException e) {
            return "Error reading or parsing JSON file: " + e.getMessage();
        }
    }

    private static boolean updateJsonElement(JsonElement jsonElement, String attributeName, String attributeValue) {
        if (jsonElement.isJsonObject()) {
            JsonObject jsonObject = jsonElement.getAsJsonObject();
            if (jsonObject.has(attributeName)) {
                jsonObject.remove(attributeName); // Remove the old attribute
                jsonObject.addProperty(attributeName, attributeValue); // Add the new attribute
                return true;
            } else {
                for (String key : jsonObject.keySet()) {
                    if (updateJsonElement(jsonObject.get(key), attributeName, attributeValue)) {
                        return true;
                    }
                }
            }
        } else if (jsonElement.isJsonArray()) {
            JsonArray jsonArray = jsonElement.getAsJsonArray();
            for (JsonElement element : jsonArray) {
                if (updateJsonElement(element, attributeName, attributeValue)) {
                    return true;
                }
            }
        }
        return false;
    }
    public static String removeJsonAttribute(String filePath, String attributeNames) throws IOException {
        try (FileReader reader = new FileReader(filePath)) {
            JsonElement jsonElement = JsonParser.parseReader(reader);
            System.out.println("jsonObject before update: " + jsonElement);

            // Split the attributeNames by "_&_"
            String[] attributes = attributeNames.split("_&_");

            // Iterate over each attribute and remove it from the JSON object
            for (String attributeName : attributes) {
                attributeName = attributeName.trim();
                System.out.println("Removing attribute: " + attributeName);
                removeJsonElement(jsonElement, attributeName);
            }

            System.out.println("jsonObject after update: " + jsonElement);
            return jsonElement.toString();

        } catch (JsonSyntaxException | IOException e) {
            return "Error reading or parsing JSON file: " + e.getMessage();
        }
    }

    private static boolean removeJsonElement(JsonElement jsonElement, String attributeName) {
        if (jsonElement.isJsonObject()) {
            JsonObject jsonObject = jsonElement.getAsJsonObject();
            if (jsonObject.has(attributeName)) {
                jsonObject.remove(attributeName); // Remove the attribute
                return true;
            } else {
                for (String key : jsonObject.keySet()) {
                    if (removeJsonElement(jsonObject.get(key), attributeName)) {
                        return true;
                    }
                }
            }
        } else if (jsonElement.isJsonArray()) {
            JsonArray jsonArray = jsonElement.getAsJsonArray();
            for (JsonElement element : jsonArray) {
                if (removeJsonElement(element, attributeName)) {
                    return true;
                }
            }
        }
        return false;
    }
}
