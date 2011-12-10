package com.zjut.oa.mvc.domain.strengthen;

import com.zjut.oa.mvc.domain.User;

public class TeamTogether {

	private long id;
	private User user;
	private String headimage;
	private int start;
	private int end;
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getHeadimage() {
		return headimage;
	}

	public void setHeadimage(String headimage) {
		this.headimage = headimage;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	@Override
	public String toString() {
		return "TeamTogether [id=" + id + ", user=" + user + ", headimage="
				+ headimage + ", start=" + start + ", end=" + end + "]";
	}

	

}
