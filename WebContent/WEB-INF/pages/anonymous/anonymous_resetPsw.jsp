<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.zjut.oa.db.*" %>
<%@ page import="com.zjut.oa.mvc.action.*" %>
<%@ page import="com.zjut.oa.mvc.core.*" %>
<%@ page import="com.zjut.oa.mvc.domain.*" %>
<%@ page import="com.zjut.oa.mvc.filter.*" %>
<%@ page import="com.zjut.oa.tool.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>"></base> 
<title> 重置密码 </title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<link rel="shortcut icon" type="image/ico" href="website.ico">
<script language="javascript" type="text/javascript" src="common/js/jquery.min.js"></script>
<script language="javascript" type="text/javascript" src="common/js/jquery.cookie.js"></script>
<script language="javascript" type="text/javascript" src="common/js/common.js"></script>
<link rel="stylesheet" type="text/css" href="common/css/common.css">
</head>
<body>
<c:set var="tip" value="${requestScope.tip}"></c:set>

<div id="wrap">
	<%@ include file="/include/header.jsp" %>
	<div class="anonymous_getpassword_container">
		<div class="getpassword_main">
			<h2><span>找回密码</span></h2>
			<div class="getpassword_inner">
				<c:if test="${ not empty tip}">
					<div class="optTip">提示：<span class="msg">${tip}</span></div>
				</c:if>
				<a href="action/global/anonymous_view_getpassword"  class="quick-confirm-bt">重新开始</a>
				<a href="index.jsp"  class="quick-confirm-bt" style="margin-left:30px;">返回登录</a>
			</div>
		</div>
		<div class="getpassword_info">
			<h2>找回密码流程介绍</h2>
			<ol>
				<li><b>第一步：</b>输入您的学号</li>
				<li><b>第二步：</b>如果您的个人资料中填写的有效邮箱地址，以便系统发送一封确认邮件给您</li>
				<li class="current"><b>第三步：</b>点击确认邮件中的链接，系统将为您重置密码</li>
				<li><b>第四步：</b>使用邮件中的新密码，您便可正常登录</li>
				<li style="border-bottom:none;"><b>温馨提醒：</b>建议您用新密码登录后立即修改密码，以保证密码安全性与可记性</li>
			</ol>
		</div>
		<div class="clear"></div>
	</div>
	<%@ include file="/include/footer.jsp" %>
</div>
</body>
</html>