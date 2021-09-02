package com.bldbank.config;

import java.util.Random;
import java.util.SplittableRandom;
import java.security.SecureRandom;


public class GenerateOTP {
	//Appr1
	public static void genotp1(){
		int otpnum=(int)(Math.random()*9000)+1000;
		System.out.println("Generated num1: "+otpnum);
	}
	//Appr2
	public static void genotp2(int lengthOfOTP){
		
		char otpvalue[]=new char[lengthOfOTP];
		String allDigits="0123456789";
		
		Random obj=new Random();
		for(int i=0;i<lengthOfOTP;i++){
			int randomno=obj.nextInt(allDigits.length());
			otpvalue[i]=allDigits.charAt(randomno);
		}
		
		
		System.out.println("Generated num2: "+new String(otpvalue));
	}
	
	//Appr3
	public static void genotp3(int lengthOfOTP){
		
		StringBuilder otpvalue=new StringBuilder();
		SplittableRandom s=new SplittableRandom();
		
		
		for (int i=0;i<lengthOfOTP;i++){
			//s.nextInt(0,9);
			int num3=s.nextInt(0, 9);
			otpvalue.append(num3);
		}
		System.out.println("Generated num3: "+otpvalue.toString());
	}
	
	
	//Appr4
	public static void genotp4(int lengthOfOTP){
		StringBuilder otpvalue=new StringBuilder();
		SecureRandom s=new SecureRandom();
		
		for (int i=0;i<lengthOfOTP;i++){
			//de4ed
			int num4=s.nextInt(9);
			otpvalue.append(num4);
		}
		
		
		System.out.println("Generated num4: "+otpvalue.toString());
		
	}
	
	public static void main(String[] args) {
		
		genotp1();
		genotp2(4);
		genotp3(4);
		genotp4(4);
	}

}