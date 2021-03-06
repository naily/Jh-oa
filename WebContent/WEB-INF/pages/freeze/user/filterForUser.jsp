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
<title> 找精弘人 </title>
</head>
<body>
<c:set var="currentPage" value="${requestScope.currentPage}"></c:set>
<c:set var="countPerPage" value="${requestScope.countPerPage}"></c:set>
<c:set var="pager" value="${requestScope.pager}"></c:set>
<c:set var="maxPagerShowLength" value="${requestScope.maxPagerShowLength}"></c:set>
<c:set var="countPerPageList" value="20,40,80,160" />


<c:set var="model" value="${requestScope.model }" ></c:set>
<c:set var="by" value="${requestScope.by }"></c:set>
<c:set var="order" value="${requestScope.order }"></c:set>

<c:set var="dataList" value="${requestScope.dataList }"></c:set>
<c:set var="academyList" value="${requestScope.academyList }"></c:set>
<c:set var="departmentList" value="${requestScope.departmentList }"></c:set>
<c:set var="jobList" value="${requestScope.jobList }"></c:set>
<c:set var="locationList" value="屏峰,朝晖,之江" />
<c:set var="islockList" value="0,1" />
<c:set var="sexList" value="男,女" />
<c:set var="currentAcademyName" ></c:set>
<c:set var="currentDepartmentName" ></c:set>
<c:set var="currentJobName" ></c:set>

<c:forEach var="academy" items="${academyList }">
	<c:choose>
		<c:when test="${academy.id == model.academyID }">
			<c:set var="currentAcademyName" value="${academy.academyname }"></c:set>
		</c:when>
	</c:choose>
</c:forEach>
<c:forEach var="department" items="${departmentList }">
	<c:choose>
		<c:when test="${department.id == model.departmentID }">
			<c:set var="currentDepartmentName" value="${department.departmentname }"></c:set>
		</c:when>
	</c:choose>
</c:forEach>
<c:forEach var="job" items="${jobList }">
	<c:choose>
		<c:when test="${job.id == model.jobID }">
			<c:set var="currentJobName" value="${job.jobname }"></c:set>
		</c:when>
	</c:choose>
</c:forEach>

<c:set var="queryCondition" value="&uid=${model.uid }&username=${model.username }&email=${model.email }&cornet=${model.cornet }&telephone=${model.telephone }&academyID=${model.academyID }&major=${model.major }&location=${model.location }&dormitory=${model.dormitory }&islock=${model.islock }&departmentID=${model.departmentID }&bbs=${model.bbs }&jobID=${model.jobID }&qq=${model.qq }&sex=${model.sex }"></c:set>
<c:set var="condition" value="?uid=${model.uid }&username=${model.username }&email=${model.email }&cornet=${model.cornet }&telephone=${model.telephone }&academyID=${model.academyID }&major=${model.major }&location=${model.location }&dormitory=${model.dormitory }&islock=${model.islock }&departmentID=${model.departmentID }&bbs=${model.bbs }&jobID=${model.jobID }&qq=${model.qq }&sex=${model.sex }"></c:set>

<div class="crumb">
	<div class="adduser-title">精弘人</div>
	<div class="backNav"><a href="action/global/manager">返回管理首页</a></div>
	<div class="clear"></div>
</div>
<div class="box">
	<c:if test="${ not empty tip}">
		<div class="optTip">提示：<span class="msg">${tip}</span></div>
	</c:if>
	<div class="searchContainer">
		<div class="searchHeader">
			<h2>
				搜索
				<span class="quick-action-link-bar">
					<a href="action/user/filterForUser?islock=1" class="button-like">已锁定列表</a>
					<a href="action/user/filterForUser?islock=0" class="button-like">在职列表</a>
				</span>
			</h2>
			<c:if test="${not empty model }">
				<div class="searchItemContainer">
					<c:if test="${not empty model.uid }">
					<div class="searchItem">
						<span class="searchItem-label">学号包含</span><span class="searchItem-value">${model.uid }</span><a href="action/user/filterForUser?by=${by }&order=${order }&page=${pager.currentPage}&countPerPage=${pager.countPerPage}&username=${model.username}&email=${model.email}&cornet=${model.cornet}&telephone=${model.telephone}&academyID=${model.academyID}&major=${model.major }&location=${model.location }&dormitory=${model.dormitory }&islock=${model.islock}&departmentID=${model.departmentID}&jobID=${model.jobID}&bbs=${model.bbs}&qq=${model.qq}&sex=${model.sex}" class="sclose" title="去掉这个筛选条件"><span>关闭</span></a></div>
					</c:if>
					<c:if test="${not empty model.username }">
					<div class="searchItem">
						<span class="searchItem-label">姓名包含</span><span class="searchItem-value">${model.username }</span><a href="action/user/filterForUser?by=${by }&order=${order }&page=${pager.currentPage}&countPerPage=${pager.countPerPage}&uid=${model.uid}&email=${model.email}&cornet=${model.cornet}&telephone=${model.telephone}&academyID=${model.academyID}&major=${model.major }&location=${model.location }&dormitory=${model.dormitory }&islock=${model.islock}&departmentID=${model.departmentID}&jobID=${model.jobID}&bbs=${model.bbs}&qq=${model.qq}&sex=${model.sex}" class="sclose" title="去掉这个筛选条件"><span>关闭</span></a></div>
					</c:if>
					<c:if test="${not empty model.email }">
					<div class="searchItem">
						<span class="searchItem-label">邮箱包含</span><span class="searchItem-value">${model.email }</span><a href="action/user/filterForUser?by=${by }&order=${order }&page=${pager.currentPage}&countPerPage=${pager.countPerPage}&uid=${model.uid}&username=${model.username}&cornet=${model.cornet}&telephone=${model.telephone}&academyID=${model.academyID}&major=${model.major }&location=${model.location }&dormitory=${model.dormitory }&islock=${model.islock}&departmentID=${model.departmentID}&jobID=${model.jobID}&bbs=${model.bbs}&qq=${model.qq}&sex=${model.sex}" class="sclose" title="去掉这个筛选条件"><span>关闭</span></a></div>
					</c:if>
					<c:if test="${not empty model.cornet }">
					<div class="searchItem">
						<span class="searchItem-label">短号包含</span><span class="searchItem-value">${model.cornet }</span><a href="action/user/filterForUser?by=${by }&order=${order }&page=${pager.currentPage}&countPerPage=${pager.countPerPage}&uid=${model.uid}&username=${model.username}&email=${model.email}&telephone=${model.telephone}&academyID=${model.academyID}&major=${model.major }&location=${model.location }&dormitory=${model.dormitory }&islock=${model.islock}&departmentID=${model.departmentID}&jobID=${model.jobID}&bbs=${model.bbs}&qq=${model.qq}&sex=${model.sex}" class="sclose" title="去掉这个筛选条件"><span>关闭</span></a></div>
					</c:if>
					<c:if test="${not empty model.telephone }">
					<div class="searchItem">
						<span class="searchItem-label">长号包含</span><span class="searchItem-value">${model.telephone }</span><a href="action/user/filterForUser?by=${by }&order=${order }&page=${pager.currentPage}&countPerPage=${pager.countPerPage}&uid=${model.uid}&username=${model.username}&email=${model.email}&cornet=${model.cornet}&academyID=${model.academyID}&major=${model.major }&location=${model.location }&dormitory=${model.dormitory }&islock=${model.islock}&departmentID=${model.departmentID}&jobID=${model.jobID}&bbs=${model.bbs}&qq=${model.qq}&sex=${model.sex}" class="sclose" title="去掉这个筛选条件"><span>关闭</span></a></div>
					</c:if>
					<c:if test="${not empty model.academyID && model.academyID != 0 }">
					<div class="searchItem">
						<span class="searchItem-label">学院</span><span class="searchItem-value">${currentAcademyName }</span><a href="action/user/filterForUser?by=${by }&order=${order }&page=${pager.currentPage}&countPerPage=${pager.countPerPage}&uid=${model.uid}&username=${model.username}&email=${model.email}&cornet=${model.cornet}&telephone=${model.telephone}&major=${model.major }&location=${model.location }&dormitory=${model.dormitory }&islock=${model.islock}&departmentID=${model.departmentID}&jobID=${model.jobID}&bbs=${model.bbs}&qq=${model.qq}&sex=${model.sex}" class="sclose" title="去掉这个筛选条件"><span>关闭</span></a></div>
					</c:if>
					<c:if test="${not empty model.major }">
					<div class="searchItem">
						<span class="searchItem-label">专业班级包含</span><span class="searchItem-value">${model.major }</span><a href="action/user/filterForUser?by=${by }&order=${order }&page=${pager.currentPage}&countPerPage=${pager.countPerPage}&uid=${model.uid}&username=${model.username}&email=${model.email}&cornet=${model.cornet}&telephone=${model.telephone}&academyID=${model.academyID}&location=${model.location }&dormitory=${model.dormitory }&islock=${model.islock}&departmentID=${model.departmentID}&jobID=${model.jobID}&bbs=${model.bbs}&qq=${model.qq}&sex=${model.sex}" class="sclose" title="去掉这个筛选条件"><span>关闭</span></a></div>
					</c:if>
					<c:if test="${not empty model.location && model.location != 0}">
					<div class="searchItem">
						<span class="searchItem-label">所在校区</span><span class="searchItem-value">${model.location }</span><a href="action/user/filterForUser?by=${by }&order=${order }&page=${pager.currentPage}&countPerPage=${pager.countPerPage}&uid=${model.uid}&username=${model.username}&email=${model.email}&cornet=${model.cornet}&telephone=${model.telephone}&academyID=${model.academyID}&major=${model.major }&dormitory=${model.dormitory }&islock=${model.islock}&departmentID=${model.departmentID}&jobID=${model.jobID}&bbs=${model.bbs}&qq=${model.qq}&sex=${model.sex}" class="sclose" title="去掉这个筛选条件"><span>关闭</span></a></div>
					</c:if>
					<c:if test="${not empty model.dormitory }">
					<div class="searchItem">
						<span class="searchItem-label">宿舍包含</span><span class="searchItem-value">${model.dormitory }</span><a href="action/user/filterForUser?by=${by }&order=${order }&page=${pager.currentPage}&countPerPage=${pager.countPerPage}&uid=${model.uid}&username=${model.username}&email=${model.email}&cornet=${model.cornet}&telephone=${model.telephone}&academyID=${model.academyID}&major=${model.major }&location=${model.location }&islock=${model.islock}&departmentID=${model.departmentID}&jobID=${model.jobID}&bbs=${model.bbs}&qq=${model.qq}&sex=${model.sex}" class="sclose" title="去掉这个筛选条件"><span>关闭</span></a></div>
					</c:if>
					<c:if test="${not empty model.islock }">
					<div class="searchItem">
						<span class="searchItem-label">状态</span><span class="searchItem-value">${model.islock == 0 ? "可用" : "锁定" }</span><a href="action/user/filterForUser?by=${by }&order=${order }&page=${pager.currentPage}&countPerPage=${pager.countPerPage}&uid=${model.uid}&username=${model.username}&email=${model.email}&cornet=${model.cornet}&telephone=${model.telephone}&academyID=${model.academyID}&major=${model.major }&location=${model.location }&dormitory=${model.dormitory }&departmentID=${model.departmentID}&jobID=${model.jobID}&bbs=${model.bbs}&qq=${model.qq}&sex=${model.sex}" class="sclose" title="去掉这个筛选条件"><span>关闭</span></a></div>
					</c:if>
					<c:if test="${not empty model.departmentID && model.departmentID != 0  }">
					<div class="searchItem">
						<span class="searchItem-label">所属部门</span><span class="searchItem-value">${currentDepartmentName}</span><a href="action/user/filterForUser?by=${by }&order=${order }&page=${pager.currentPage}&countPerPage=${pager.countPerPage}&uid=${model.uid}&username=${model.username}&email=${model.email}&cornet=${model.cornet}&telephone=${model.telephone}&academyID=${model.academyID}&major=${model.major }&location=${model.location }&dormitory=${model.dormitory }&islock=${model.islock}&jobID=${model.jobID}&bbs=${model.bbs}&qq=${model.qq}&sex=${model.sex}" class="sclose" title="去掉这个筛选条件"><span>关闭</span></a></div>
					</c:if>
					<c:if test="${not empty model.jobID && model.jobID!=0 }">
					<div class="searchItem">
						<span class="searchItem-label">职务包含</span><span class="searchItem-value">${currentJobName}</span><a href="action/user/filterForUser?by=${by }&order=${order }&page=${pager.currentPage}&countPerPage=${pager.countPerPage}&uid=${model.uid}&username=${model.username}&email=${model.email}&cornet=${model.cornet}&telephone=${model.telephone}&academyID=${model.academyID}&major=${model.major }&location=${model.location }&dormitory=${model.dormitory }&islock=${model.islock}&departmentID=${model.departmentID}&bbs=${model.bbs}&qq=${model.qq}&sex=${model.sex}" class="sclose" title="去掉这个筛选条件"><span>关闭</span></a></div>
					</c:if>
					<c:if test="${not empty model.bbs }">
					<div class="searchItem">
						<span class="searchItem-label">论坛ID包含</span><span class="searchItem-value">${model.bbs}</span><a href="action/user/filterForUser?by=${by }&order=${order }&page=${pager.currentPage}&countPerPage=${pager.countPerPage}&uid=${model.uid}&username=${model.username}&email=${model.email}&cornet=${model.cornet}&telephone=${model.telephone}&academyID=${model.academyID}&major=${model.major }&location=${model.location }&dormitory=${model.dormitory }&islock=${model.islock}&departmentID=${model.departmentID}&jobID=${model.jobID}&qq=${model.qq}&sex=${model.sex}" class="sclose" title="去掉这个筛选条件"><span>关闭</span></a></div>
					</c:if>
					<c:if test="${not empty model.qq }">
					<div class="searchItem">
						<span class="searchItem-label">qq包含</span><span class="searchItem-value">${model.qq}</span><a href="action/user/filterForUser?by=${by }&order=${order }&page=${pager.currentPage}&countPerPage=${pager.countPerPage}&uid=${model.uid}&username=${model.username}&email=${model.email}&cornet=${model.cornet}&telephone=${model.telephone}&academyID=${model.academyID}&major=${model.major }&location=${model.location }&dormitory=${model.dormitory }&islock=${model.islock}&departmentID=${model.departmentID}&jobID=${model.jobID}&bbs=${model.bbs}&sex=${model.sex}" class="sclose" title="去掉这个筛选条件"><span>关闭</span></a></div>
					</c:if>
					<c:if test="${not empty model.sex }">
					<div class="searchItem">
						<span class="searchItem-label">性别</span><span class="searchItem-value">${model.sex}</span><a href="action/user/filterForUser?by=${by }&order=${order }&page=${pager.currentPage}&countPerPage=${pager.countPerPage}&uid=${model.uid}&username=${model.username}&email=${model.email}&cornet=${model.cornet}&telephone=${model.telephone}&academyID=${model.academyID}&major=${model.major }&location=${model.location }&dormitory=${model.dormitory }&islock=${model.islock}&departmentID=${model.departmentID}&jobID=${model.jobID}&bbs=${model.bbs}&qq=${model.qq}" class="sclose" title="去掉这个筛选条件"><span>关闭</span></a></div>
					</c:if>
					
				</div>
			</c:if>
		</div>
		<div class="searchInner">
		<form action="action/user/filterForUser">
			<input type="hidden" name="by" value="${by}" />
			<input type="hidden" name="order" value="${order}" />
			<p class="formItem">
				<label class="condition-label" for="uid">学号</label>
				<input type="text" name="uid" id="uid" class="condition-input" value="${model.uid }"/>
				<label class="condition-label" for="username">姓名</label>
				<input type="text" name="username" id="username" class="condition-input" value="${model.username }"/>
				<label class="condition-label" for="email">邮箱</label>
				<input type="text" name="email" id="email" class="condition-input" value="${model.email }"/>
				<label class="condition-label" for="cornet">短号</label>
				<input type="text" name="cornet" id="cornet" class="condition-input" value="${model.cornet }" style="width:130px;"/>
				<label class="condition-label" for="telephone">长号</label>
				<input type="text" name="telephone" id="telephone" class="condition-input" value="${model.telephone }"/>
			
				<label class="condition-label" for="academyID">所属学院</label>
				<select id="academyID" name="academyID">
					<option value="">====请选择所属学院====</option>
					<c:forEach var="academy" items="${academyList }">
					<c:choose>
						<c:when test="${academy.id==model.academyID }">
							<option value="${academy.id }" selected="selected">${academy.academyname }</option>
						</c:when>
						<c:otherwise>
							<option value="${academy.id }" >${academy.academyname }</option>
						</c:otherwise>
					</c:choose>
					</c:forEach>
				</select>
				<label class="condition-label" for="major">专业班级</label>
				<input type="text" name="major" id="major" class="condition-input" value="${model.major }" style="width:230px;"/>
				<label class="condition-label" for="location">所在校区</label>
				<select id="location" name="location">
					<option value="">====请选择所在校区====</option>
					<c:forEach var="location" items="${locationList }">
					<c:choose>
						<c:when test="${location==model.location }">
							<option value="${location }" selected="selected">${location }</option>
						</c:when>
						<c:otherwise>
							<option value="${location }" >${location }</option>
						</c:otherwise>
					</c:choose>
					</c:forEach>
				</select>
				<label class="condition-label" for="dormitory">宿舍</label>
				<input type="text" name="dormitory" id="dormitory" class="condition-input" value="${model.dormitory }" style="width:230px;"/>
				<label class="condition-label" for="islock">状态</label>
				<select id="islock" name="islock">
					<option value="">====请选择用户状态====</option>
					<c:forEach var="islock" items="${islockList }">
					<c:choose>
						<c:when test="${islock == model.islock }">
							<option value="${islock }" selected="selected">${islock == 0 ? "可用" : "锁定" }</option>
						</c:when>
						<c:otherwise>
							<option value="${islock }" >${islock == 0 ? "可用" : "锁定" }</option>
						</c:otherwise>
					</c:choose>
					</c:forEach>
				</select>
			
				<label class="condition-label" for="departmentID">所属部门</label>
				<select id="departmentID" name="departmentID">
					<option value="0">====请选择所属部门====</option>
					<c:forEach var="department" items="${departmentList }">
					<c:choose>
						<c:when test="${department.id==model.departmentID }">
							<option value="${department.id }" selected="selected">${department.departmentname }</option>
						</c:when>
						<c:otherwise>
							<option value="${department.id }" >${department.departmentname }</option>
						</c:otherwise>
					</c:choose>
					</c:forEach>
				</select>	
				<label class="condition-label" for="jobID">职务</label>
				<select id="jobID" name="jobID">
					<option value="0">====请选择职务====</option>
					<c:forEach var="job" items="${jobList }">
					<c:choose>
						<c:when test="${job.id==model.jobID }">
							<option value="${job.id }" selected="selected">${job.jobname }</option>
						</c:when>
						<c:otherwise>
							<option value="${job.id }" >${job.jobname }</option>
						</c:otherwise>
					</c:choose>
					</c:forEach>
				</select>		
				<label class="condition-label" for="bbs">论坛ID</label>
				<input type="text" name="bbs" id="bbs" class="condition-input" style="width:60px;"  value="${model.bbs }"/>
				<label for="qq" class="condition-label">QQ</label>
				<input type="text" id="qq" name="qq" class="condition-input"  style="width:60px;" value="${model.qq }" />
				<label for="sex" class="condition-label">性别</label>
				<select id="sex" name="sex" style="width:100px;">
					<option value="">请选择性别</option>
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
				
				<input type="submit" value="搜索"  />
			</p>
		</form>
		</div>
	</div>
	<c:choose>
		<c:when test="${empty dataList }">
			<div class="no-data">无任何数据</div>
		</c:when>
		<c:otherwise>
				<!-- 分页条 start -->
				<div id="pageBar">
					<div id="barL" class="l">
						<!-- 搜索式分页 -->
						<!-- 首页 -->
						<c:choose>
							<c:when test="${pager.currentPage > 1 }">
							<a href="action/user/filterForUser?by=${by }&order=${order }&page=1&countPerPage=${pager.countPerPage}${queryCondition}"
								class="page-slice first" title="首页">&lt;&lt;</a>
							</c:when>
							<c:otherwise>
								<span class="page-slice-disabled first">&lt;&lt;</span>
							</c:otherwise>
						</c:choose> 
						<!-- 上一页 -->
						<c:choose>
							<c:when test="${pager.currentPage > 1 }">
								<a href="action/user/filterForUser?by=${by }&order=${order }&page=${pager.currentPage - 1 }&countPerPage=${pager.countPerPage}${queryCondition}"
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
											<a href="action/user/filterForUser?by=${by }&order=${order }&page=${p }&countPerPage=${pager.countPerPage}${queryCondition}"
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
											<a href="action/user/filterForUser?by=${by }&order=${order }&page=${p }&countPerPage=${pager.countPerPage}${queryCondition}"
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
											<a href="action/user/filterForUser?by=${by }&order=${order }&page=${p }&countPerPage=${pager.countPerPage}${queryCondition}"
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
											<a href="action/user/filterForUser?by=${by }&order=${order }&page=${p }&countPerPage=${pager.countPerPage}${queryCondition}"
												class="page-slice" title="第${p }页">${p }</a>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</c:otherwise>
						</c:choose> 
						<!-- 下一页 -->
						<c:choose>
							<c:when test="${pager.currentPage < pager.totalPage }">
								<a href="action/user/filterForUser?by=${by }&order=${order }&page=${pager.currentPage + 1}&countPerPage=${pager.countPerPage}${queryCondition}"
									 class="page-slice next" title="下一页">&gt;</a>
							</c:when>
							<c:otherwise>
								<span class="page-slice-disabled next">&gt;</span>
							</c:otherwise>
						</c:choose>
						<!-- 尾页 -->
						<c:choose>
							<c:when test="${pager.currentPage < pager.totalPage }">
								<a href="action/user/filterForUser?by=${by }&order=${order }&page=${pager.totalPage}&countPerPage=${pager.countPerPage}${queryCondition}"
									 class="page-slice last" title="尾页">&gt;&gt;</a>
							</c:when>
							<c:otherwise>
								<span class="page-slice-disabled last">&gt;&gt;</span>
							</c:otherwise>
						</c:choose>
					</div>
					<div id="barR" class="r">
						<b>${pager.currentPage }</b>/<b>${pager.totalPage }</b>页，共<b>${pager.totalCount}</b>条
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
						<input type="button" value="GO" class="go-bt" id="action/user/filterForUser?by=${by }&order=${order }&page=${pager.currentPage}${queryCondition}"/>
					</div>
					<div class="clear"></div>
				</div>
				<!-- 分页 end -->
				<table class="dataTable">
					<colgroup>
						<col width="20%" />
						<col width="10%" />
						<col width="25%" />
						<col width="30%" />
						<col width="10%" />
					</colgroup>
					<tr>
						<th>学号</th>
						<th>姓名</th>
						<th>部门(职务)</th>
						<th>联系方式(短号)</th>
						<th>操作</th>
					</tr>
					<c:forEach var="usertogether" items="${dataList }">
					<c:set var="user" value="${usertogether.user }"></c:set>
					<c:set var="department" value="${usertogether.department }"></c:set>
					<c:set var="job" value="${usertogether.job }"></c:set>
					<tr>
						<td>
							<a href="action/user/show?id=${user.id }" title="${user.uid }" class="detail-user">${user.uid }</a>
						</td>
						<td>
							${user.username }
						</td>
						<td>${department.departmentname } (${job.jobname })</td>
						<td>${user.telephone } (${user.cornet })</td>
						<td>
							<a href="action/user/detail?id=${user.id }" class="view">详细</a>
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
							<a href="action/user/filterForUser?by=${by }&order=${order }&page=1&countPerPage=${pager.countPerPage}${queryCondition}"
								class="page-slice first" title="首页">&lt;&lt;</a>
							</c:when>
							<c:otherwise>
								<span class="page-slice-disabled first">&lt;&lt;</span>
							</c:otherwise>
						</c:choose> 
						<!-- 上一页 -->
						<c:choose>
							<c:when test="${pager.currentPage > 1 }">
								<a href="action/user/filterForUser?by=${by }&order=${order }&page=${pager.currentPage - 1 }&countPerPage=${pager.countPerPage}${queryCondition}"
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
											<a href="action/user/filterForUser?by=${by }&order=${order }&page=${p }&countPerPage=${pager.countPerPage}${queryCondition}"
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
											<a href="action/user/filterForUser?by=${by }&order=${order }&page=${p }&countPerPage=${pager.countPerPage}${queryCondition}"
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
											<a href="action/user/filterForUser?by=${by }&order=${order }&page=${p }&countPerPage=${pager.countPerPage}${queryCondition}"
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
											<a href="action/user/filterForUser?by=${by }&order=${order }&page=${p }&countPerPage=${pager.countPerPage}${queryCondition}"
												class="page-slice" title="第${p }页">${p }</a>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</c:otherwise>
						</c:choose> 
						<!-- 下一页 -->
						<c:choose>
							<c:when test="${pager.currentPage < pager.totalPage }">
								<a href="action/user/filterForUser?by=${by }&order=${order }&page=${pager.currentPage + 1}&countPerPage=${pager.countPerPage}${queryCondition}"
									 class="page-slice next" title="下一页">&gt;</a>
							</c:when>
							<c:otherwise>
								<span class="page-slice-disabled next">&gt;</span>
							</c:otherwise>
						</c:choose>
						<!-- 尾页 -->
						<c:choose>
							<c:when test="${pager.currentPage < pager.totalPage }">
								<a href="action/user/filterForUser?by=${by }&order=${order }&page=${pager.totalPage}&countPerPage=${pager.countPerPage}${queryCondition}"
									 class="page-slice last" title="尾页">&gt;&gt;</a>
							</c:when>
							<c:otherwise>
								<span class="page-slice-disabled last">&gt;&gt;</span>
							</c:otherwise>
						</c:choose>
					</div>
					<div id="barR" class="r">
						<b>${pager.currentPage }</b>/<b>${pager.totalPage }</b>页，共<b>${pager.totalCount}</b>条
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
						<input type="button" value="GO" class="go-bt" id="action/user/filterForUser?by=${by }&order=${order }&page=${pager.currentPage}${queryCondition}"/>
					</div>
					<div class="clear"></div>
				</div>
				<!-- 分页 end -->
		</c:otherwise>
	</c:choose>
</div>
</body>
</html>