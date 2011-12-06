package com.zjut.oa.tool;

import java.util.Random;

public class PswTool {

	private static final String SEQUENCE = "abcdefghijklmnopqrstuvwxyz0123456789";
	private static final int LENGTH = SEQUENCE.length();

	/**
	 * 随机生成6位密码（小写英文字母或数字）
	 */
	public static String randomPsw() {
		StringBuilder psw = new StringBuilder();
		Random random = new Random();
		for (int i = 0; i < 6; i++) {
			int index = random.nextInt(LENGTH);
			psw.append(SEQUENCE.charAt(index));
		}
		return psw.toString();
	}

}
