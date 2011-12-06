package com.zjut.oa.mvc.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;

import com.zjut.oa.mvc.core.ActionAdapter;
import com.zjut.oa.mvc.core.annotation.Fail;
import com.zjut.oa.mvc.core.annotation.Result;
import com.zjut.oa.mvc.core.annotation.Success;
import com.zjut.oa.mvc.domain.News;
import com.zjut.oa.mvc.domain.Officerule;
import com.zjut.oa.tool.CalendarTool;

public class OfficeruleAction extends ActionAdapter {

	@Result("/WEB-INF/pages/freeze/officerule/show.jsp")
	public String show(HttpServletRequest req, HttpServletResponse resp) {
		String id = param(req, "id");

		Officerule model = new Officerule();
		if (StringUtils.isNotBlank(id)) {
			model.setId(Long.parseLong(id));
			model = model.get(Long.parseLong(id));
		}

		setAttr(req, MODEL, model);

		return INPUT;
	}

	@Result("/WEB-INF/pages/freeze/officerule/viewAdd.jsp")
	public String viewAdd(HttpServletRequest req, HttpServletResponse resp) {
		return INPUT;
	}

	@Success(path = "/WEB-INF/pages/freeze/officerule/viewAdd.jsp")
	@Fail(path = "/WEB-INF/pages/freeze/officerule/viewAdd.jsp")
	public String add(HttpServletRequest req, HttpServletResponse resp) {
		String title = param(req, "title");
		String content = param(req, "content");

		Officerule model = new Officerule();
		model.setTitle(title);
		model.setContent(content);

		setAttr(req, MODEL, model);

		if (StringUtils.isBlank(title)) {
			setAttr(req, TIP_NAME_KEY, "请输入制度标题");
			return FAIL;
		}

		if (model.existProperty("title", title)) {
			setAttr(req, TIP_NAME_KEY, "已存在此制度");
			return FAIL;
		}
		if (StringUtils.isBlank(content)) {
			setAttr(req, TIP_NAME_KEY, "请输入制度内容");
			return FAIL;
		}
		model.setAddtime(CalendarTool.now());
		model.setModifytime(CalendarTool.now());

		if (model.save() > 0) {
			setAttr(req, TIP_NAME_KEY, "添加新制度[" + title + "]成功");
			model.setTitle("");
			model.setContent("");
			return SUCCESS;
		} else {
			setAttr(req, TIP_NAME_KEY, "添加新制度失败");
			return FAIL;
		}
	}

	@Result("/WEB-INF/pages/freeze/officerule/viewModify.jsp")
	public String viewModify(HttpServletRequest req, HttpServletResponse resp) {
		int id = param(req, "id", 0);

		Officerule model = new Officerule();
		if (id != 0) {
			model.setId(id);
			model = model.get(id);
		}

		setAttr(req, MODEL, model);

		return INPUT;

	}

	@Result("/WEB-INF/pages/freeze/officerule/list.jsp")
	@Fail(path = "/WEB-INF/pages/freeze/officerule/viewModify.jsp")
	public String modify(HttpServletRequest req, HttpServletResponse resp) {
		int id = param(req, "id", 0);
		String title = param(req, "title");
		String content = param(req, "content");

		Officerule model = new Officerule();
		if (id != 0) {
			model.setId(id);
			model = model.get(id);
		}

		String pre_title = model.getTitle();
		String pre_content = model.getContent();

		if (StringUtils.isBlank(pre_title)) {
			setAttr(req, TIP_NAME_KEY, "加载制度失败");
			return FAIL;
		}

		if (StringUtils.equals(pre_title, title)
				&& StringUtils.equals(pre_content, content)) {
			setAttr(req, TIP_NAME_KEY, "无任何修改");
			model.setTitle(pre_title);
			model.setContent(pre_content);
			setAttr(req, MODEL, model);
			return FAIL;
		}

		if (StringUtils.isBlank(title)) {
			setAttr(req, TIP_NAME_KEY, "请输入制度标题");
			model.setTitle(pre_title);
			model.setContent(pre_content);
			setAttr(req, MODEL, model);
			return FAIL;
		}
		if (StringUtils.isBlank(content)) {
			setAttr(req, TIP_NAME_KEY, "请输入制度内容");
			model.setTitle(pre_title);
			model.setContent(pre_content);
			setAttr(req, MODEL, model);
			return FAIL;
		}
		model.setTitle(title);
		model.setContent(content);
		setAttr(req, MODEL, model);

		if (model.existProperty("title", title)
				&& StringUtils.equals(content, pre_content)) {
			setAttr(req, TIP_NAME_KEY, "此制度名已存在");
			model.setTitle(pre_title);
			model.setContent(pre_content);
			return FAIL;
		}

		model.setModifytime(CalendarTool.now());

		if (model.save() > 0) {
			if (!StringUtils.equals(pre_title, title)) {
				setAttr(req, TIP_NAME_KEY, "由[" + pre_title + "]更改为[" + title
						+ "]");
			} else {
				if (!StringUtils.equals(pre_content, content)) {
					setAttr(req, TIP_NAME_KEY, "制度内容已修改成功");
				}
			}
			return this.list(req, resp);
		} else {
			setAttr(req, TIP_NAME_KEY, "编辑制度[" + pre_title + "]失败");
			return FAIL;
		}
	}

	@Result("/WEB-INF/pages/freeze/officerule/list.jsp")
	public String list(HttpServletRequest req, HttpServletResponse resp) {
		Officerule model = new Officerule();
		@SuppressWarnings("unchecked")
		List<Officerule> orList = (List<Officerule>) model.listAll();

		setAttr(req, DATA_LIST, orList);

		return INPUT;
	}

	@Result("/WEB-INF/pages/freeze/officerule/list.jsp")
	public String delete(HttpServletRequest req, HttpServletResponse resp) {
		int id = param(req, "id", 0);

		Officerule model = new Officerule();
		if (id != 0) {
			model.setId(id);
			model = model.get(id);
		}

		if (id == 0) {
			setAttr(req, TIP_NAME_KEY, "非法ID值");
		} else {
			model.setId(id);
			// TODO more relative
			if (model.delete()) {
				setAttr(req, TIP_NAME_KEY, "成功删除[" + model.getTitle() + "]");
			} else {
				setAttr(req, TIP_NAME_KEY, "删除制度[" + model.getTitle() + "]失败");
			}
		}
		return this.list(req, resp);
	}
}
