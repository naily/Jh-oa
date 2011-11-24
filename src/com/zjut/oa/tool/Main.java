package com.zjut.oa.tool;

public class Main {

	public static void main(String[] args) {
		String s="";
		for(int i=1;i<=77;i++){
			if(i==77)
				s+="${countState_"+i+"}";
			else
				s+="${countState_"+i+"},";
				
		}
		System.out.println(s);
	}

}
