package com.icinfo.frk.common.utils;

import java.util.HashMap;
import java.util.Map;

import com.icinfo.framework.tools.utils.IDCardUtils;

public class KeyWordsUtil {

	
	public static Map<String,String> toSplit(String str){
		HashMap<String, String> map = new HashMap<String,String>();
		if (null == str || "".equals(str))
			return map;
		if(str.contains("+")){
			int index = str.indexOf("+");
			String name = str.substring(0, index);
			map.put("name", name);
			String cerNo = str.substring(index+1, str.length());
			map.put("cerNo", cerNo);
		}else{
			map.put("key", str);
		}
		return map;
	}
	
	public static void main(String[] args) {
		//String str = "胡建平";
		//String str ="x321023198904143036";
		String str = "胡建平+32102319890414303";
		Map<String, String> split = toSplit(str);
		System.out.println("name=="+split.get("name")+";");
		System.out.println("cerNo=="+split.get("cerNo")+";");
		
		
			
	}
}
