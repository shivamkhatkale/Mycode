package com.ubi.testbase;

import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.util.Base64;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.lang3.StringUtils;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import net.serenitybdd.core.Serenity;
import net.serenitybdd.rest.SerenityRest;

public class EncryptionUtil {

	private static final Charset UTF_8 = StandardCharsets.UTF_8;
	private static final String CIPHER_ALGORITHM = "AES/GCM/NoPadding";
	private static final String FACTORY_INSTANCE = "PBKDF2WithHmacSHA512"; // Password-based-Key-Derivative-Function +
																			// Keyed-Hash Message Authentication Code
	private static final int TAG_LENGTH = 16;
	private static final int IV_LENGTH = 12;
	private static final int SALT_LENGTH = 16;
	private static final int KEY_LENGTH = 32;
	private static final int ITERATIONS = 1000;
	public static String bearerToken = "";
	
	//static String stringxapikey = "44ZzmotizvR7jKl74Z1yzkEjVxkLSQbj";

	private static SecretKey getAESKeyFromPassword(char[] password, byte[] salt)
			throws NoSuchAlgorithmException, InvalidKeySpecException {
		SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA512");
		KeySpec spec = new PBEKeySpec(password, salt, ITERATIONS, KEY_LENGTH * 8);
		return new SecretKeySpec(factory.generateSecret(spec).getEncoded(), "AES");
	}

	public static String decrypt(String cipherContent, String masterKey) throws Exception {
		try {
			byte[] decode = Base64.getDecoder().decode(cipherContent.getBytes(UTF_8));
			ByteBuffer byteBuffer = ByteBuffer.wrap(decode);
			byte[] salt = new byte[SALT_LENGTH];
			byteBuffer.get(salt);
			byte[] iv = new byte[IV_LENGTH];
			byteBuffer.get(iv);
			return decryptData(masterKey, byteBuffer, salt, iv);
		} catch (Exception e) {
			throw new Exception(e);
		}
	}

	private static String decryptData(String masterKey, ByteBuffer byteBuffer, byte[] salt, byte[] iv)
			throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeySpecException, InvalidKeyException,
			InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException {
		byte[] content = new byte[byteBuffer.remaining()];
		byteBuffer.get(content);
		Cipher cipher = Cipher.getInstance(CIPHER_ALGORITHM);
		SecretKey aesKeyFromPassword = getAESKeyFromPassword(masterKey.toCharArray(), salt);
		cipher.init(Cipher.DECRYPT_MODE, aesKeyFromPassword, new GCMParameterSpec(TAG_LENGTH * 8, iv));
		byte[] plainText = cipher.doFinal(content);
		return new String(plainText, UTF_8);
	}

	public static String encrypt(String plainMessage, String masterKey) {
		try {
			byte[] salt = getRandomNonce(SALT_LENGTH);

			SecretKey secretKey = getSecretKey(masterKey, salt);
			byte[] iv = getRandomNonce(IV_LENGTH);
			return encryptData(plainMessage, salt, secretKey, iv);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}

	private static String encryptData(String plainMessage, byte[] salt, SecretKey secretKey, byte[] iv)
			throws InvalidKeyException, InvalidAlgorithmParameterException, NoSuchPaddingException,
			NoSuchAlgorithmException, IllegalBlockSizeException, BadPaddingException {
		Cipher cipher = initCipher(Cipher.ENCRYPT_MODE, secretKey, iv);
		byte[] encryptedMessageByte = cipher.doFinal(plainMessage.getBytes(UTF_8));

		byte[] cipherByte = ByteBuffer.allocate(salt.length + iv.length + encryptedMessageByte.length).put(salt).put(iv)
				.put(encryptedMessageByte).array();
		return Base64.getEncoder().encodeToString(cipherByte);
	}

	public static byte[] getRandomNonce(int length) {
		byte[] nonce = new byte[length];
		new SecureRandom().nextBytes(nonce);
		return nonce;
	}

	public static SecretKey getSecretKey(String password, byte[] salt)
			throws NoSuchAlgorithmException, InvalidKeySpecException {
		KeySpec spec = new PBEKeySpec(password.toCharArray(), salt, ITERATIONS, KEY_LENGTH * 8);

		SecretKeyFactory factory = SecretKeyFactory.getInstance(FACTORY_INSTANCE);
		return new SecretKeySpec(factory.generateSecret(spec).getEncoded(), "AES");
	}

	private static Cipher initCipher(int mode, SecretKey secretKey, byte[] iv) throws InvalidKeyException,
			InvalidAlgorithmParameterException, NoSuchPaddingException, NoSuchAlgorithmException {
		Cipher cipher = Cipher.getInstance(CIPHER_ALGORITHM);
		cipher.init(mode, secretKey, new GCMParameterSpec(TAG_LENGTH * 8, iv));
		return cipher;
	}

	public static String settingBearerToken(String Path) throws Exception {
		ObjectMapper objectMapper = new ObjectMapper();

		String filePath;
		//String MBLoginURL = "https://rmb.unionbankofindia.co.in/sit/dbp/mb/mpgw/mga/sps/apiauthsvc/policy/mblogin";
		String MBLoginURL = AppConfig.getRestUrl(TestBase._setEnvPath)+"mga/sps/apiauthsvc/policy/mblogin";
		if ("Drop2/FundTransfer".equalsIgnoreCase(Path)) {
			filePath = "src\\test\\resources\\testdata\\api\\response\\expected\\mvp\\login\\fundtransfer.json";
		} else if ("Drop2/ASBA".equalsIgnoreCase(Path)) {
			filePath = "src\\test\\resources\\testdata\\api\\response\\expected\\mvp\\login\\BusinessService.json";
		} else if ("Drop2/ChequeService".equalsIgnoreCase(Path)) {
			filePath = "src\\test\\resources\\testdata\\api\\response\\expected\\mvp\\login\\ChequeService.json";
		} else if ("Drop2/bbps".equalsIgnoreCase(Path)) {
			filePath = "src\\test\\resources\\testdata\\api\\response\\expected\\mvp\\login\\BBPS.json";
		} else if ("Drop2/CreditCard".equalsIgnoreCase(Path)) {
			filePath = "src\\test\\resources\\testdata\\api\\response\\expected\\mvp\\login\\CreditCard.json";
		} else if ("Drop2/DebitCard".equalsIgnoreCase(Path)) {
			filePath = "src\\test\\resources\\testdata\\api\\response\\expected\\mvp\\login\\debitcard.json";
		} else if ("drop2/GeneralService".equalsIgnoreCase(Path)) {
			filePath = "src\\test\\resources\\testdata\\api\\response\\expected\\mvp\\login\\BusinessService.json";
		} else if ("drop2/GovtScheme".equalsIgnoreCase(Path)) {
			filePath = "src\\test\\resources\\testdata\\api\\response\\expected\\mvp\\login\\GovtScheme.json";
		} else if ("Drop2/UPI".equalsIgnoreCase(Path)) {
			filePath = "src\\test\\resources\\testdata\\api\\response\\expected\\mvp\\login\\upi.json";
		} else if ("Drop2/NCMC".equalsIgnoreCase(Path)) {
			filePath = "src\\test\\resources\\testdata\\api\\response\\expected\\mvp\\login\\NCMC.json";
		 //Drop1
		} else if ("mvp/fdrd".equalsIgnoreCase(Path)) {
		filePath = "src\\test\\resources\\testdata\\api\\response\\expected\\mvp\\login\\mblogin.json";
		} else if ("mvp/nps".equalsIgnoreCase(Path)) {
		filePath = "src\\test\\resources\\testdata\\api\\response\\expected\\mvp\\login\\mbloginnps.json";
		} else if ("mvp/ssa".equalsIgnoreCase(Path)) {
		filePath = "src\\test\\resources\\testdata\\api\\response\\expected\\mvp\\login\\mbloginssa.json";
		} else if ("mvp/ppf".equalsIgnoreCase(Path)) {
		filePath = "src\\test\\resources\\testdata\\api\\response\\expected\\mvp\\login\\mbloginppf.json";
		} else {
		filePath = "src\\test\\resources\\testdata\\api\\response\\expected\\mvp\\login\\mblogin.json";
		}
			
		String environment=AppConfig.getRestUrl(TestBase._setEnvPath);
		
		if (StringUtils.containsIgnoreCase(environment, "sit"))
		{
			
		try {
			
			Path configFilePath = Paths.get(TestBase._baseDir, filePath);
			String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
			System.out.println("Request Body: " + jsonString);

			System.out.println("id: " + AppConfig.getdbpId().toString().trim());
			System.out.println("secret: " + AppConfig.getdbpSecret());
			String stringdbpID = formatStringforHeaders(AppConfig.getdbpId().trim());
			String stringdbpSecret = formatStringforHeaders(AppConfig.getdbpSecret().trim());

			
			Response response = SerenityRest.given().header("Content-Type", "application/json")
					.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)// Add any other headers as
					.when().body(jsonString).post(MBLoginURL);

			if (response.statusCode() == 200) {
				ObjectMapper objectMapperBearer = new ObjectMapper();
				String responseBody = response.then().extract().body().asString();
				JsonNode jsonNode = objectMapperBearer.readTree(responseBody);
				JsonNode tokenNode = jsonNode.path("response").path("access_token");

				bearerToken = tokenNode.asText();
				System.out.println("Bearer Token: " + bearerToken);

			} else {
				System.out.println("Failed to retrieve the token. HTTP error code: " + response.statusCode());
			}

			String responseBody = response.then().extract().body().asString();
			Serenity.setSessionVariable("response").to(response);

			// System.out.println("Response Body: " + responseBody);
		} 
		
		
		catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}		
		else
		{

			try {
				String xapikeyReqHeader="RvkjaDkgJoxNzngOddAwd5XEWpYkDKDxz6X/3mgIon0ataS2uIFsWHK9GZSRfWTfGil28jkCe/xvV0PBV7JMrATCpzFMYNdRbcc2Iz7nquh7aTj72i+qoetiBIN0OZSfOcdnvWqKYnop/IWPHtRR2ryXUgOgEHZ8dC0gQQWRV0s="; 	
				String xapikey="zLiJyowJ3SV6LBMlcwz5pYN6pnfLEXZl";
				 				
				
				
				Path configFilePath = Paths.get(TestBase._baseDir, filePath);
				String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
				System.out.println("Request Body: " + jsonString);
				
				 // Encrypt the request body
			      String encryptedRequestBodywithoutdata = EncryptionUtil.encrypt(jsonString, xapikey);
			      String encryptedRequestBody = "{\"data\":\""+encryptedRequestBodywithoutdata+"\"}";
			       System.out.println("Encrypted Request Body: " + encryptedRequestBody);
			    // Log the encrypted request in Serenity report 
			       Serenity.recordReportData() .withTitle("Decrypted Request Body") .andContents(jsonString);

				System.out.println("id: " + AppConfig.getdbpId().toString().trim());
				System.out.println("secret: " + AppConfig.getdbpSecret());
				String stringdbpID = formatStringforHeaders(AppConfig.getdbpId().trim());
				String stringdbpSecret = formatStringforHeaders(AppConfig.getdbpSecret().trim());

				Response response = SerenityRest.given()
			             .header("Content-Type", "application/json")
			             .header("dbp-id", stringdbpID)
			             .header("dbp-secret", stringdbpSecret)
			             .header("x-api-key", xapikeyReqHeader)
			             .body(encryptedRequestBody)
			             .post(MBLoginURL);
				
				 String responseBody = response.then().extract().body().asString();
					Serenity.setSessionVariable("response").to(response);

					System.out.println("Response Body : " + responseBody);
					
			       objectMapper = new ObjectMapper();
		           
		           // Parse JSON string to JsonNode
		           JsonNode rootNode = objectMapper.readTree(responseBody);
		           
		           // Extract the value of the "data" field
		           String dataValue = rootNode.path("data").asText();
		           
		           // Print the extracted value
		           System.out.println("Modified response: " + dataValue);

			       // Decrypt the response body
			       String decryptedResponseBody;
			      
			          decryptedResponseBody = EncryptionUtil.decrypt(dataValue, xapikey);
			          
			          
			       // Log the decrypted response in Serenity report
			          Serenity.recordReportData()
			                 .withTitle("Decrypted Response")
			                 .andContents(decryptedResponseBody);
			          
			     
				

				if (response.statusCode() == 200) {
					ObjectMapper objectMapperBearer = new ObjectMapper();
				//	String responseBody = response.then().extract().body().asString();
					JsonNode jsonNode = objectMapperBearer.readTree(decryptedResponseBody);
					JsonNode tokenNode = jsonNode.path("response").path("access_token");

					bearerToken = tokenNode.asText();
					System.out.println("Bearer Token: " + bearerToken);

				} else {
					System.out.println("Failed to retrieve the token. HTTP error code: " + response.statusCode());
				}

				System.out.println("Decrypted Response Body: " + decryptedResponseBody);
		          Serenity.setSessionVariable("decryptedResponseBody").to(decryptedResponseBody);
				//String responseBody = response.then().extract().body().asString();
				//Serenity.setSessionVariable("response").to(response);

				// System.out.println("Response Body: " + responseBody);
			} 
			
			
			catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return bearerToken;
		
		

	}
	
	  

	public static String formatStringforHeaders(String formatString) {
		if (formatString.length() > 1) {
			// Remove the first and last characters
			formatString = formatString.substring(1, formatString.length() - 1);
		} else {
			// Handle the case where the string is too short
			formatString = ""; // Or handle according to your needs
		}
		return formatString;
	}
	
	
    public static boolean isResponseEncrypted(String responseBody) {
        try {
        	ObjectMapper objectMapper = new ObjectMapper();
            // Parse the JSON response
            JsonNode rootNode = objectMapper.readTree(responseBody);
            // Check if "data" field exists and is not empty
            JsonNode dataNode = rootNode.path("data");
            if (dataNode.isMissingNode() || dataNode.asText().isEmpty()) {
                System.out.println("No 'data' field found or it is empty.");
                return false;
            }

            // Attempt to decode the "data" field as Base64
            String dataField = dataNode.asText();
            byte[] decodedBytes = Base64.getDecoder().decode(dataField);
            String decodedString = new String(decodedBytes, StandardCharsets.UTF_8);

            // Check if the decoded string is readable (likely unencrypted)
            return !decodedString.matches(".*[\\p{L}\\p{N}]+.*"); // True if not readable, likely encrypted
        } catch (IllegalArgumentException e) {
            // If decoding as Base64 fails, assume it’s not encrypted
            System.out.println("Failed to decode 'data' as Base64. Assuming it’s not encrypted.");
            return false;
        } catch (Exception e) {
            // Handle any other exceptions (e.g., JSON parsing errors)
            System.out.println("Error parsing JSON or reading 'data' field: " + e.getMessage());
            return false;
        }
    }

	
	
}