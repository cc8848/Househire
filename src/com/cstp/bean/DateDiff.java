package com.cstp.bean;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateDiff {
//	public static String getDate() {
//		SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd");
//	    Date dd = new Date();
//	    return ft.format(dd);
//	}
	  
//	public long getTime(int day){
//		return day * 24 * 60 * 60 * 1000;
//	}
	
	public String getPostTime(String str){
		long day;
		long diff;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String currdate = sdf.format(Calendar.getInstance().getTime());
		if(str == "0"){
			return "";
		}else if(str == "1"){
			day = 0;
			return currdate;
		}else if(str == "2"){
			day = 1;
			try {
				diff = sdf.parse(currdate).getTime() - day * 24 * 60 * 60 * 1000;
				Date dnow = new Date(diff);
				return sdf.format(dnow);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}else if(str == "3"){
			day = 2;
			try {
				diff = sdf.parse(currdate).getTime() - day * 24 * 60 * 60 * 1000;
				Date dnow = new Date(diff);
				return sdf.format(dnow);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}else if(str == "4"){
			day = 6;
			try {
				diff = sdf.parse(currdate).getTime() - day * 24 * 60 * 60 * 1000;
				Date dnow = new Date(diff);
				return sdf.format(dnow);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}else if(str == "5"){
			day = 13;
			try {
				diff = sdf.parse(currdate).getTime() - day * 24 * 60 * 60 * 1000;
				Date dnow = new Date(diff);
				return sdf.format(dnow);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}else if(str == "6"){
			day = 30;
			try {
				int month = sdf.parse(currdate).getMonth();
				int year = sdf.parse(currdate).getYear();
				switch(month+1){
				case 1:
				case 3:
				case 5:
				case 7:
				case 8:
				case 10:
				case 12: day = 30;break;
				case 2: 
					if(year%400 == 0 || (year % 4 == 0 && year % 100 != 0)){
						day = 28;
					}else{
						day = 27;
					}
					break;
				case 4:
				case 6:
				case 9:
				case 11:day = 29;break;
				}
			} catch (ParseException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			try {
//				System.out.println(sdf.parse(currdate).getMonth());
//				System.out.println(sdf.parse(currdate).getTime());
//				System.out.println(day * 24 * 60 * 60 * 1000);
				diff = sdf.parse(currdate).getTime() - day * 24 * 60 * 60 * 1000;
				Date dnow = new Date(diff);
				return sdf.format(dnow);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		return "";
	}
	
//	public static void main(String args[]){
//		String s1 = "0";
//		String r1 = getPostTime(s1);
//		System.out.println(getPostTime("0"));
//		System.out.println(getPostTime("1"));
//		System.out.println(getPostTime("2"));
//		System.out.println(getPostTime("3"));
//		System.out.println(getPostTime("4"));
//		System.out.println(getPostTime("5"));
//		System.out.println(getPostTime("6"));
//	}
}
