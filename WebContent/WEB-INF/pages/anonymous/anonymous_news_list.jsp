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
<title> 所有动态 </title>
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
<c:set var="currentPage" value="${requestScope.currentPage}"></c:set>
<c:set var="countPerPage" value="${requestScope.countPerPage}"></c:set>
<c:set var="pager" value="${requestScope.pager}"></c:set>
<c:set var="maxPagerShowLength" value="${requestScope.maxPagerShowLength}"></c:set>
<c:set var="countPerPageList" value="20,40,80,160" />

<c:set var="dataList" value="${requestScope.dataList }"></c:set>

<div id="wrap">
	<%@ include file="/include/header.jsp" %>
	<div class="anonymous_news_container">
		<div class="common-title">
			<h2>所有动态</h2>
		</div>
		<div class="subNav common-nav">
			<a href="index.jsp" title="返回首页">返回首页</a> 
		</div>
		<div class="clear"></div>
		<div class="common-panel">
			<div class="inner-content-panel">
				<c:choose>
					<c:when test="${empty dataList }">
						<div class="no-data">无任何数据</div>
					</c:when>
					<c:otherwise>
						<ul id="newsListContainter">
						<c:forEach var="news" items="${dataList }">
							<li>
								<a href="action/global/anonymous_news_show?id=${news.id }" >
								<c:choose>
									<c:when test="${fn:length(news.title) > 40 }">
										${fn:substring(news.title,0,40) } ...
									</c:when>
									<c:otherwise>
										${news.title }
									</c:otherwise>
								</c:choose>
								</a>
								<span>发布时间：[<fmt:formatDate value="${news.addtime }"  type="both" pattern="yyyy/MM/dd" />]</span>
							</li>							
						</c:forEach>
						</ul>
						<!-- 分页条 start -->
						<div id="pageBar">
							<div id="barL" class="l">
								<!-- 搜索式分页 -->
								<!-- 首页 -->
								<c:choose>
									<c:when test="${pager.currentPage > 1 }">
									<a href="action/global/anonymous_news_list?page=1&countPerPage=${pager.countPerPage}"
										class="page-slice first" title="首页">&lt;&lt;</a>
									</c:when>
									<c:otherwise>
										<span class="page-slice-disabled first">&lt;&lt;</span>
									</c:otherwise>
								</c:choose> 
								<!-- 上一页 -->
								<c:choose>
									<c:when test="${pager.currentPage > 1 }">
										<a href="action/global/anonymous_news_list?page=${pager.currentPage - 1 }&countPerPage=${pager.countPerPage}"
											class="page-slice prevent" title="上一页">&lt;</a>
									</c:when>
									<c:otherwise>
										<span class="page-slice-disabled prevent">&lt;</span>
									</c:otherwise>
								</c:choose> 
								<c:choose>
									<c:when test="${pager.totalPage == 1}">
										<span class="page-slice-disabled">${1 }</span>
									</c:when>
									<c:when
										test="${(pager.totalPage > maxPagerShowLength) && (pager.currentPage + maxPagerShowLength-1 <= pager.totalPage) && pager.currentPage <= maxPagerShowLength}">
										<c:forEach var="p" begin="1"
											end="${maxPagerShowLength }" step="1">
											<c:choose>
												<c:when test="${p==pager.currentPage }">
													<span class="currentPage">${p }</span>
												</c:when>
												<c:otherwise>
													<a href="action/global/anonymous_news_list?page=${p }&countPerPage=${pager.countPerPage}"
														class="page-slice" title="第${p }页">${p }</a>
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</c:when>
									<c:when
										test="${(pager.totalPage > maxPagerShowLength) && (pager.currentPage + maxPagerShowLength-1 <= pager.totalPage)}">
										<c:forEach var="p" begin="${pager.currentPage}"
											end="${pager.currentPage + maxPagerShowLength-1}" step="1">
											<c:choose>
												<c:when test="${p==pager.currentPage }">
													<span class="currentPage">${p }</span>
												</c:when>
												<c:otherwise>
													<a href="action/global/anonymous_news_list?page=${p }&countPerPage=${pager.countPerPage}"
														class="page-slice" title="第${p }页">${p }</a>
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</c:when>
									<c:when
										test="${(pager.totalPage > maxPagerShowLength) && (pager.currentPage + maxPagerShowLength-1 > pager.totalPage)}">
										<c:forEach var="p" begin="${pager.totalPage-maxPagerShowLength + 1}"
											end="${ pager.totalPage}" step="1">
											<c:choose>
												<c:when test="${p==pager.currentPage }">
													<span class="currentPage">${p }</span>
												</c:when>
												<c:otherwise>
													<a href="action/global/anonymous_news_list?page=${p }&countPerPage=${pager.countPerPage}"
														class="page-slice" title="第${p }页">${p }</a>
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<c:forEach var="p" begin="1" end="${pager.totalPage }" step="1">
											<c:choose>
												<c:when test="${p==pager.currentPage }">
													<span class="currentPage">${p }</span>
												</c:when>
												<c:otherwise>
													<a href="action/global/anonymous_news_list?page=${p }&countPerPage=${pager.countPerPage}"
														class="page-slice" title="第${p }页">${p }</a>
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</c:otherwise>
								</c:choose> 
								<!-- 下一页 -->
								<c:choose>
									<c:when test="${pager.currentPage < pager.totalPage }">
										<a href="action/global/anonymous_news_list?page=${pager.currentPage + 1}&countPerPage=${pager.countPerPage}"
											 class="page-slice next" title="下一页">&gt;</a>
									</c:when>
									<c:otherwise>
										<span class="page-slice-disabled next">&gt;</span>
									</c:otherwise>
								</c:choose>
								<!-- 尾页 -->
								<c:choose>
									<c:when test="${pager.currentPage < pager.totalPage }">
										<a href="action/global/anonymous_news_list?page=${pager.totalPage}&countPerPage=${pager.countPerPage}"
											 class="page-slice last" title="尾页">&gt;&gt;</a>
									</c:when>
									<c:otherwise>
										<span class="page-slice-disabled last">&gt;&gt;</span>
									</c:otherwise>
								</c:choose>
							</div>
							<div id="barR" class="r">
								${pager.currentPage }/${pager.totalPage }页，共${pager.totalCount}条
								<select id="countPerPage" name="countPerPage">
									<c:forEach var="cpp" items="${countPerPageList }">
									<c:choose>
										<c:when test="${cpp==countPerPage }">
											<option value="${cpp }" selected="selected">${cpp }</option>
										</c:when>
										<c:otherwise>
											<option value="${cpp }">${cpp }</option>
										</c:otherwise>
									</c:choose>
									</c:forEach>
								</select>
								<input type="button" value="GO" class="go-bt" id="action/global/anonymous_news_list?page=${pager.currentPage}"/>
							</div>
							<div class="clear"></div>
						</div>
						<!-- 分页 end -->
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
	<%@ include file="/include/footer.jsp" %>
</div>
<script type="text/javascript">
$(function(){
	$('.go-bt').click(function(){
		var self=$(this);
		var countPerPage=$('#countPerPage').val();
		goUrl(self.attr('id')+'&countPerPage='+countPerPage);
	 });
});
</script>
</body>
</html>