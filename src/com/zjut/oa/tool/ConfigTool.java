package com.zjut.oa.tool;

import java.util.Properties;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class ConfigTool {

	private static final Log log = LogFactory.getLog(ConfigTool.class);

	private static final String DOMAIN_FILENAME = "domain.properties";

	// 邮箱域名
	private static final String PARAM_DOMAIN_KEY = "oa.domain";
	private static final String PARAM_PATH_KEY = "oa.path";
	private static final String DOMAIN;
	private static final String PATH;

	private static final String PAGE_FILENAME = "page.properties";

	// 分页
	private static final String PARAM_PAGE_DEFAULT_PAGE_KEY = "page.defaultPage";
	private static final String PARAM_PAGE_COUNT_PER_PAGE_KEY = "page.countPerPage";
	private static final String PARAM_PAGE_DEFAULT_LENGTH_PER_PAGE_SHOW_KEY = "page.defaultLengthPerPageShow";

	public static final int DEFAULT_PAGE;
	public static final int COUNT_PER_PAGE;
	public static final int DEFAULT_LENGTH_PER_PAGE_SHOW;

	static {
		// 邮箱域名
		Properties prop_domain = PropertiesTool.loadProperties(DOMAIN_FILENAME);
		DOMAIN = prop_domain.getProperty(PARAM_DOMAIN_KEY);
		PATH = prop_domain.getProperty(PARAM_PATH_KEY);

		log.info("Load Param from " + DOMAIN_FILENAME);
		log.info("Load Param[" + PARAM_DOMAIN_KEY + "] -> " + DOMAIN);
		log.info("Load Param[" + PARAM_PATH_KEY + "] -> " + PATH);

		// 分页配置
		Properties prop_page = PropertiesTool.loadProperties(PAGE_FILENAME);
		DEFAULT_PAGE = Integer.parseInt(prop_page
				.getProperty(PARAM_PAGE_DEFAULT_PAGE_KEY));
		COUNT_PER_PAGE = Integer.parseInt(prop_page
				.getProperty(PARAM_PAGE_COUNT_PER_PAGE_KEY));
		DEFAULT_LENGTH_PER_PAGE_SHOW = Integer.parseInt(prop_page
				.getProperty(PARAM_PAGE_DEFAULT_LENGTH_PER_PAGE_SHOW_KEY));

		log.info("Load Param from " + PAGE_FILENAME);
		log.info("Load Param[" + PARAM_PAGE_DEFAULT_PAGE_KEY + "] -> "
				+ DEFAULT_PAGE);
		log.info("Load Param[" + PARAM_PAGE_COUNT_PER_PAGE_KEY + "] -> "
				+ COUNT_PER_PAGE);
		log.info("Load Param[" + PARAM_PAGE_DEFAULT_LENGTH_PER_PAGE_SHOW_KEY
				+ "] -> " + DEFAULT_LENGTH_PER_PAGE_SHOW);

	}

	public static String getDomain() {
		return DOMAIN;
	}

	public static String getPath() {
		return PATH;
	}

}
