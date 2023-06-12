package com.Servlet;
import org.w3c.dom.*;
import org.xml.sax.SAXException;

import javax.xml.parsers.*;
import java.util.*;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;

public class XML_parsing {
	String URL;
	String item;
	String[] elements;
	

	public XML_parsing(String URL,String item,String[] elements){
		this.URL = URL;
		this.item = item;
		this.elements = elements;
		
	}
	public String Day_Result(Boolean op) {
	    DecimalFormat df = new DecimalFormat("00");
	    Calendar currentCalendar = Calendar.getInstance();
	    currentCalendar.add(currentCalendar.DATE, op?-1:-7);
	    String strYear7   = Integer.toString(currentCalendar.get(Calendar.YEAR));
	    String strMonth7  = df.format(currentCalendar.get(Calendar.MONTH) + 1);
	    String strDay7   = df.format(currentCalendar.get(Calendar.DATE));
	    String strDate7 = strYear7 + strMonth7 + strDay7;
		return strDate7 ;
	}
	public List<Map> XML_p(boolean week_day) throws Exception{
		List<Map> pubList = new ArrayList();
		String URL_1 = URL+Day_Result(week_day);
   		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
   		DocumentBuilder builder = factory.newDocumentBuilder();
   		Document document = builder.parse(URL_1);
   		NodeList items = document.getElementsByTagName(item);
   		
   		
   		for(int i=0; i < items.getLength(); i++) {
   			Node n = items.item(i);
   			
   			Element e = (Element) n;
   			
   			Map<String, String> pub = new HashMap();
   			
   			
   			for(String element : elements) {
   				NodeList titleList = e.getElementsByTagName(element);
   				Element titleElement = (Element)titleList.item(0);
   				Node titleNode = titleElement.getChildNodes().item(0);
   				pub.put(element, titleNode.getNodeValue());
   			}
   			
   			pubList.add(pub);
   		}
   		return pubList;
	}
	
	
	
		
}
