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
<title> 找回密码 </title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<link rel="shortcut icon" type="image/ico" href="website.ico">
<script language="javascript" type="text/javascript" src="common/js/jquery.min.js"></script>
<script language="javascript" type="text/javascript" src="common/js/jquery.cookie.js"></script>
<script language="javascript" type="text/javascript" src="common/js/common.js"></script>
<link rel="stylesheet" type="text/css" href="common/css/common.css">
<style>
label{font-size:13px;font-weight:bold;color:#666;}
#uid{color:#ccc;}
#uid.focus{color:#333;font-weight:bold;font-family:"verdana";}
</style>
</head>
<body>
<c:set var="tip" value="${requestScope.tip}"></c:set>

<div id="wrap">
	<%@ include file="/include/header.jsp" %>
	<div class="anonymous_getpassword_container">
		<div class="getpassword_main">
			<h2><span>找回密码</span></h2>
			<div class="getpassword_inner">
				<form method="post" action="action/global/anonymous_getpassword">
					<c:if test="${ not empty tip}">
						<div class="optTip">提示：<span class="msg">${tip}</span></div>
					</c:if>
					<label for="uid">学号</label>
					<input type="text" id="uid" name="uid" class="uid" value="请输入需要找回密码的学号" onfocus="if($('#uid').val()=='请输入需要找回密码的学号'){ $('#uid').val('');$(this).addClass('focus');} " onblur="if($('#uid').val()==''){ $('#uid').val('请输入需要找回密码的学号');$(this).removeClass('focus');}"/> 
					<input type="submit" value="下一步" /> 
				</form>
			</div>
		</div>
		<div class="getpassword_info">
			<h2>找回密码流程介绍</h2>
			<ol>
				<li class="current">输入需要"找回密码"的学号</li>
				<li>如果您的个人资料已填写有效的邮箱地址，将收到一封系统发出的确认邮件</li>
				<li>点击邮件中的地址，进行密码的重置</li>
				<li style="border-bottom:none;">建议用户用重置密码登录系统后立即修改密码，以保证安全性与可记忆性</li>
			</ol>
		</div>
		<div class="clear"></div>
	</div>
	<%@ include file="/include/footer.jsp" %>
</div>
<script type="text/javascript">
$(function(){
	$('#uid').focus();
});
</script>
</body>
</html>