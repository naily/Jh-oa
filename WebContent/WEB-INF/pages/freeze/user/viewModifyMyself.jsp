<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.zjut.oa.db.*"%>
<%@ page import="com.zjut.oa.mvc.action.*"%>
<%@ page import="com.zjut.oa.mvc.core.*"%>
<%@ page import="com.zjut.oa.mvc.domain.*"%>
<%@ page import="com.zjut.oa.mvc.filter.*"%>
<%@ page import="com.zjut.oa.tool.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>"></base>
<title> 编辑个人资料 </title>
</head>
<body>
<c:set var="tip" value="${requestScope.tip}"></c:set>
<c:set var="model" value="${requestScope.model }"></c:set>
<c:set var="academyList" value="${requestScope.academyList }"></c:set>
<c:set var="departmentList" value="${requestScope.departmentList }"></c:set>
<c:set var="jobList" value="${requestScope.jobList}"></c:set>
<c:set var="locationList" value="屏峰,朝晖,之江" />
<c:set var="islockList" value="0,1" />
<c:set var="sexList" value="男,女" />

<div class="crumb">
	<div class="adduser-title">编辑个人资料</div>
	<div class="backNav"><a href="action/global/manager">返回管理后台</a></div>
	<div class="clear"></div>
</div>
<div class="box">
<div class="actionTip">温馨提醒：<span class="tip-words">如不需要修改密码，请在密码输入框中留空</span></div>
<c:if test="${ not empty tip}">
<div class="optTip m30">提示：<span class="msg">${tip}</span></div>
</c:if>
<form name="modifyuserForm" id="modifyuserForm" action="action/user/modifyMyself" method="post">

<table class="modifyTable">
	<tr>
		<td>
			<label for="uid" class="common-label">学号</label>
			${model.uid }
			<%-- <input type="text" id="uid" name="uid" class="uid" value="${model.uid }" disabled="disabled"/> --%>
			<input type="hidden" name="uid" value="${model.uid }"/>
		</td>
		<td>
			<label for="cornet" class="common-label">短号</label>
			<input type="text" id="cornet" name="cornet" class="cornet" value="${model.cornet }" />
		</td>
	</tr>
	<tr>
		<td>
			<label for="username" class="common-label">姓名</label>
			<input type="text" id="username" name="username" class="username" value="${model.username }"/>
		</td>
		<td>
			<label for="telephone" class="common-label">手机号码</label>
			<input type="text" id="telephone" name="telephone" class="telephone" value="${model.telephone }" />
		</td>
	</tr>
	<tr>
		<td>
			<label for="password" class="common-label">密码</label>
			<input type="password" id="password" name="password" class="password" />
		</td>
		<td>
			<label for="academyID" class="common-label">学院</label>
			<select id="academyID" name="academyID" class="academyID">
				<option value="-1">==== 请选择学院  ====</option>
				<c:forEach var="academy" items="${academyList }">
					<c:choose>
						<c:when test="${academy.id==model.academyID }">
							<option value="${academy.id }" selected="selected">${academy.academyname }</option>
						</c:when>
						<c:otherwise>
							<option value="${academy.id }">${academy.academyname }</option>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr>
		<td>
			<label for="email" class="common-label">Email地址</label>
			<input type="text" id="email" name="email" class="email" value="${model.email }" />
		</td>
		<td>
			<label for="major" class="common-label">专业班级</label>
			<input type="text" id="major" name="major" class="major" value="${model.major }" />
		</td>
	</tr>
	<tr>
		<td>
			<label for="islock" class="common-label">状态</label>
			<%-- 
			<select id="islock" name="islock" class="islock" disabled="disabled">
				<option value="-1">==== 请选择状态  ====</option>
				<c:forEach var="islock" items="${islockList }">
					<c:choose>
						<c:when test="${islock == model.islock }">
							<option value="${islock }" selected="selected">${islock ==0 ? "可用" :"锁定" }</option>
						</c:when>
						<c:otherwise>
							<option value="${islock }">${islock==0 ? "可用":"锁定" }</option>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</select>
			 --%>
			 ${islock ==0 ? "可用" :"锁定" }
			<input type="hidden" name="islock" value="${model.islock }" />
		</td>
		<td>
			<label for="location" class="common-label">所在校区</label>
			<select id="location" name="location" class="location">
				<option value="-1">==== 请选择所在校区  ====</option>
				<c:forEach var="location" items="${locationList }">
					<c:choose>
						<c:when test="${location==model.location }">
							<option value="${location }" selected="selected">${location }</option>
						</c:when>
						<c:otherwise>
							<option value="${location }">${location }</option>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr>
		<td>
			<label for="departmentID" class="common-label">所属部门</label>
			<%--
			<select id="departmentID" name="departmentID" class="departmentID" disabled="disabled">
				<option value="-1">==== 请选择部门  ====</option>
				<c:forEach var="department" items="${departmentList }">
					<c:choose>
						<c:when test="${department.id==model.departmentID }">
							<option value="${department.id }" selected="selected">${department.departmentname }</option>
						</c:when>
						<c:otherwise>
							<option value="${department.id }">${department.departmentname }</option>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</select>
			 --%>
			<c:forEach var="department" items="${departmentList }">
				<c:if test="${department.id==model.departmentID }">
					${department.departmentname }
				</c:if>
			</c:forEach>
			<input type="hidden" name="departmentID" value="${model.departmentID }" />
		</td>
		<td>
			<label for="dormitory" class="common-label">宿舍</label>
			<input type="text" id="dormitory" name="dormitory" class="dormitory" value="${model.dormitory }" />
		</td>
	</tr>
	<tr>
		<td>
			<label for="jobID" class="common-label">职务</label>
			<%--
			<select id="jobID" name="jobID" class="jobID" disabled="disabled">
				<option value="-1">==== 请选择职务  ====</option>
				<c:forEach var="job" items="${jobList }">
					<c:choose>
						<c:when test="${job.id==model.jobID }">
							<option value="${job.id }" selected="selected">${job.jobname }</option>
						</c:when>
						<c:otherwise>
							<option value="${job.id }">${job.jobname }</option>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</select>
			 --%>	
			<c:forEach var="job" items="${jobList }">
				<c:if test="${job.id==model.jobID }">
					${job.jobname }
				</c:if>
			</c:forEach>
			<input type="hidden" name="jobID" value="${model.jobID }" />
		</td>
		<td>
			<label for="bbs" class="common-label">论坛ID</label>
			<input type="text" id="bbs" name="bbs" class="bbs" value="${model.bbs }" />
		</td>
	</tr>
	<tr>
		<td>
			<label for="birthday" class="common-label">生日</label>
			<input type="text" id="birthday" name="birthday" class="birthday" value="${model.birthday }" />
			<p style="margin-left:80px;color:red;">格式为：yyyy-MM-dd，如（1987-08-18）</p>
		</td>
		<td>
			<label for="qq" class="common-label">QQ</label>
			<input type="text" id="qq" name="qq" class="qq" value="${model.qq }" />
		</td>
	</tr>
	<tr>
		<td>
			<label for="sex" class="common-label">性别</label>
			<select id="sex" name="sex" class="sex">
				<option value="">==== 请选择性别  ====</option>
				<c:forEach var="sex" items="${sexList }">
					<c:choose>
						<c:when test="${sex==model.sex}">
							<option value="${sex }" selected="selected">${sex }</option>
						</c:when>
						<c:otherwise>
							<option value="${sex }">${sex }</option>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</select>
		</td>
		<td>
			&nbsp;
		</td>
	</tr>
</table>
<p style="margin-left:30px;">
	<textarea id="kindEditor" name="introduce"  class="editor" style="width:95%;height:200px;">${model.introduce}</textarea>
	<input type="hidden" id="simpleinfo" name="simpleinfo" value="${model.simpleinfo }"/>
</p>
<input type="hidden" name="id" value="${model.id }" />
<div class="data-operator-bar top-border">
	<input type="submit" value="完成编辑" class="bt bt-adduser" />
	<div class="clear"></div>
</div>
</form>
</div>
<script type="text/javascript">
KE.init({
	id : 'kindEditor',
	resizeMode: 1,
	items: [
		'fontname', 'fontsize', '|',
		'textcolor', 'bgcolor','|',
		'bold', 'italic', 'underline','removeformat', '|',
		'justifyleft', 'justifycenter', 'justifyright', '|',
		'insertorderedlist','insertunorderedlist', '|',	
		'fullscreen','source'
	],
	afterCreate : function(){
		KE.html('kindEditor',$('#kindEditor').val());
	}
	
});
$(function(){
	KE.create('kindEditor');
	//设置纯文本到隐藏域，随表单一起提交
	$('#modifyuserForm').submit(function(){
		$('#simpleinfo').val(KE.text('kindEditor'));
	});
	
});
</script>
</body>
</html>