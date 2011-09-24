package com.zjut.oa.mvc.action;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.json.simple.JSONObject;

import com.zjut.oa.mvc.core.ActionAdapter;
import com.zjut.oa.mvc.core.Constant;
import com.zjut.oa.mvc.core.annotation.Fail;
import com.zjut.oa.mvc.core.annotation.None;
import com.zjut.oa.mvc.core.annotation.Result;
import com.zjut.oa.mvc.core.annotation.Success;
import com.zjut.oa.mvc.domain.News;
import com.zjut.oa.mvc.domain.User;
import com.zjut.oa.mvc.domain.Userrole;
import com.zjut.oa.mvc.domain.strengthen.RolePermissionTogether;
import com.zjut.oa.tool.HttpTool;
import com.zjut.oa.tool.UploadTool;

public class GlobalAction extends ActionAdapter {

	private static final Log log = LogFactory.getLog(GlobalAction.class);

	@Result("/WEB-INF/pages/anonymous/index.jsp")
	public String anonymous_index(HttpServletRequest req,
			HttpServletResponse resp) {

		List<News> top6newsList = (List<News>) HttpTool.getInstance()
				.getTop6NewsList();

		setAttr(req, DATA_LIST, top6newsList);

		return INPUT;
	}

	@SuppressWarnings("unchecked")
	@Success(path = "/action/global/manager", isAction = true)
	@Fail(path = "/WEB-INF/pages/anonymous/index.jsp")
	public String anonymous_login(HttpServletRequest req,
			HttpServletResponse resp) {
		String uid = param(req, "uid");
		String password = param(req, "password");
		String autologin = param(req, "autologin");

		User model = new User();
		model.setUid(uid);
		model.setPassword(password);

		setAttr(req, Constant.PAGE_LOGIN_AUTOLOGIN_KEY, autologin); // true or 空

		List<News> top6newsList = (List<News>) HttpTool.getInstance()
				.getTop6NewsList();

		setAttr(req, MODEL, model);
		setAttr(req, DATA_LIST, top6newsList);

		if (StringUtils.isBlank(uid)) {
			setAttr(req, TIP_NAME_KEY, "请输入学号");
			return FAIL;
		}
		if (StringUtils.isBlank(password)) {
			setAttr(req, TIP_NAME_KEY, "请输入密码");
			return FAIL;
		}

		if (!model.existProperty("uid", uid)) {
			setAttr(req, TIP_NAME_KEY, "该学号不存在");
			return FAIL;
		}

		if (model.login(uid, password)) {
			if (model.getIslock() == 1) {
				setAttr(req, TIP_NAME_KEY, "您已被管理员锁定,登录失败!");
				return FAIL;
			}
			// 获取用户权限
			Userrole userrole = new Userrole();
			List<Userrole> urList = (List<Userrole>) userrole
					.filter(" where userID=" + model.getId());
			Userrole current_userrole = urList.size() > 0 ? urList.get(0)
					: null;
			if (current_userrole == null) {
				setAttr(req, TIP_NAME_KEY, "您尚未被分配角色!登录失败");
				return FAIL;
			} else {
				// 加载完整角色权限树
				List<RolePermissionTogether> rptList = userrole
						.getRolePermissionTogetherByRoleID(
								Integer.toString(current_userrole.getRoleID()),
								null);
				if (rptList.size() == 0) {
					setAttr(req, TIP_NAME_KEY, "您所属角色尚未分配权限!登录失败");
					return FAIL;
				}

				setAttr(req.getSession(), USER_PERMISSION_KEY, rptList);

				// 设置会话状态
				setAttr(req.getSession(), LOGIN_USER_KEY, model.getId() + "&"
						+ model.getUid() + "&" + model.getUsername());

				// 登录表单用户名cookie
				if (StringUtils.isNotBlank(autologin)
						&& autologin.equals("true")) {
					Cookie[] cookies = req.getCookies();
					boolean exist_uid = false;
					for (Cookie cookie : cookies) {
						if (cookie.getName().equals("login_uid_key")) {
							cookie.setValue(uid);
							exist_uid = true;
						}
					}
					if (!exist_uid) {
						Cookie cookie_uid = new Cookie("login_uid_key", uid);
						cookie_uid.setPath("/");
						cookie_uid.setMaxAge(60 * 60 * 24 * 14);
						resp.addCookie(cookie_uid);
					}
				}

				return SUCCESS;
			}

		} else {
			setAttr(req, TIP_NAME_KEY, "密码错误");
			return FAIL;
		}
	}

	@Result("/WEB-INF/pages/anonymous/index.jsp")
	public String anonymous_logout(HttpServletRequest req,
			HttpServletResponse resp) {
		rmAttr(req.getSession(), LOGIN_USER_KEY);
		rmAttr(req.getSession(), USER_PERMISSION_KEY);
		setAttr(req, TIP_NAME_KEY, "成功注销");

		List<News> top6newsList = (List<News>) HttpTool.getInstance()
				.getTop6NewsList();
		setAttr(req, DATA_LIST, top6newsList);

		return INPUT;
	}

	@Result("/WEB-INF/pages/anonymous/anonymous_history.jsp")
	public String anonymous_history(HttpServletRequest req,
			HttpServletResponse resp) {
		return INPUT;
	}

	@Result("/WEB-INF/pages/anonymous/anonymous_news_show.jsp")
	public String anonymous_news_show(HttpServletRequest req,
			HttpServletResponse resp) {
		int id = param(req, "id", 0);

		News model = new News();
		if (id != 0) {
			model.setId(id);
			model = model.get(id);
		}

		setAttr(req, MODEL, model);

		return INPUT;
	}

	@Result("/WEB-INF/pages/freeze/index.jsp")
	public String manager(HttpServletRequest req, HttpServletResponse resp) {

		return INPUT;
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@None
	public String uploadImg(HttpServletRequest req, HttpServletResponse resp) {
		String savePath = req.getSession().getServletContext().getRealPath("/")
				+ UploadTool.SAVE_DIR_NAME + "/";
		String saveUrl = req.getContextPath() + "/" + UploadTool.SAVE_DIR_NAME
				+ "/";
		String[] fileTypes = UploadTool.ALLOW_FILE_SUFFIX;
		long maxSize = UploadTool.ALLOW_MAX_FILE_SIZE;
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = null;
		try {
			out = resp.getWriter();
		} catch (IOException e1) {
			log.error("获取PrintWriter对象发生异常", e1.getCause());
			return NONE;
		}
		if (!ServletFileUpload.isMultipartContent(req)) {
			out.println(UploadTool.getErrorJson("请选择文件"));
			return NONE;
		}
		File uploadDir = new File(savePath);
		if (!uploadDir.exists())
			uploadDir.mkdir();
		if (!uploadDir.isDirectory()) {
			out.println(UploadTool.getErrorJson("上传目录不存在"));
			return NONE;
		}
		if (!uploadDir.canWrite()) {
			out.println(UploadTool.getErrorJson("上传目录没有写权限"));
			return NONE;
		}
		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		upload.setHeaderEncoding("UTF-8");
		List items = null;
		try {
			items = upload.parseRequest(req);
		} catch (FileUploadException e1) {
			log.error("解析请求对象发生异常", e1.getCause());
			out.println(UploadTool.getErrorJson("获取文件异常"));
			return NONE;
		}
		Iterator itr = items.iterator();
		while (itr.hasNext()) {
			FileItem item = (FileItem) itr.next();
			String fileName = item.getName();
			if (!item.isFormField()) {
				if (item.getSize() > maxSize) {
					out.println(UploadTool.getErrorJson("上传文件大小超过限制,最大为["
							+ maxSize + "]"));
					return NONE;
				}
				String fileExt = fileName.substring(
						fileName.lastIndexOf(".") + 1).toLowerCase();
				if (!Arrays.<String> asList(fileTypes).contains(fileExt)) {
					out.println(UploadTool.getErrorJson("上传文件扩展名是不允许的扩展名"));
					return NONE;
				}
				SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
				String newFileName = df.format(new Date()) + "_"
						+ new Random().nextInt(1000) + "." + fileExt;
				try {
					File uploadedFile = new File(savePath, newFileName);
					item.write(uploadedFile);
				} catch (Exception e) {
					out.println(UploadTool.getErrorJson("上传文件失败"));
					return NONE;
				}
				JSONObject obj = new JSONObject();
				obj.put("error", 0);
				obj.put("url", saveUrl + newFileName);
				out.println(obj.toJSONString());
				log.info("Upload attached Successful , File path -> " + saveUrl
						+ newFileName);
			}
		}
		return NONE;
	}
}
