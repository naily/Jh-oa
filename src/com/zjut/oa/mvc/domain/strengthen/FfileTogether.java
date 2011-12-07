package com.zjut.oa.mvc.domain.strengthen;

import com.zjut.oa.mvc.domain.Ffile;
import com.zjut.oa.mvc.domain.User;

public class FfileTogether {
	private long id;
	private Ffile file;
	private User user;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Ffile getFile() {
		return file;
	}

	public void setFile(Ffile file) {
		this.file = file;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "FfileTogether [id=" + id + ", file=" + file + ", user=" + user
				+ "]";
	}

}
