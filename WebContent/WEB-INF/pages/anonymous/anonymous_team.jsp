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
<title> 团队成员风采  </title>
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
<c:set var="dataList" value="${requestScope.dataList }"></c:set>

<div id="wrap">
	<%@ include file="/include/header.jsp" %>
	<div class="history-product-user">
		<div class="common-title">
			<h2>我们的管理团队</h2>
		</div>
		<div class="subNav">
			<a href="action/global/anonymous_event">历史</a>
			<a href="action/global/anonymous_product">产品</a>
			<span>团队</span>
		</div>
		<div class="clear"></div>
		<div class="common-panel">
			<div class="inner-content-panel">
				<div class="team-container">
				<c:choose>
					<c:when test="${empty dataList }">
					<div class="no-data">无任何管理团队成员</div>
					</c:when>
					<c:otherwise>
						<c:forEach var="teamtogether" items="${dataList }">
							<c:set var="user" value="${teamtogether.user }"></c:set>
							<div class="team-item">
								<a href="action/global/anonymous_team_show?id=${teamtogether.id }">
									<img src="${teamtogether.headimage }" alt="${user.username }的头像" />
								</a>
								<div class="user-info-container">
									<p>${user.username }</p>
								</div>
							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
				</div>
				<%@ include file="/include/office.jsp" %>
			</div>
		</div>
	</div>
	<%@ include file="/include/footer.jsp" %>
</div>
<script type="text/javascript">
$(function(){
	$('.year').change(function(){
		goUrl('action/global/anonymous_event?year='+$(this).val());
	});
});
</script>
</body>
</html>