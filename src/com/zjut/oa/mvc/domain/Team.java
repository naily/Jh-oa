package com.zjut.oa.mvc.domain;

import com.zjut.oa.db.Model;

@SuppressWarnings("serial")
public class Team extends Model {

	private int userID;
	private String headimage;
	private int start;
	private int end;

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
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
		return "Team [userID=" + userID + ", headimage=" + headimage
				+ ", start=" + start + ", end=" + end + "]";
	}

}
