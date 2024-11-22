package com.ubi.testbase;

import java.io.ByteArrayInputStream;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class XMLHandler {

	public static boolean validateXMLFor500(String xmlString) {
		try {
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			Document document = builder.parse(new ByteArrayInputStream(xmlString.getBytes("UTF-8")));

			document.getDocumentElement().normalize();

			Element envelopeElement = (Element) document.getElementsByTagName("env:Envelope").item(0);
			Element bodyElement = (Element) envelopeElement.getElementsByTagName("env:Body").item(0);
			Element faultElement = (Element) bodyElement.getElementsByTagName("env:Fault").item(0);
			Element faultCodeElement = (Element) faultElement.getElementsByTagName("faultcode").item(0);
			Element faultStringElement = (Element) faultElement.getElementsByTagName("faultstring").item(0);

			if (faultCodeElement == null || faultStringElement == null) {
				return false;
			} else {
				String faultStringValue = faultStringElement.getTextContent();
				return "Internal Error".equals(faultStringValue);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
