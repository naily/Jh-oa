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
<title> 所有制度</title>
</head>
<body>
<c:set var="dataList" value="${requestScope.dataList }"></c:set>

<div class="crumb">
	<div class="addofficerule-title">制度</div>
	<div class="backNav"><a href="action/global/manager">返回管理首页</a></div>
	<div class="clear"></div>
</div>
<div class="quick-action">
	<a href="action/officerule/viewAdd" class="button-like"><span class="add-officerule">添加新制度</span></a>
</div>
<div class="box">
	<c:if test="${ not empty tip}">
		<div class="optTip">提示：<span class="msg">${tip}</span></div>
	</c:if>
	<c:choose>
		<c:when test="${empty dataList }">
			<div class="no-data">无任何数据</div>
		</c:when>
		<c:otherwise>
				<table class="dataTable">
					<colgroup>
						<col width="40%" />
						<col width="20%" />
						<col width="20%" />
						<col width="20%" />
					</colgroup>
					<tr>
						<th>制度名</th>
						<th>发布时间</th>
						<th>最后编辑时间</th>
						<th>操作</th>
					</tr>
					<c:forEach var="officerule" items="${dataList }">
					<tr>
						<td>
							<a href="action/officerule/show?id=${officerule.id }" title="${officerule.title }" class="detail-event">
							<c:choose>
								<c:when test="${fn:length(officerule.title) > 20}">
									${fn:substring(officerule.title,0,20)}...
								</c:when>
								<c:otherwise>
									${officerule.title }
								</c:otherwise>
							</c:choose>
							</a>					
						</td>
						<td>
							<fmt:formatDate value="${officerule.addtime }" type="both" />
						</td>
						<td>
							<fmt:formatDate value="${officerule.modifytime }" type="both" />
						</td>
						<td>
							<a href="action/officerule/viewModify?id=${officerule.id }" class="modify">编辑</a>
							<a href="javascript:void(0);" id="action/officerule/delete?id=${officerule.id }" class="delete jqModal">删除</a>
						</td>
					</tr>
					</c:forEach>
				</table>
		</c:otherwise>
	</c:choose>
</div>
</body>
</html>