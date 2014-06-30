package com.hp.common;

public  class ConvertParameter {
	public static int paramToInt(String str){
		int number = 0;
		try{
			number = Integer.parseInt(str);
		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}
		
		return number;
	}
}
