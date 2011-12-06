package com.zjut.oa.tool;

import java.util.Properties;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class ConfigTool {

	private static final Log log = LogFactory.getLog(ConfigTool.class);

	private static final String DOMAIN_FILENAME = "domain.properties";

	private static final String PARAM_DOMAIN_KEY = "oa.domain";
	private static final String PARAM_PATH_KEY = "oa.path";
	private static final String domain;
	private static final String path;

	static {
		Properties prop_domain = PropertiesTool.loadProperties(DOMAIN_FILENAME);
		domain = prop_domain.getProperty(PARAM_DOMAIN_KEY);
		path = prop_domain.getProperty(PARAM_PATH_KEY);
		log.info("Load Param[" + PARAM_DOMAIN_KEY + "] -> " + domain);
		log.info("Load Param[" + PARAM_PATH_KEY + "] -> " + path);
	}

	public static String getDomain() {
		return domain;
	}

	public static String getPath() {
		return path;
	}

}
