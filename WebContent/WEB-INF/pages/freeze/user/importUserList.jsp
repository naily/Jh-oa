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
<title> 批量导入用户 </title>
</head>
<body>
<c:set var="tip" value="${requestScope.tip}"></c:set>
<c:set var="failList" value="${requestScope.failList }"></c:set>

<div class="crumb">
	<div class="adduser-title">批量导入失败用户列表</div>
	<div class="backNav"><a href="action/user/filter">返回用户列表</a></div>
	<div class="clear"></div>
</div>
<div class="box">
	<div class="actionTip">温馨提醒：<span class="tip-words">以下为导入失败的用户列表</span></div>
	<c:choose>
		<c:when test="${empty failList }">
			<div class="optTip m30">提示：<span class="msg">恭喜您数据导入全部完成，点击“完成”浏览用户</span></div>
		</c:when>
		<c:otherwise>
			<table class="dataTable">
				<colgroup>
					<col width="5%" />
					<col width="20%" />
				</colgroup>
				<tr>
					<th>学号</th>
					<th>姓名</th>
				</tr>
				<c:forEach var="user" items="${failList }">
					<td>${user.uid }</td>
					<td>${user.username }</td>
				</c:forEach>
			</table>
		</c:otherwise>
	</c:choose>
	<div class="formItem">
		<input type="button" value="完成" class="bt bt-adduserrole" onclick="goUrl('action/user/filter')"/>
	</div>
</div>
<script type="text/javascript">
$(function(){

});
</script>
</body>
</html>