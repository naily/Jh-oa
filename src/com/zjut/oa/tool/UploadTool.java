package com.zjut.oa.tool;

import java.util.Properties;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.json.simple.JSONObject;

public class UploadTool {

	private static final Log log = LogFactory.getLog(UploadTool.class);

	// KEY
	private static final String PARAM_ATTACHED_SAVE_DIR_NAME_KEY = "upload.attached.savedir";
	private static final String PARAM_ATTACHED_SUFFIXS_KEY = "upload.attached.suffixs";
	private static final String PARAM_ATTACHED_MAX_SIZE_KEY = "upload.attached.maxsize";

	private static final String PARAM_FILE_SAVE_DIR_NAME_KEY = "upload.file.savedir";
	private static final String PARAM_FILE_SUFFIXS_KEY = "upload.file.suffixs";
	private static final String PARAM_FILE_MAX_SIZE_KEY = "upload.file.maxsize";

	private static final String PARAM_PRODUCT_SAVE_DIR_NAME_KEY = "upload.product.savedir";
	private static final String PARAM_PRODUCT_SUFFIXS_KEY = "upload.product.suffixs";
	private static final String PARAM_PRODUCT_MAX_SIZE_KEY = "upload.product.maxsize";

	private static final String PARAM_TEAM_SAVE_DIR_NAME_KEY = "upload.team.savedir";
	private static final String PARAM_TEAM_SUFFIXS_KEY = "upload.team.suffixs";
	private static final String PARAM_TEAM_MAX_SIZE_KEY = "upload.team.maxsize";

	// VALUE
	public static final String ATTACHED_SAVE_DIR_NAME;
	public static final String[] ATTACHED_SUFFIXS;
	public static final int ATTACHED_MAX_SIZE;

	public static final String FILE_SAVE_DIR_NAME;
	public static final String[] FILE_SUFFIXS;
	public static final int FILE_MAX_SIZE;

	public static final String PRODUCT_SAVE_DIR_NAME;
	public static final String[] PRODUCT_SUFFIXS;
	public static final int PRODUCT_MAX_SIZE;

	public static final String TEAM_SAVE_DIR_NAME;
	public static final String[] TEAM_SUFFIXS;
	public static final int TEAM_MAX_SIZE;

	static {
		Properties prop = PropertiesTool.loadProperties("upload.properties");

		ATTACHED_SAVE_DIR_NAME = prop
				.getProperty(PARAM_ATTACHED_SAVE_DIR_NAME_KEY);
		String tmp_1 = prop.getProperty(PARAM_ATTACHED_SUFFIXS_KEY);
		ATTACHED_SUFFIXS = tmp_1.split(",");
		ATTACHED_MAX_SIZE = Integer.parseInt(prop
				.getProperty(PARAM_ATTACHED_MAX_SIZE_KEY));

		FILE_SAVE_DIR_NAME = prop.getProperty(PARAM_FILE_SAVE_DIR_NAME_KEY);
		String tmp_2 = prop.getProperty(PARAM_FILE_SUFFIXS_KEY);
		FILE_SUFFIXS = tmp_2.split(",");
		FILE_MAX_SIZE = Integer.parseInt(prop
				.getProperty(PARAM_FILE_MAX_SIZE_KEY));

		PRODUCT_SAVE_DIR_NAME = prop
				.getProperty(PARAM_PRODUCT_SAVE_DIR_NAME_KEY);
		String tmp_3 = prop.getProperty(PARAM_PRODUCT_SUFFIXS_KEY);
		PRODUCT_SUFFIXS = tmp_3.split(",");
		PRODUCT_MAX_SIZE = Integer.parseInt(prop
				.getProperty(PARAM_PRODUCT_MAX_SIZE_KEY));

		TEAM_SAVE_DIR_NAME = prop.getProperty(PARAM_TEAM_SAVE_DIR_NAME_KEY);
		String tmp_4 = prop.getProperty(PARAM_TEAM_SUFFIXS_KEY);
		TEAM_SUFFIXS = tmp_4.split(",");
		TEAM_MAX_SIZE = Integer.parseInt(prop
				.getProperty(PARAM_TEAM_MAX_SIZE_KEY));
		// 图像
		log.info(" Load Param[" + PARAM_ATTACHED_SAVE_DIR_NAME_KEY + "] -> ["
				+ ATTACHED_SAVE_DIR_NAME + "]");
		log.info(" Load Param[" + PARAM_ATTACHED_SUFFIXS_KEY + "] -> ["
				+ tmp_1 + "]");
		log.info(" Load Param[" + PARAM_ATTACHED_MAX_SIZE_KEY + "] -> ["
				+ ATTACHED_MAX_SIZE + "]");

		// 文件
		log.info(" Load Param[" + PARAM_FILE_SAVE_DIR_NAME_KEY + "] -> ["
				+ FILE_SAVE_DIR_NAME + "]");
		log.info(" Load Param[" + PARAM_FILE_SUFFIXS_KEY + "] -> ["
				+ tmp_2 + "]");
		log.info(" Load Param[" + PARAM_FILE_MAX_SIZE_KEY + "] -> ["
				+ FILE_MAX_SIZE + "]");

		// 产品
		log.info(" Load Param[" + PARAM_PRODUCT_SAVE_DIR_NAME_KEY + "] -> ["
				+ PRODUCT_SAVE_DIR_NAME + "]");
		log.info(" Load Param[" + PARAM_PRODUCT_SUFFIXS_KEY + "] -> ["
				+ tmp_3 + "]");
		log.info(" Load Param[" + PARAM_PRODUCT_MAX_SIZE_KEY + "] -> ["
				+ PRODUCT_MAX_SIZE + "]");

		// 管理团队成员
		log.info(" Load Param[" + PARAM_TEAM_SAVE_DIR_NAME_KEY + "] -> ["
				+ TEAM_SAVE_DIR_NAME + "]");
		log.info(" Load Param[" + PARAM_TEAM_SUFFIXS_KEY + "] -> ["
				+ tmp_4 + "]");
		log.info(" Load Param[" + PARAM_TEAM_MAX_SIZE_KEY + "] -> ["
				+ TEAM_MAX_SIZE + "]");
	}

	@SuppressWarnings("unchecked")
	public static String getErrorJson(String message) {
		JSONObject obj = new JSONObject();
		obj.put("error", 1);
		obj.put("message", message);
		log.info("Error Json: " + obj.toJSONString());
		return obj.toJSONString();
	}

}