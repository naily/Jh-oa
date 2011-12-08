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
<title> 管理后台-首页 </title>
</head>
<body>
<c:set var="loginUser" value="${sessionScope.loginUser }" ></c:set>
<c:set var="username" value="${fn:split(loginUser,'&')[2] }" ></c:set>
<c:set var="uid" value="${fn:split(loginUser,'&')[1] }" ></c:set>
<c:set var="userID" value="${fn:split(loginUser,'&')[0] }" ></c:set>

<c:set var="ke" value="${requestScope.ke }"></c:set>
<c:set var="ffiletogetherList" value="${requestScope.ffiletogetherList }"></c:set>
<c:set var="user" value="${requestScope.user }"></c:set>

<div class="crumb">
	<div class="index-title">管理后台主页</div>
	<div class="backNav"><a href="index.jsp">返回登录页</a></div>
	<div class="clear"></div>
</div>
<div class="box">
	<div class="welcome-bar">
		<b>${username }</b>，欢迎您登录精弘OA3.0系统!
	</div>
	<c:set var="info" value=""></c:set>
	<c:if test="${empty user.email  }">
		<c:set var="info" value="${info}${'邮箱、'}"></c:set>		
	</c:if>
	<c:if test="${empty user.telephone }">
		<c:set var="info" value="${info}${'联系方式、' }"></c:set>
	</c:if>
	<c:if test="${empty user.cornet }">
		<c:set var="info" value="${info}${'短号、' }"></c:set>
	</c:if>
	<c:if test="${empty user.academyID }">
		<c:set var="info" value="${info}${'学院、' }"></c:set>
	</c:if>
	<c:if test="${empty user.major }">
		<c:set var="info" value="${info}${'专业、' }"></c:set>
	</c:if>
	<c:if test="${empty user.location }">
		<c:set var="info" value="${info}${'校区、' }"></c:set>
	</c:if>
	<c:if test="${empty user.dormitory }">
		<c:set var="info" value="${info}${'宿舍、' }"></c:set>
	</c:if>
	<c:if test="${empty user.bbs }">
		<c:set var="info" value="${info}${'论坛ID、' }"></c:set>
	</c:if>
	<c:if test="${empty user.birthday }">
		<c:set var="info" value="${info}${'生日、' }"></c:set>
	</c:if>
	<c:if test="${empty user.qq }">
		<c:set var="info" value="${info}${'QQ、' }"></c:set>
	</c:if>
	<c:if test="${empty user.sex }">
		<c:set var="info" value="${info}${'性别、' }"></c:set>
	</c:if>
	<c:choose>
		<c:when test="${not empty info }">
		<div class="user-info-container">
			您的个人资料尚未填写完整,请尽快完善~(<span>${info }</span>) <a href="action/user/viewModifyMyself">现在去完善</a>
		</div>
		</c:when>
	</c:choose>
	<div class="ffile-ke">
		<div class="welcome-ke">
			<h2>当前课表情况<span><a href="action/ke/viewModifyMyself">编辑课表</a></span></h2>
			<c:choose>
				<c:when test="${empty ke }">
					<div class="optTip" style="margin-top:20px;">提示：<span class="msg">未添加课表</span></div>
				</c:when>
				<c:otherwise>
					<table class="dataTableDisplay" style="margin-top:5px;margin-left:0px;width:100%;">
						<colgroup>
							<col width="13%" />
							<col width="11%" />
							<col width="11%" />
							<col width="11%" />
							<col width="11%" />
							<col width="11%" />
							<col width="10%" />
							<col width="11%" />
							<col width="11%" />
						</colgroup>
						<tr>
							<th></th>
							<th class="center">一</th>
							<th class="center">二</th>
							<th class="center">三</th>
							<th class="center">四</th>
							<th class="center">五</th>
							<th></th>
							<th class="center">六</th>
							<th class="center">日</th>
						</tr>
						<c:set var="kevalue" value="${ke.kevalue }"></c:set>
						<c:set var="index" value="-1"></c:set>
						<c:forEach var="i" begin="1" end="11" step="1">
							<tr>
								<c:forEach var="j" begin="0" end="7" step="1">
								<c:set var="current_ke" value="${fn:substring(kevalue, index, index+1) }"></c:set>
								<c:choose>
									<c:when test="${j == 0 }">
									<th class="center">${i >= 5 ? i+1 : i }</th>
									</c:when>
									<c:when test="${j == 5 }">
										<c:choose>
											<c:when test="${current_ke == '0' }">
											<td class="center">-</td>
											</c:when>
											<c:otherwise>
											<td class="center itemOutShow">有</td>
											</c:otherwise>
										</c:choose>
									<th></th>
									</c:when>
									<c:otherwise>
										<c:choose>
											<c:when test="${current_ke == '0' }">
											<td class="center">-</td>
											</c:when>
											<c:otherwise>
											<td class="center itemOutShow">有</td>
											</c:otherwise>
										</c:choose>
									</c:otherwise>
								</c:choose>
								<c:set var="index" value="${index+1 }"></c:set>
								</c:forEach>
								<c:set var="index" value="${index-1 }"></c:set>
							</tr>	
							<c:if test="${i==4 || i==8 }">
							<tr>
								<th></th>
								
								<th></th>
								<th></th>
								<th></th>
								<th></th>
								<th></th>
			
								<th></th>
			
								<th></th>
								<th></th>
							</tr>
							</c:if>
						</c:forEach>
					</table>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="welcome-ffile">
			<h2>最新共享文件<span><a href="action/global/shareFile">全部</a></span></h2>
			<ul>
			<c:forEach var="ffiletogether" items="${ffiletogetherList }">
			<c:set var="file" value="${ffiletogether.file }"></c:set>
			<c:set var="user" value="${ffiletogether.user }"></c:set>
				<li>${user.username }在 <fmt:formatDate type="both" value="${file.addtime }" pattern="yyyy-MM-dd"></fmt:formatDate>上传了<a href="action/global/shareFileShow?id=${file.id}" title="查看文件详细">${file.showname }</a></li>
			</c:forEach>
			</ul>
		</div>
		<div class="clear"></div>
	</div>
	
</div>
</body>
</html>