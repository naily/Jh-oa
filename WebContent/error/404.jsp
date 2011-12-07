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
<title> 页面找不到  </title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<link rel="shortcut icon" type="image/ico" href="website.ico">
<script language="javascript" type="text/javascript" src="common/js/jquery.min.js"></script>
<script language="javascript" type="text/javascript" src="common/js/jquery.cookie.js"></script>
<script language="javascript" type="text/javascript" src="common/js/common.js"></script>
<script charset="UTF-8" type="text/javascript" src="kindeditor/kindeditor.js"></script>
<link rel="stylesheet" type="text/css" href="common/css/common.css">
<style type="text/css">
body{text-align:left;}
#shieldContainer{position:absolute;top:50%;left:50%;width:600px;height:300px;
margin-top:-150px;margin-left:-300px;background-color:#fff;color:#666;border:1px #ddd solid;
background-image:url(common/images/forbidden-repeat-bg.jpg);background-position: left bottom;
background-repeat: repeat-x;
}
#inner{width:100%;height:100%;background:url(common/images/forbidden-bg.png) bottom right no-repeat;}
#shieldContainer h2{padding:50px 50px 30px;font-size:16px;font-weight:bold;color:#666;}
#shieldContainerInner{margin:20px 50px;}
#shieldContainerInner li{padding-left:30px;line-height:30px;height:30px;background:url(common/images/bg-news-li.gif) 5px 13px no-repeat;}
#shieldContainerInner li a,#shieldContainerInner li a:visited,#shieldContainerInner li a:hover,#shieldContainerInner li a:active{font-size:14px;color:#666;text-decoration:none;}
#shieldContainerInner li a:hover{color:#333;text-decoration:underline;}
</style>
</head>
<body>
<div id="shieldContainer">
	<div id="inner">
		<h2>对不起，无法找到您所访问的网页！</h2>
		<ul id="shieldContainerInner">
			<li><a href="javascript:void(0);" onclick="javascript:history.go(-1);">回到上一次访问页面</a></li>
			<li><a href="index.jsp">返回登录主页</a></li>
			<li><a href="action/global/manager">管理主页</a></li>
		</ul>
	</div>
</div>
</body>
</html>