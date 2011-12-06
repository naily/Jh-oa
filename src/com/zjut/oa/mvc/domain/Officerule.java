package com.zjut.oa.mvc.domain;

import java.sql.Timestamp;

import com.zjut.oa.db.Model;

@SuppressWarnings("serial")
public class Officerule extends Model {

	private String title;
	private String content;
	private Timestamp addtime;
	private Timestamp modifytime;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getAddtime() {
		return addtime;
	}

	public void setAddtime(Timestamp addtime) {
		this.addtime = addtime;
	}

	public Timestamp getModifytime() {
		return modifytime;
	}

	public void setModifytime(Timestamp modifytime) {
		this.modifytime = modifytime;
	}

	@Override
	public String toString() {
		return "Officerule [title=" + title + ", content=" + content
				+ ", addtime=" + addtime + "]";
	}

}
