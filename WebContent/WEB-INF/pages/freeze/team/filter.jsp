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
<title>所有管理团队成员</title>
</head>
<body>
<c:set var="currentPage" value="${requestScope.currentPage}"></c:set>
<c:set var="countPerPage" value="${requestScope.countPerPage}"></c:set>
<c:set var="pager" value="${requestScope.pager}"></c:set>
<c:set var="maxPagerShowLength" value="${requestScope.maxPagerShowLength}"></c:set>
<c:set var="countPerPageList" value="20,40,80,160" />
<c:set var="dataList" value="${requestScope.dataList }"></c:set>
<c:set var="model" value="${requestScope.model }"></c:set>
<c:set var="userList" value="${requestScope.userList }"></c:set>

<c:set var="currentUser" value=""></c:set>
<c:forEach var="user" items="${userList }">
	<c:choose>
		<c:when test="${model.userID == user.id }">
			<c:set var="currentUser" value="${user.username }"></c:set>
		</c:when>
	</c:choose>
</c:forEach>
<c:set var="queryCondition" value="&userID=${model.userID }&start=${model.start }&end=${model.end}"></c:set>

	<div class="crumb">
		<div class="addteam-title">管理团队成员</div>
		<div class="backNav">
			<a href="action/global/manager">返回管理首页</a>
		</div>
		<div class="clear"></div>
	</div>
	<div class="quick-action">
		<a href="action/team/viewAdd" class="button-like"><span class="add-team">添加新管理团队成员</span></a>
	</div>
	<div class="box">
		<c:if test="${ not empty tip}">
			<div class="optTip">
				提示：<span class="msg">${tip}</span>
			</div>
		</c:if>
		<c:choose>
			<c:when test="${empty dataList }">
				<div class="no-data">无任何数据</div>
			</c:when>
			<c:otherwise>
					<div class="searchContainer">
						<div class="searchHeader">
							<h2>搜索</h2>
							<c:if test="${not empty model }">
								<div class="searchItemContainer">
									<c:if test="${not empty model.userID && model.userID !=-1 }">
									<div class="searchItem">
										<span class="searchItem-label">用户为</span><span class="searchItem-value">${currentUser }</span><a href="action/team/filter?by=${by }&order=${order }&page=${pager.currentPage}&countPerPage=${pager.countPerPage}&userID=-1&start=${model.start}&end=${model.end}" class="sclose" title="去掉这个筛选条件"><span>关闭</span></a></div>
									</c:if>
									<c:if test="${not empty model.start && model.start !=0}">
									<div class="searchItem">
										<span class="searchItem-label">开始时间为</span><span class="searchItem-value">${model.start }</span><a href="action/team/filter?by=${by }&order=${order }&page=${pager.currentPage}&countPerPage=${pager.countPerPage}&userID=${model.userID }&start=0&end=${model.end}" class="sclose" title="去掉这个筛选条件"><span>关闭</span></a></div>
									</c:if>
									<c:if test="${not empty model.end && model.end !=0}">
									<div class="searchItem">
										<span class="searchItem-label">结束时间为</span><span class="searchItem-value">${model.end }</span><a href="action/team/filter?by=${by }&order=${order }&page=${pager.currentPage}&countPerPage=${pager.countPerPage}&userID=${model.userID }&start=${model.start}&end=0" class="sclose" title="去掉这个筛选条件"><span>关闭</span></a></div>
									</c:if>
								</div>
							</c:if>
						</div>
						<div class="searchInner">
						<form action="action/team/filter">
							<input type="hidden" name="by" value="${by}" />
							<input type="hidden" name="order" value="${order}" />
							<p class="formItem">
								<label class="condition-label" for="userID">用户</label>
								<select id="userID" name="userID" style="width:180px;">
									<option value="-1">== 请选择用户 ==</option>
									<c:choose>
										<c:when test="${ empty userList }">
											<option value="0">无</option>
										</c:when>
										<c:otherwise>
											<c:forEach var="user" items="${userList }">
												<c:choose>
													<c:when test="${model.userID== user.id }">
														<option value="${user.id }" selected="selected">${user.uid } -- ${user.username }</option>
													</c:when>
													<c:otherwise>
														<option value="${user.id }">${user.uid } -- ${user.username }</option>
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</c:otherwise>
									</c:choose>		
								</select>
								<span style="position:relative;">
									<input type="text" name="fastname" id="fastname" class="fastname" autocomplete="off" value="请输入需要查找的用户名" onfocus="if($('#fastname').val()=='请输入需要查找的用户名'){ $('#fastname').val('');$(this).addClass('focus');} " onblur="if($('#fastname').val()==''){ $('#fastname').val('请输入需要查找的用户名');$(this).removeClass('focus');}"/>
									<span id="userList"></span> 
								</span>
								<label for="start" class="condition-label">任期开始时间</label>
								<select id="start" name="start"  style="width:120px;">
									<option value="0">== 请选择 ==</option>
									<c:forEach var="s" begin="2011" end="2020" step="1">
										<c:choose>
											<c:when test="${model.start == s }">
												<option value="${s }" selected="selected">${s }</option>
											</c:when>
											<c:otherwise>
												<option value="${s }">${s }</option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
								</select>
								<label for="end" class="condition-label">任期结束时间</label>
								<select id="end" name="end"  style="width:120px;">
									<option value="0">== 请选择 ==</option>
									<c:forEach var="e" begin="2011" end="2020" step="1">
										<c:choose>
											<c:when test="${model.end == e }">
												<option value="${e }" selected="selected">${e }</option>
											</c:when>
											<c:otherwise>
												<option value="${e }">${e }</option>
											</c:otherwise>
										</c:choose> 
									</c:forEach>
								</select>	
								<input type="submit" value="搜索"  />
							</p>
						</form>
						</div>
					</div>
				<!-- 分页条 start -->
				<div id="pageBar">
					<div id="barL" class="l">
						<!-- 搜索式分页 -->
						<!-- 首页 -->
						<c:choose>
							<c:when test="${pager.currentPage > 1 }">
								<a
									href="action/team/filter?by=${by }&order=${order }&page=1&countPerPage=${pager.countPerPage}${queryCondition}"
									class="page-slice first" title="首页">&lt;&lt;</a>
							</c:when>
							<c:otherwise>
								<span class="page-slice-disabled first">&lt;&lt;</span>
							</c:otherwise>
						</c:choose>
						<!-- 上一页 -->
						<c:choose>
							<c:when test="${pager.currentPage > 1 }">
								<a
									href="action/team/filter?by=${by }&order=${order }&page=${pager.currentPage - 1 }&countPerPage=${pager.countPerPage}${queryCondition}"
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
								<c:forEach var="p" begin="1" end="${maxPagerShowLength }"
									step="1">
									<c:choose>
										<c:when test="${p==pager.currentPage }">
											<span class="currentPage">${p }</span>
										</c:when>
										<c:otherwise>
											<a
												href="action/team/filter?by=${by }&order=${order }&page=${p }&countPerPage=${pager.countPerPage}${queryCondition}"
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
											<a
												href="action/team/filter?by=${by }&order=${order }&page=${p }&countPerPage=${pager.countPerPage}${queryCondition}"
												class="page-slice" title="第${p }页">${p }</a>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</c:when>
							<c:when
								test="${(pager.totalPage > maxPagerShowLength) && (pager.currentPage + maxPagerShowLength-1 > pager.totalPage)}">
								<c:forEach var="p"
									begin="${pager.totalPage-maxPagerShowLength + 1}"
									end="${ pager.totalPage}" step="1">
									<c:choose>
										<c:when test="${p==pager.currentPage }">
											<span class="currentPage">${p }</span>
										</c:when>
										<c:otherwise>
											<a
												href="action/team/filter?by=${by }&order=${order }&page=${p }&countPerPage=${pager.countPerPage}${queryCondition}"
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
											<a
												href="action/team/filter?by=${by }&order=${order }&page=${p }&countPerPage=${pager.countPerPage}${queryCondition}"
												class="page-slice" title="第${p }页">${p }</a>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</c:otherwise>
						</c:choose>
						<!-- 下一页 -->
						<c:choose>
							<c:when test="${pager.currentPage < pager.totalPage }">
								<a
									href="action/team/filter?by=${by }&order=${order }&page=${pager.currentPage + 1}&countPerPage=${pager.countPerPage}${queryCondition}"
									class="page-slice next" title="下一页">&gt;</a>
							</c:when>
							<c:otherwise>
								<span class="page-slice-disabled next">&gt;</span>
							</c:otherwise>
						</c:choose>
						<!-- 尾页 -->
						<c:choose>
							<c:when test="${pager.currentPage < pager.totalPage }">
								<a
									href="action/team/filter?by=${by }&order=${order }&page=${pager.totalPage}&countPerPage=${pager.countPerPage}${queryCondition}"
									class="page-slice last" title="尾页">&gt;&gt;</a>
							</c:when>
							<c:otherwise>
								<span class="page-slice-disabled last">&gt;&gt;</span>
							</c:otherwise>
						</c:choose>
					</div>
					<div id="barR" class="r">
						${pager.currentPage }/${pager.totalPage }页，共${pager.totalCount}条 <select
							id="countPerPage" name="countPerPage">
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
						</select> <input type="button" value="GO" class="go-bt"
							id="action/team/filter?by=${by }&order=${order }&page=${pager.currentPage}${queryCondition}" />
					</div>
					<div class="clear"></div>
				</div>
				<!-- 分页 end -->
				<table class="dataTable">
					<colgroup>
						<col width="10%" />
						<col width="10%" />
						<col width="10%" />
						<col width="55%" />
						<col width="15%" />
					</colgroup>
					<tr>
						<th>开始时间</th>
						<th>结束时间</th>
						<th>姓名</th>
						<th>简介</th>
						<th>操作</th>
					</tr>
					<c:forEach var="teamtogether" items="${dataList }">
					<c:set var="user" value="${teamtogether.user }"></c:set>
						<tr>
							<td>${teamtogether.start }年</td>
							<td>${teamtogether.end }年</td>
							<td>
								<a href="action/global/anonymous_team_show?id=${teamtogether.id }" title="查看此管理团队成员详细"
									class="detail-team">
								${user.username }
								</a>
							</td>
							<td>
								<c:choose>
								<c:when test="${empty user.simpleinfo}">
									暂未填写
								</c:when>
								<c:when test="${fn:length(user.simpleinfo) > 20}">
									${fn:substring(user.simpleinfo,0,20)}...
								</c:when>
								<c:otherwise>
									${user.simpleinfo }
								</c:otherwise>
							</c:choose>
							</td>
							<td>
								<a href="action/team/viewModify?id=${teamtogether.id }" class="modify">编辑</a>
								<a href="javascript:void(0);" id="action/team/delete?id=${teamtogether.id }" class="delete jqModal" >删除</a>
							</td>
						</tr>
					</c:forEach>
				</table>
				<!-- 分页条 start -->
				<div id="pageBar">
					<div id="barL" class="l">
						<!-- 搜索式分页 -->
						<!-- 首页 -->
						<c:choose>
							<c:when test="${pager.currentPage > 1 }">
								<a
									href="action/team/filter?by=${by }&order=${order }&page=1&countPerPage=${pager.countPerPage}${queryCondition}"
									class="page-slice first" title="首页">&lt;&lt;</a>
							</c:when>
							<c:otherwise>
								<span class="page-slice-disabled first">&lt;&lt;</span>
							</c:otherwise>
						</c:choose>
						<!-- 上一页 -->
						<c:choose>
							<c:when test="${pager.currentPage > 1 }">
								<a
									href="action/team/filter?by=${by }&order=${order }&page=${pager.currentPage - 1 }&countPerPage=${pager.countPerPage}${queryCondition}"
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
								<c:forEach var="p" begin="1" end="${maxPagerShowLength }"
									step="1">
									<c:choose>
										<c:when test="${p==pager.currentPage }">
											<span class="currentPage">${p }</span>
										</c:when>
										<c:otherwise>
											<a
												href="action/team/filter?by=${by }&order=${order }&page=${p }&countPerPage=${pager.countPerPage}${queryCondition}"
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
											<a
												href="action/team/filter?by=${by }&order=${order }&page=${p }&countPerPage=${pager.countPerPage}${queryCondition}"
												class="page-slice" title="第${p }页">${p }</a>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</c:when>
							<c:when
								test="${(pager.totalPage > maxPagerShowLength) && (pager.currentPage + maxPagerShowLength-1 > pager.totalPage)}">
								<c:forEach var="p"
									begin="${pager.totalPage-maxPagerShowLength + 1}"
									end="${ pager.totalPage}" step="1">
									<c:choose>
										<c:when test="${p==pager.currentPage }">
											<span class="currentPage">${p }</span>
										</c:when>
										<c:otherwise>
											<a
												href="action/team/filter?by=${by }&order=${order }&page=${p }&countPerPage=${pager.countPerPage}${queryCondition}"
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
											<a
												href="action/team/filter?by=${by }&order=${order }&page=${p }&countPerPage=${pager.countPerPage}${queryCondition}"
												class="page-slice" title="第${p }页">${p }</a>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</c:otherwise>
						</c:choose>
						<!-- 下一页 -->
						<c:choose>
							<c:when test="${pager.currentPage < pager.totalPage }">
								<a
									href="action/team/filter?by=${by }&order=${order }&page=${pager.currentPage + 1}&countPerPage=${pager.countPerPage}${queryCondition}"
									class="page-slice next" title="下一页">&gt;</a>
							</c:when>
							<c:otherwise>
								<span class="page-slice-disabled next">&gt;</span>
							</c:otherwise>
						</c:choose>
						<!-- 尾页 -->
						<c:choose>
							<c:when test="${pager.currentPage < pager.totalPage }">
								<a
									href="action/team/filter?by=${by }&order=${order }&page=${pager.totalPage}&countPerPage=${pager.countPerPage}${queryCondition}"
									class="page-slice last" title="尾页">&gt;&gt;</a>
							</c:when>
							<c:otherwise>
								<span class="page-slice-disabled last">&gt;&gt;</span>
							</c:otherwise>
						</c:choose>
					</div>
					<div id="barR" class="r">
						${pager.currentPage }/${pager.totalPage }页，共${pager.totalCount}条 <select
							id="countPerPage" name="countPerPage">
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
						</select> <input type="button" value="GO" class="go-bt"
							id="action/team/filter?by=${by }&order=${order }&page=${pager.currentPage}${queryCondition}" />
					</div>
					<div class="clear"></div>
				</div>
				<!-- 分页 end -->
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>