package com.zjut.oa.tool;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.zjut.oa.db.Pager;
import com.zjut.oa.mvc.core.Constant;
import com.zjut.oa.mvc.domain.News;

public final class HttpTool {

	private static final Log log = LogFactory.getLog(HttpTool.class);
	
	private static final String ENCODING = "UTF-8";

	private static final HttpTool INSTANCE = new HttpTool();

	private HttpTool() {
		// Singleton
	}

	public static HttpTool getInstance() {
		return INSTANCE;
	}

	public String getUri(HttpServletRequest req) {
		String uri = req.getRequestURI();
//		log.info("***source: " + uri);
		int index1 = uri.indexOf("/", 2);
		if (index1 > 0) {
			uri = uri.substring(index1);
		}
		return uri;
	}

	public String getUriFromContextPath(HttpServletRequest req) {
		String uri = req.getRequestURI();
		if (uri.indexOf(req.getContextPath()) < 0) {
			return Constant.URI_IS_WRONG;
		}
		int index1 = uri.indexOf("/", 2);
		if (index1 > 0) {
			uri = uri.substring(index1);
		}
		log.info("*********************** filter uri: " + uri);
		return uri;
	}

	public List<News> getTopNewsList() {
		StringBuilder top6news = new StringBuilder();
		News news = new News();
		int currentPage = 1;
		int countPerPage = 5;
		int totalCount = news.totalCount(top6news.toString());
		Pager pager = new Pager(currentPage, countPerPage, totalCount);
		// 读取部分数据
		@SuppressWarnings("unchecked")
		List<News> top6newsList = (List<News>) news.filterByPage(
				top6news.toString(), currentPage, pager.getCountPerPage());
		return top6newsList;
	}

	/**
	 * 获取指定名称的参数值,没有则为""
	 * 
	 * @param req
	 * @param name
	 * @return
	 */
	public String param(HttpServletRequest req, String name) {
		String v = (String) req.getParameter(name);
		String value = v != null ? v.trim() : "";
		try {
			value = new String(value.getBytes("iso-8859-1"), ENCODING);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			;// ignore
		}
		return value;
	}

	/**
	 * 获取请求中指定名称参数值，不存在参数则设置默认值
	 * 
	 * @param req
	 * @param name
	 * @param defaultValue
	 * @return
	 */
	public String param(HttpServletRequest req, String name, String defaultValue) {
		String v = (String) req.getParameter(name);
		String value = v != null ? v.trim() : defaultValue;
		try {
			value = new String(value.getBytes("iso-8859-1"), ENCODING);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			;// ignore
		}
		return value;
	}

	public String[] params(HttpServletRequest req, String name) {
		String[] v = req.getParameterValues(name);
		return v == null ? new String[] {} : v;
	}

	public double param(HttpServletRequest req, String name, double defaultValue) {
		String value = param(req, name);
		double t = defaultValue;
		try {
			t = Double.parseDouble(value);
		} catch (NumberFormatException e) {
			;// ignore
		}
		return t;
	}

	public int param(HttpServletRequest req, String name, int defaultValue) {
		String value = param(req, name);
		return StringUtils.isNumeric(value) && value != null
				&& !"".equals(value) ? Integer.parseInt(value) : defaultValue;
	}

}
