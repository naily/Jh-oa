package com.zjut.oa.mvc.domain;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.zjut.oa.db.DBHelper;
import com.zjut.oa.db.Model;
import com.zjut.oa.mvc.domain.strengthen.UserTogether;
import com.zjut.oa.tool.HttpTool;

@SuppressWarnings("serial")
public class User extends Model {

	private static final Log log = LogFactory.getLog(User.class);

	private String uid;
	private String username;
	private String password;
	private String email;
	private String cornet;
	private String telephone;
	private int academyID; // 学院ID
	private String major; // 专业
	private String location; // 校区
	private String dormitory; // 宿舍
	private int departmentID; // 部门ID
	private int jobID;// 职务ID
	private String bbs;
	private int islock; // 状态
	private Timestamp addtime;
	private Timestamp modifytime;
	private String introduce;
	private String simpleinfo;
	private String birthday;
	private String qq;
	private String sex;

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCornet() {
		return cornet;
	}

	public void setCornet(String cornet) {
		this.cornet = cornet;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public int getAcademyID() {
		return academyID;
	}

	public void setAcademyID(int academyID) {
		this.academyID = academyID;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public int getJobID() {
		return jobID;
	}

	public void setJobID(int jobID) {
		this.jobID = jobID;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getDormitory() {
		return dormitory;
	}

	public void setDormitory(String dormitory) {
		this.dormitory = dormitory;
	}

	public int getDepartmentID() {
		return departmentID;
	}

	public void setDepartmentID(int departmentID) {
		this.departmentID = departmentID;
	}

	public String getBbs() {
		return bbs;
	}

	public void setBbs(String bbs) {
		this.bbs = bbs;
	}

	public int getIslock() {
		return islock;
	}

	public void setIslock(int islock) {
		this.islock = islock;
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

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	@Override
	public String toString() {
		return "User [uid=" + uid + ", username=" + username + ", password="
				+ password + ", email=" + email + ", cornet=" + cornet
				+ ", telephone=" + telephone + ", academyID=" + academyID
				+ ", major=" + major + ", location=" + location
				+ ", dormitory=" + dormitory + ", departmentID=" + departmentID
				+ ", jobID=" + jobID + ", bbs=" + bbs + ", islock=" + islock
				+ ", addtime=" + addtime + ", modifytime=" + modifytime
				+ ", introduce=" + introduce + ", simpleinfo=" + simpleinfo
				+ ", birthday=" + birthday + ", qq=" + qq + ", sex=" + sex
				+ "]";
	}

	public String getSimpleinfo() {
		return simpleinfo;
	}

	public void setSimpleinfo(String simpleinfo) {
		this.simpleinfo = simpleinfo;
	}

	public boolean login(String uid, String password) {
		boolean flag = false;
		StringBuilder sql = new StringBuilder();
		sql.append("select * from ");
		sql.append(tableName());
		sql.append(" where uid=? and password=?");
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = DBHelper.getConnection().prepareStatement(sql.toString());
			ps.setObject(1, uid);
			ps.setObject(2, password);
			log.debug("User:exist, sql: " + sql.toString() + ", Values[" + uid
					+ "," + password + "]");
			rs = ps.executeQuery();
			if (rs.next()) {
				setId(rs.getInt("id"));
				setUid(rs.getString("uid"));
				setUsername(rs.getString("username"));
				setEmail(rs.getString("email"));
				setCornet(rs.getString("cornet"));
				setTelephone(rs.getString("telephone"));
				setAcademyID(rs.getInt("academyID"));
				setLocation(rs.getString("location"));
				setDepartmentID(rs.getInt("departmentID"));
				setJobID(rs.getInt("jobID"));
				setDormitory(rs.getString("dormitory"));
				setMajor(rs.getString("major"));
				setIslock(rs.getInt("islock"));
				setBbs(rs.getString("bbs"));

				setAddtime(rs.getTimestamp("addtime"));
				setModifytime(rs.getTimestamp("modifytime"));

				setIntroduce(rs.getString("introduce"));
				setSimpleinfo(rs.getString("simpleinfo"));

				setBirthday(rs.getString("birthday"));
				setQq(rs.getString("qq"));
				setSex(rs.getString("sex"));

				flag = true;
			}
		} catch (Exception e) {
			log.error(e, e.getCause());
		} finally {
			DbUtils.closeQuietly(rs);
			DbUtils.closeQuietly(ps);
			sql = null;
		}
		return flag;
	}

	public List<UserTogether> exportUserListBy(int academyID, int departmentID,
			int jobID, String location, int islock) {
		// 组合条件
		StringBuilder condition = new StringBuilder();
		if (academyID != -1) {
			condition.append(" and u.academyID =" + academyID);
		}
		if (departmentID != -1) {
			condition.append(" and u.departmentID =" + departmentID);
		}
		if (jobID != -1) {
			condition.append(" and u.jobID =" + jobID);
		}
		if (!StringUtils.equals(location, "-1")) {
			condition.append(" and u.location ='" + location + "'");
		}
		if (islock != -1) {
			condition.append(" and u.islock =" + islock);
		}

		List<UserTogether> utList = new ArrayList<UserTogether>();

		Academy academy = new Academy();
		Department department = new Department();
		Job job = new Job();

		StringBuilder sql = new StringBuilder();

		sql.append("select ");

		sql.append(" u.id, ");

		sql.append(" u.uid, ");
		sql.append(" u.username, ");
		sql.append(" d.departmentname, ");
		sql.append(" u.email, ");
		sql.append(" u.cornet, ");
		sql.append(" u.telephone, ");
		sql.append(" u.location, ");
		sql.append(" a.academyname, ");
		sql.append(" u.major, ");
		sql.append(" u.dormitory, ");
		sql.append(" u.islock, ");
		sql.append(" u.academyID, ");
		sql.append(" u.departmentID, ");
		sql.append(" u.addtime, ");
		sql.append(" u.modifytime, ");
		sql.append(" u.bbs, ");
		sql.append(" u.jobID, ");
		sql.append(" j.jobname, ");
		sql.append(" u.birthday, ");
		sql.append(" u.qq, ");
		sql.append(" u.sex ");

		sql.append(" from ");
		sql.append(tableName() + " as u, ");
		sql.append(academy.tableName() + " as a, ");
		sql.append(department.tableName() + " as d, ");
		sql.append(job.tableName() + " as j ");
		sql.append(" where ");
		sql.append(" u.academyID=a.id ");
		sql.append(" and u.departmentID = d.id  ");
		sql.append(" and u.jobID = j.id  ");

		sql.append(condition.toString());

		sql.append(" order by u.addtime asc");
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = DBHelper.getConnection().prepareStatement(sql.toString());
			log.debug("User:exportUserListBy, sql: " + sql.toString()
					+ ", Values[]");
			rs = ps.executeQuery();

			while (rs.next()) {

				User u = new User();
				u.setId(rs.getLong(1));
				u.setUid(rs.getString(2));
				u.setUsername(rs.getString(3));
				u.setEmail(rs.getString(5));
				u.setCornet(rs.getString(6));
				u.setTelephone(rs.getString(7));
				u.setLocation(rs.getString(8));
				u.setMajor(rs.getString(10));
				u.setDormitory(rs.getString(11));
				u.setIslock(rs.getInt(12));
				u.setAddtime(rs.getTimestamp(15));
				u.setModifytime(rs.getTimestamp(16));
				u.setBbs(rs.getString(17));
				u.setBirthday(rs.getString(20));
				u.setQq(rs.getString(21));
				u.setSex(rs.getString(22));

				Academy a = new Academy();
				a.setId(rs.getLong(13));
				a.setAcademyname(rs.getString(9));

				Department d = new Department();
				d.setId(rs.getLong(14));
				d.setDepartmentname(rs.getString(4));

				Job j = new Job();
				j.setId(rs.getLong(18));
				j.setJobname(rs.getString(19));

				UserTogether ut = new UserTogether();
				ut.setId(rs.getLong(1));
				ut.setAcademy(a);
				ut.setDepartment(d);
				ut.setUser(u);
				ut.setJob(j);

				utList.add(ut);
			}
		} catch (Exception e) {
			log.error(e, e.getCause());
		} finally {
			DbUtils.closeQuietly(rs);
			DbUtils.closeQuietly(ps);
			sql = null;
		}
		return utList;
	}

	public List<UserTogether> exportUserListByCondition(HttpServletRequest req) {
		String uid = HttpTool.getInstance().param(req, "uid");
		String username = HttpTool.getInstance().param(req, "username");
		String email = HttpTool.getInstance().param(req, "email");
		String cornet = HttpTool.getInstance().param(req, "cornet");
		String telephone = HttpTool.getInstance().param(req, "telephone");
		int academyID = HttpTool.getInstance().param(req, "academyID", 0);
		int departmentID = HttpTool.getInstance().param(req, "departmentID", 0);
		int jobID = HttpTool.getInstance().param(req, "jobID", 0);
		String major = HttpTool.getInstance().param(req, "major");
		String location = HttpTool.getInstance().param(req, "location");
		String dormitory = HttpTool.getInstance().param(req, "dormitory");
		String bbs = HttpTool.getInstance().param(req, "bbs");
		int islock = HttpTool.getInstance().param(req, "islock", 0);
		String qq = HttpTool.getInstance().param(req, "qq");
		String sex = HttpTool.getInstance().param(req, "sex");

		StringBuilder condition = new StringBuilder();

		if (StringUtils.isNotBlank(uid)) {
			condition.append(" and u.uid like '%" + uid + "%'");
		}
		if (StringUtils.isNotBlank(username)) {
			condition.append(" and u.username like '%" + username + "%'");
		}
		if (StringUtils.isNotBlank(email)) {
			condition.append(" and u.email like '%" + email + "%'");
		}
		if (StringUtils.isNotBlank(cornet)) {
			condition.append(" and u.cornet like '%" + cornet + "%'");
		}
		if (StringUtils.isNotBlank(telephone)) {
			condition.append(" and u.telephone like '%" + telephone + "%'");
		}
		if (academyID != 0) {
			condition.append(" and u.academyID = " + academyID);
		}
		if (departmentID != 0) {
			condition.append(" and u.departmentID = " + departmentID);
		}
		if (jobID != 0) {
			condition.append(" and u.jobID = " + jobID);
		}
		if (StringUtils.isNotBlank(major)) {
			condition.append(" and u.major like '%" + major + "%'");
		}
		if (StringUtils.isNotBlank(location)) {
			condition.append(" and u.location like '%" + location + "%'");
		}
		if (StringUtils.isNotBlank(dormitory)) {
			condition.append(" and u.dormitory like '%" + dormitory + "%'");
		}
		if (StringUtils.isNotBlank(bbs)) {
			condition.append(" and u.bbs like '%" + bbs + "%'");
		}
		if (islock == 0 || islock == 1) {
			condition.append(" and u.islock = " + islock);
		}
		if (StringUtils.isNotBlank(qq)) {
			condition.append(" and u.qq like '%" + qq + "%'");
		}
		if (StringUtils.isNotBlank(sex)) {
			condition.append(" and u.sex like '%" + sex + "%'");
		}

		List<UserTogether> utList = new ArrayList<UserTogether>();

		Academy academy = new Academy();
		Department department = new Department();
		Job job = new Job();

		StringBuilder sql = new StringBuilder();

		sql.append("select ");

		sql.append(" u.id, ");

		sql.append(" u.uid, ");
		sql.append(" u.username, ");
		sql.append(" d.departmentname, ");
		sql.append(" u.email, ");
		sql.append(" u.cornet, ");
		sql.append(" u.telephone, ");
		sql.append(" u.location, ");
		sql.append(" a.academyname, ");
		sql.append(" u.major, ");
		sql.append(" u.dormitory, ");
		sql.append(" u.islock, ");
		sql.append(" u.academyID, ");
		sql.append(" u.departmentID, ");
		sql.append(" u.addtime, ");
		sql.append(" u.modifytime, ");
		sql.append(" u.bbs, ");
		sql.append(" u.jobID, ");
		sql.append(" j.jobname, ");
		sql.append(" u.birthday, ");
		sql.append(" u.qq, ");
		sql.append(" u.sex ");

		sql.append(" from ");
		sql.append(tableName() + " as u, ");
		sql.append(academy.tableName() + " as a, ");
		sql.append(department.tableName() + " as d, ");
		sql.append(job.tableName() + " as j ");
		sql.append(" where ");
		sql.append(" u.academyID=a.id ");
		sql.append(" and u.departmentID = d.id  ");
		sql.append(" and u.jobID = j.id  ");

		sql.append(condition.toString());

		sql.append(" order by u.addtime asc");
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = DBHelper.getConnection().prepareStatement(sql.toString());
			log.debug("User:exportUserListByCondition, sql: " + sql.toString()
					+ ", Values[]");
			rs = ps.executeQuery();

			while (rs.next()) {

				User u = new User();
				u.setId(rs.getLong(1));
				u.setUid(rs.getString(2));
				u.setUsername(rs.getString(3));
				u.setEmail(rs.getString(5));
				u.setCornet(rs.getString(6));
				u.setTelephone(rs.getString(7));
				u.setLocation(rs.getString(8));
				u.setMajor(rs.getString(10));
				u.setDormitory(rs.getString(11));
				u.setIslock(rs.getInt(12));
				u.setAddtime(rs.getTimestamp(15));
				u.setModifytime(rs.getTimestamp(16));
				u.setBbs(rs.getString(17));
				u.setBirthday(rs.getString(20));
				u.setQq(rs.getString(21));
				u.setSex(rs.getString(22));

				Academy a = new Academy();
				a.setId(rs.getLong(13));
				a.setAcademyname(rs.getString(9));

				Department d = new Department();
				d.setId(rs.getLong(14));
				d.setDepartmentname(rs.getString(4));

				Job j = new Job();
				j.setId(rs.getLong(18));
				j.setJobname(rs.getString(19));

				UserTogether ut = new UserTogether();
				ut.setId(rs.getLong(1));
				ut.setAcademy(a);
				ut.setDepartment(d);
				ut.setUser(u);
				ut.setJob(j);

				utList.add(ut);
			}
		} catch (Exception e) {
			log.error(e, e.getCause());
		} finally {
			DbUtils.closeQuietly(rs);
			DbUtils.closeQuietly(ps);
			sql = null;
		}
		return utList;
	}

	public List<User> top10User(String username) {
		List<User> uList = new ArrayList<User>();
		StringBuilder sql = new StringBuilder();
		sql.append("select * from ");
		sql.append(tableName());
		sql.append(" where username like ? limit 0,10 ");
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = DBHelper.getConnection().prepareStatement(sql.toString());
			ps.setObject(1, '%'+username+'%');
			log.debug("User:top10User, sql: " + sql.toString() + ", Values["
					+ username + "]");
			rs = ps.executeQuery();
			while (rs.next()) {
				User u=new User();
				u.setId(rs.getInt("id"));
				u.setUid(rs.getString("uid"));
				u.setUsername(rs.getString("username"));
				u.setEmail(rs.getString("email"));
				u.setCornet(rs.getString("cornet"));
				u.setTelephone(rs.getString("telephone"));
				u.setAcademyID(rs.getInt("academyID"));
				u.setLocation(rs.getString("location"));
				u.setDepartmentID(rs.getInt("departmentID"));
				u.setJobID(rs.getInt("jobID"));
				u.setDormitory(rs.getString("dormitory"));
				u.setMajor(rs.getString("major"));
				u.setIslock(rs.getInt("islock"));
				u.setBbs(rs.getString("bbs"));

				u.setAddtime(rs.getTimestamp("addtime"));
				u.setModifytime(rs.getTimestamp("modifytime"));

				u.setIntroduce(rs.getString("introduce"));
				u.setSimpleinfo(rs.getString("simpleinfo"));

				u.setBirthday(rs.getString("birthday"));
				u.setQq(rs.getString("qq"));
				u.setSex(rs.getString("sex"));

				uList.add(u);
				
			}
		} catch (Exception e) {
			log.error(e, e.getCause());
		} finally {
			DbUtils.closeQuietly(rs);
			DbUtils.closeQuietly(ps);
			sql = null;
		}
		return uList;
	}
}
