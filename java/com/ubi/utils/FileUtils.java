package com.ubi.utils;

import java.io.File;

public class FileUtils {
	
	public static File readFile(String filePath) {
        System.out.println(System.getProperty("user.dir") + filePath);
        File jsonFile = new File(System.getProperty("user.dir") +filePath);
        return jsonFile;
	}
	
}
