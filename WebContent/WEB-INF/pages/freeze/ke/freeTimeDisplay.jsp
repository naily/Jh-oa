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
<title> 空课查询结果 </title>
</head>
<body>
<c:set var="fktList" value="${requestScope.fktList }"></c:set>
<c:set var="findFreeTime_kevalue" value="${requestScope.kevalue }"></c:set>
<c:set var="currentDepartmentID" value="${requestScope.departmentID }"></c:set>
<c:set var="oneDepartmentname" value="${requestScope.departmentname }"></c:set>
<c:set var="oneTotal" value="${requestScope.total }"></c:set>

<div class="crumb">
	<div class="addke-title">空课查询结果</div>
	<div class="backNav">
		<a href="action/ke/filter">返回课表列表</a> | 
		<a href="action/ke/viewFindFreeTime">重新查询空课</a>
	</div>
	<div class="clear"></div>
</div>
<div class="box">
	<c:if test="${ not empty tip}">
		<div class="optTip">提示：<span class="msg">${tip}</span></div>
	</c:if>
	<c:choose>
		<c:when test="${empty fktList }">
			<div class="no-data">
				这个时间点没人有空！请<a href="action/ke/viewFindFreeTime">重新选择时间点</a>或
				<c:if test="${not empty currentDepartmentID && currentDepartmentID !=0 }">
					 <a href="javascript:void(0);" class="viewAllPersonFreeTime_nodata_trigger" department="${currentDepartmentID }" url="action/ke/listAllKeByDepartmentId?departmentID=${currentDepartmentID }">查看部门人员整体情况</a>
				</c:if>
			</div>
			<%-- 部门人员整体情况 --%>
			<div id="noDataContainer"></div>
		</c:when>
		<c:otherwise>
			<c:choose>
				<%-- 全精弘范围数据展示 --%>
				<c:when test="${currentDepartmentID=='0' }">
					<c:set var="cacheDepartmentID" value=""></c:set>
					
					<c:set var="alltotal" value="0"></c:set>
					<c:set var="alltotal_cacheDepartmentID" value=""></c:set>
					<c:forEach var="freeketogether" items="${fktList }">
						<c:if test="${alltotal_cacheDepartmentID != freeketogether.usertogether.department.id }">
							<c:set var="alltotal_cacheDepartmentID" value="${freeketogether.usertogether.department.id }"></c:set>
							<c:set var="alltotal" value="${alltotal + freeketogether.total }"></c:set>
						</c:if>
					</c:forEach>
					<div class="optTip">提示：<span class="msg">以下是按部门进行当前查询条件的部门人员空闲时间的统计情况</span></div>
					<div class="fast-action-bar">
						<div class="allPersonBar-word">在全精弘目前在职成员共找到 [<span>${alltotal }</span>]人此时间点有空</div>
						<div class="allPersonBar-tools">
							<a href="javascript:void(0);" class="button-like closeStatus">收起全部</a>
						</div>
						<div class="clear"></div>
					</div>
					<%-- 按部门分区域展示全精弘的成员当前条件下的空闲时间情况　 --%>
					<c:forEach var="freeketogether" items="${fktList }">
						<c:set var="ke" value="${freeketogether.ke }"></c:set>
						<c:set var="usertogether" value="${freeketogether.usertogether }"></c:set>
						<c:set var="user" value="${usertogether.user }"></c:set>
						<c:set var="academy" value="${usertogether.academy }"></c:set>
						<c:set var="department" value="${usertogether.department }"></c:set>
						<c:set var="job" value="${usertogether.job }"></c:set>
						<c:set var="total" value="${freeketogether.total }"></c:set>
						
						<%-- 不同部门时构建页面模块 --%>
						<c:choose>
							<c:when test="${cacheDepartmentID != department.id }">
								<c:set var="cacheDepartmentID" value="${department.id }"></c:set>
								
								<%-- 全精弘－当前查询条件显示区域 --%>
								<div class="toggleBar one-toggle-bar">
									<div class="tbTitle"><b>${department.departmentname }</b>共[<span>${total }</span>]人有空</div>
									<div class="optMoreBar">
										<div class="tbOpt tbOpt-${department.id }">
											<ul>
												<li class="queryCondition doBeforeShow" department="${department.id }"><span>当前查询条件</span></li>
												<li class="freePersonList doBeforeShow" department="${department.id }"><span>空闲人员列表</span></li>
											</ul>
										</div>
										<div class="viewAllPersonFreeTime">
											<a href="javascript:void(0);" class="viewAllPersonFreeTime_trigger doBeforeShow" department="${department.id }" url="action/ke/listAllKeByDepartmentId?departmentID=${department.id }">部门人员整体情况</a>
										</div>
									</div>
									<div class="clear"></div>
								</div>
								<div class="one-module-container one-module-container-${department.id }">
									<%-- 全精弘－当前查询条件显示区域  (默认隐藏)--%>
									<div class="queryConditionContainer queryConditionContainer-${department.id } module-${department.id }" style="display:none">
										<div class="actionTip">温馨提醒：<span class="tip-words">当前查询条件将以黄色突出显示</span></div>
										<table class="dataTableDisplay">
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
												<th class="center">周一</th>
												<th class="center">周二</th>
												<th class="center">周三</th>
												<th class="center">周四</th>
												<th class="center">周五</th>
												<th></th>
												<th class="center">周六</th>
												<th class="center">周日</th>
											</tr>
											<%-- 此处按照空课查询选择时间来显示 --%>
											<c:set var="kevalue" value="${findFreeTime_kevalue }"></c:set>
											<c:set var="index" value="-1"></c:set>
											<c:forEach var="i" begin="1" end="11" step="1">
												<tr>
													<c:forEach var="j" begin="0" end="7" step="1">
													<c:set var="current_ke" value="${fn:substring(kevalue, index, index+1) }"></c:set>
													<c:choose>
														<c:when test="${j == 0 }">
														<th class="center">第${i >= 5 ? i+1 : i }节</th>
														</c:when>
														<c:when test="${j == 5 }">
															<c:choose>
																<c:when test="${current_ke == '0' }">
																<td class="center">-</td>
																</c:when>
																<c:otherwise>
																<td class="center itemOutShow">有空</td>
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
																<td class="center itemOutShow">有空</td>
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
									</div>
									<%-- 全精弘－空闲人员列表 --%>
									<div class="freePersonListContainer freePersonListContainer-${department.id }  module-${department.id }">
										<div class="ftudInner one-person-header">
											<div class="one-person-line">
												<span class="one-p-l-uid bold">学号</span>
												<span class="one-p-l-username bold">姓名</span>
												<span class="one-p-l-department bold">所在部门(职务)</span>
												<span class="one-p-l-phonenumber bold">手机号码(短号)</span>
												<span class="one-p-l-more bold">更多操作</span>
											</div>
										</div>
										<div class="ftudInnerContainer">
										<c:forEach var="freeketogether_ftu" items="${fktList }">
											<c:set var="ke_ftu" value="${freeketogether_ftu.ke }"></c:set>
											<c:set var="usertogether_ftu" value="${freeketogether_ftu.usertogether }"></c:set>
											<c:set var="user_ftu" value="${usertogether_ftu.user }"></c:set>
											<c:set var="academy_ftu" value="${usertogether_ftu.academy }"></c:set>
											<c:set var="department_ftu" value="${usertogether_ftu.department }"></c:set>
											<c:set var="job_ftu" value="${usertogether_ftu.job }"></c:set>
											<c:set var="total_ftu" value="${freeketogether_ftu.total }"></c:set>
											
											<%-- 第二级循环获取当前部门用户 --%>
											<c:if test="${department.id == department_ftu.id }">
												<div class="ftudInner">
													<div class="one-person-line">
														<span class="one-p-l-uid">${user_ftu.uid }</span>
														<span class="one-p-l-username"><a href="action/user/show?id=${user_ftu.id }" title="查看详细">${user_ftu.username }</a></span>
														<span class="one-p-l-department">${department_ftu.departmentname }(${job_ftu.jobname })</span>
														<span class="one-p-l-phonenumber">${user_ftu.telephone }(${user_ftu.cornet })</span>
														<span class="one-p-l-more"><a href="action/ke/show?id=${ke_ftu.id }" class="view" title="查看课表">详细课表</a></span>
													</div>
												</div>
											</c:if>
										</c:forEach>
										</div>
									</div>
									<%-- 全精弘－部门人员整体情况 --%>
									<div class="allPersonFreeTimeContainer allPersonFreeTimeContainer-${department.id }"></div>
								</div>
							</c:when>
							<c:otherwise>
								<%-- 此处为相等情况（无特殊显示处理） --%>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</c:when>
				<%-- 单部门数据展示 --%>
				<c:otherwise>
					<div class="toggleBar">
						<div class="tbTitle"><b>${oneDepartmentname }</b>共[<span>${oneTotal }</span>]人有空</div>
						<div class="tbOpt tbOpt-${currentDepartmentID }">
							<ul>
								<li class="queryCondition focus" department="${currentDepartmentID }"><span>当前查询条件</span></li>
								<li class="freePersonList" department="${currentDepartmentID }"><span>空闲人员列表</span></li>
							</ul>
						</div>
						<div class="viewAllPersonFreeTime">
							<a href="javascript:void(0);" class="viewAllPersonFreeTime_trigger" department="${currentDepartmentID }" url="action/ke/listAllKeByDepartmentId?departmentID=${currentDepartmentID }">部门人员整体情况</a>
						</div>
						<div class="clear"></div>
					</div>
					<%-- 当前查询条件显示区域 --%>
					<div class="queryConditionContainer queryConditionContainer-${currentDepartmentID } module-${currentDepartmentID }">
						<div class="actionTip">温馨提醒：<span class="tip-words">当前查询条件将以黄色突出显示</span></div>
						<table class="dataTableDisplay">
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
								<th class="center">周一</th>
								<th class="center">周二</th>
								<th class="center">周三</th>
								<th class="center">周四</th>
								<th class="center">周五</th>
								<th></th>
								<th class="center">周六</th>
								<th class="center">周日</th>
							</tr>
							<%-- 此处按照空课查询选择时间来显示 --%>
							<c:set var="kevalue" value="${findFreeTime_kevalue }"></c:set>
							<c:set var="index" value="-1"></c:set>
							<c:forEach var="i" begin="1" end="11" step="1">
								<tr>
									<c:forEach var="j" begin="0" end="7" step="1">
									<c:set var="current_ke" value="${fn:substring(kevalue, index, index+1) }"></c:set>
									<c:choose>
										<c:when test="${j == 0 }">
										<th class="center">第${i >= 5 ? i+1 : i }节</th>
										</c:when>
										<c:when test="${j == 5 }">
											<c:choose>
												<c:when test="${current_ke == '0' }">
												<td class="center">-</td>
												</c:when>
												<c:otherwise>
												<td class="center itemOutShow">有空</td>
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
												<td class="center itemOutShow">有空</td>
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
					</div>
					<%-- 空闲人员列表 --%>
					<div class="freePersonListContainer freePersonListContainer-${currentDepartmentID }  module-${currentDepartmentID }">
						<div class="ftudInner one-person-header">
							<div class="one-person-line">
								<span class="one-p-l-uid bold">学号</span>
								<span class="one-p-l-username bold">姓名</span>
								<span class="one-p-l-department bold">所在部门(职务)</span>
								<span class="one-p-l-phonenumber bold">手机号码(短号)</span>
								<span class="one-p-l-more bold">更多操作</span>
							</div>
						</div>
						<div class="ftudInnerContainer">
						<c:forEach var="freeketogether" items="${fktList }">
							<c:set var="ke" value="${freeketogether.ke }"></c:set>
							<c:set var="usertogether" value="${freeketogether.usertogether }"></c:set>
							<c:set var="user" value="${usertogether.user }"></c:set>
							<c:set var="academy" value="${usertogether.academy }"></c:set>
							<c:set var="department" value="${usertogether.department }"></c:set>
							<c:set var="job" value="${usertogether.job }"></c:set>
							<c:set var="total" value="${freeketogether.total }"></c:set>
							<div class="ftudInner">
								<div class="one-person-line">
									<span class="one-p-l-uid">${user.uid }</span>
									<span class="one-p-l-username"><a href="action/user/show?id=${user.id }" title="查看详细">${user.username }</a></span>
									<span class="one-p-l-department">${department.departmentname }(${job.jobname })</span>
									<span class="one-p-l-phonenumber">${user.telephone }(${user.cornet })</span>
									<span class="one-p-l-more"><a href="action/ke/show?id=${ke.id }" class="view" title="查看课表">详细课表</a></span>
								</div>
							</div>
						</c:forEach>
						</div>
					</div>
					<%-- 部门人员整体情况 --%>
					<div class="allPersonFreeTimeContainer allPersonFreeTimeContainer-${currentDepartmentID }"></div>
				</c:otherwise>
			</c:choose>
		</c:otherwise>
	</c:choose>
	<style type="text/css">
	.color0{background-color:#F0C8D5}.color1{background-color:#E4F6DA}.color2{background-color:#CCDAF5}.color3{background-color:#D6F3E2}.color4{background-color:#CCD2F9}.color5{background-color:#F0D8CB}.color6{background-color:#F8F4D7}.color7{background-color:#E9C8DB}.color8{background-color:#EAF6E3}.color9{background-color:#D1D2DD}.color10{background-color:#D8D6D2}.color11{background-color:#E5D6D8}.color12{background-color:#F4D1DC}.color13{background-color:#D6F3D9}.color14{background-color:#E6E6F1}.color15{background-color:#CDD8F8}.color16{background-color:#F9D7F1}.color17{background-color:#DDDCCA}.color18{background-color:#D1C9E6}.color19{background-color:#F3CECC}.color20{background-color:#E8ECEE}.color21{background-color:#E4F6EB}.color22{background-color:#F5D4F0}.color23{background-color:#D8F5D2}.color24{background-color:#E8D2D8}.color25{background-color:#D5CFD8}.color26{background-color:#E9CCF6}.color27{background-color:#CDD6CC}.color28{background-color:#EFD1F7}.color29{background-color:#E9ECE2}.color30{background-color:#D3D5CE}.color31{background-color:#E1EFCB}.color32{background-color:#CBECE0}.color33{background-color:#D3EDE2}.color34{background-color:#F0D9EC}.color35{background-color:#F3F6C9}.color36{background-color:#D8F6E8}.color37{background-color:#EED2E7}.color38{background-color:#DAD6DF}.color39{background-color:#CCDDCF}.color40{background-color:#EACACA}.color41{background-color:#F9D2F1}.color42{background-color:#E9F9CB}.color43{background-color:#DBD6D1}.color44{background-color:#D6E7CC}.color45{background-color:#E2D8CA}.color46{background-color:#EBEFF2}.color47{background-color:#F9E5DB}.color48{background-color:#F7D5D1}.color49{background-color:#C8E3DF}.color50{background-color:#E6E5F5}.color51{background-color:#D7E4C8}.color52{background-color:#CBD4F2}.color53{background-color:#E0C9EE}.color54{background-color:#D8F2D9}.color55{background-color:#E3CFDF}.color56{background-color:#EEE9DD}.color57{background-color:#CFF5F4}.color58{background-color:#D0D0E5}.color59{background-color:#D0D5D0}.color60{background-color:#E3DCE8}.color61{background-color:#EACADA}.color62{background-color:#E9E8DD}.color63{background-color:#D8E9C8}.color64{background-color:#CAF0E2}.color65{background-color:#D1DED2}.color66{background-color:#EDE7CF}.color67{background-color:#ECD9E2}.color68{background-color:#E4E2EB}.color69{background-color:#D7EDDD}.color70{background-color:#CAE6F4}.color71{background-color:#E3E7C9}.color72{background-color:#F6D6E7}.color73{background-color:#E9EED8}.color74{background-color:#D0F6D7}.color75{background-color:#CDECD1}.color76{background-color:#CFF6F8}.color77{background-color:#F0CCF0}.color78{background-color:#D4D4F3}.color79{background-color:#C9D8D7}.color80{background-color:#C9E7D0}.color81{background-color:#E7D3EF}.color82{background-color:#ECF8D2}.color83{background-color:#E3CCEA}.color84{background-color:#E4E8F7}.color85{background-color:#E7E7D9}.color86{background-color:#D1F7ED}.color87{background-color:#D4F9CF}.color88{background-color:#EAD8CD}.color89{background-color:#DDE4EE}.color90{background-color:#DCF6CC}.color91{background-color:#F5EED9}.color92{background-color:#EEEFD6}.color93{background-color:#F4DFEE}.color94{background-color:#F0E4CA}.color95{background-color:#D7D1DE}.color96{background-color:#E9F0EA}.color97{background-color:#C8E9F0}.color98{background-color:#F5E2EC}.color99{background-color:#EBCFEC}.color100{background-color:#CEEEE2}.color101{background-color:#D3E5D3}.color102{background-color:#CBD8C8}.color103{background-color:#E6E4F5}.color104{background-color:#E7F4F4}.color105{background-color:#F0D1D9}.color106{background-color:#D0F1C9}.color107{background-color:#F9E9CA}.color108{background-color:#D3D8D0}.color109{background-color:#E9E6F3}.color110{background-color:#CEE6CD}.color111{background-color:#F8F0F4}.color112{background-color:#DAE9F6}.color113{background-color:#F1EAF4}.color114{background-color:#D4E4DD}.color115{background-color:#D4CED0}.color116{background-color:#EACADA}.color117{background-color:#EDD9F0}.color118{background-color:#D0D5E2}.color119{background-color:#CECCF1}.color120{background-color:#F9EFE1}.color121{background-color:#F3DDD1}.color122{background-color:#EEF0E5}.color123{background-color:#D3CDF6}.color124{background-color:#EFCFD0}.color125{background-color:#E3F3CB}.color126{background-color:#F0E1D6}.color127{background-color:#DACAD1}.color128{background-color:#C9F2E0}.color129{background-color:#D5F2EB}.color130{background-color:#CAF7DB}.color131{background-color:#DEE7D5}.color132{background-color:#EDF3F0}.color133{background-color:#CFF6DE}.color134{background-color:#DDF6D9}.color135{background-color:#CDF1E3}.color136{background-color:#F6F0D9}.color137{background-color:#CEF4DA}.color138{background-color:#CEEAEC}.color139{background-color:#DDCAE3}.color140{background-color:#F6DED1}.color141{background-color:#F9F1D1}.color142{background-color:#D8F6CA}.color143{background-color:#D4E0F1}.color144{background-color:#DAF0E9}.color145{background-color:#F5CEEC}.color146{background-color:#D0C9F6}.color147{background-color:#DFF5EC}.color148{background-color:#DAEFDC}.color149{background-color:#E7E0DB}.color150{background-color:#F7EECF}.color151{background-color:#D1E8CD}.color152{background-color:#EBD0CE}.color153{background-color:#EFE4E7}.color154{background-color:#D8D7D3}.color155{background-color:#E3CCD5}.color156{background-color:#F4D6CC}.color157{background-color:#F6ECE9}.color158{background-color:#E7F5F8}.color159{background-color:#F6F0F4}.color160{background-color:#EFE8D5}.color161{background-color:#C9DEE5}.color162{background-color:#CBE3C9}.color163{background-color:#E7D5E7}.color164{background-color:#E4CACC}.color165{background-color:#E9E7E2}.color166{background-color:#E1D7F8}.color167{background-color:#D5E9C8}.color168{background-color:#F9F3DA}.color169{background-color:#D6ECC9}.color170{background-color:#DDD5EA}.color171{background-color:#DCF4DF}.color172{background-color:#D6D8EF}.color173{background-color:#DBDEE2}.color174{background-color:#ECF3DC}.color175{background-color:#E7CFE8}.color176{background-color:#D2C9D2}.color177{background-color:#CCEBE2}.color178{background-color:#CEDBD8}.color179{background-color:#CAE8D0}.color180{background-color:#F9D0CE}.color181{background-color:#F7D7D5}.color182{background-color:#ECEBF5}.color183{background-color:#D3F7EF}.color184{background-color:#E4E1EF}.color185{background-color:#E6E0F3}.color186{background-color:#D9D3E2}.color187{background-color:#EBD8F2}.color188{background-color:#E0DBEB}.color189{background-color:#E1C8D4}.color190{background-color:#D0C8D6}.color191{background-color:#D5D8D5}.color192{background-color:#D5D1E8}.color193{background-color:#E9E0DF}.color194{background-color:#EDF4C8}.color195{background-color:#DFC9E9}.color196{background-color:#DEDFE5}.color197{background-color:#F5F7D9}.color198{background-color:#CFE6DF}.color199{background-color:#D2D3C8}.color200{background-color:#E4C9EF}.color201{background-color:#D6D2E9}.color202{background-color:#D8E3DC}.color203{background-color:#DDF9EB}.color204{background-color:#DBEDE6}.color205{background-color:#F2CEE7}.color206{background-color:#F5E0C8}.color207{background-color:#CBE8E1}.color208{background-color:#E9E0DC}.color209{background-color:#E1D6F0}.color210{background-color:#C9F8D7}.color211{background-color:#CDDEEB}.color212{background-color:#D8D0C9}.color213{background-color:#CEDEF7}.color214{background-color:#F5D5EB}.color215{background-color:#EDDCCE}.color216{background-color:#DFCCD7}.color217{background-color:#DDC8EA}.color218{background-color:#CCDAD3}.color219{background-color:#E5EFD3}.color220{background-color:#C8D1EB}.color221{background-color:#EAD1E6}.color222{background-color:#DBD4E0}.color223{background-color:#F6EEF6}.color224{background-color:#E1E1EA}.color225{background-color:#CCDAD2}.color226{background-color:#DDE7E7}.color227{background-color:#F9F1ED}.color228{background-color:#D1F5F8}.color229{background-color:#E9DCE0}.color230{background-color:#D6F8F5}.color231{background-color:#D7F9CD}.color232{background-color:#E7F6D4}.color233{background-color:#DCD4DE}.color234{background-color:#E3F7D1}.color235{background-color:#EBE9E8}.color236{background-color:#DDDEEE}.color237{background-color:#E4DCF7}.color238{background-color:#DEF6F4}.color239{background-color:#D7F5F0}.color240{background-color:#DBC9E2}.color241{background-color:#D1EBDA}.color242{background-color:#F9E8F8}.color243{background-color:#F0EDDD}.color244{background-color:#F9F4E4}.color245{background-color:#E5DCCF}.color246{background-color:#D6F1F8}.color247{background-color:#E1D9CF}.color248{background-color:#F2E6F7}.color249{background-color:#E8D4D4}.color250{background-color:#EDF5D5}.color251{background-color:#E9F3D1}.color252{background-color:#D4D9CF}.color253{background-color:#F4DCF7}.color254{background-color:#E8D7D6}
	</style>
</div>
<script type="text/javascript">
	$(function(){
		$('.closeTable').toggle(function(){
			$('.allJHUsers').hide();
			$(this).html('显示当前查询条件');
		},function(){
			$('.allJHUsers').show();
			$(this).html('隐藏当前查询条件');
		});
		
		//单部门的标签视图切换
		$('.tbOpt ul li').click(function(){
			var self=$(this);
			var department=self.attr('department');
			$('.tbOpt-'+department+' ul li').removeClass('focus');
			self.addClass('focus');
			
			//切换
			$('.module-'+department).hide();
			if(self.hasClass('queryCondition')){
				$('.queryConditionContainer-'+department).show();
			}
			else if(self.hasClass('freePersonList')){
				$('.freePersonListContainer-'+department).show();
			}
			else if(self.hasClass('wholeState')){
				$('.wholeStateContainer-'+department).show();
			}
		});
	
		//人员列表的交互效果
		$('.ftudInnerContainer .one-person-line').hover(function(){
			$(this).addClass('on');
		},function(){
			$(this).removeClass('on');
		});
		
		//部门空闲人员
		$('.colorItem').live('mouseover',function(){
			var count=$(this).attr('count');
			$(this).addClass('colorItemOn');
			$('.color'+count).addClass('colorOn');
		});
		$('.colorItem').live('mouseout',function(){
			var count=$(this).attr('count');
			$(this).removeClass('colorItemOn');
			$('.color'+count).removeClass('colorOn');
		});
		
		//打开、展开全部
		$('.closeStatus').click(function(){
			$('.one-module-container').hide();
			$('.tbOpt ul li').removeClass('focus');
		});
		
		//显示区域前判断是否隐藏
		$('.doBeforeShow').click(function(){
			var departmentID=$(this).attr('department');
			$('.one-module-container-'+departmentID).show();
		});
		
		//显示当前时间点的空闲人员
		$('.showPersonsOfCurrentKe').live('click',function(){
			var kenum=$(this).attr('kenum');
			var departmentID=$(this).attr('department');
			var itemsArr=$('.department-'+departmentID);//对象元素
			var usernameArr=getUsernameOfCurrentKe(itemsArr,kenum,departmentID);
			//是否已创建节点
			var prepareShowID='#'+departmentID+'_'+kenum;
			if($(prepareShowID).size()==0){
				var html=createHTMLOfCurrentKe(usernameArr,kenum,departmentID);
				//var before=$('#department_'+departmentID+'.currentPersonsContainer').html();
				$('#department_'+departmentID+'.currentPersonsContainer').append(html);
			}
			else{
			    $(prepareShowID).show();
			}
		});
		//单个时间点的关闭		
		$('.closePersons').live('click',function(){
			$(this).parent().parent().hide();			
		});
		
		//部门人员空闲标题鼠标效果
		$('.one-toggle-bar').hover(function(){
			$(this).addClass('one-toggle-bar-on');
		},function(){
			$(this).removeClass('one-toggle-bar-on');
		});
		
		
		//部门情况AJAX请求
		$('.viewAllPersonFreeTime_trigger').live('click',function(){
			
			var self=$(this);
			var url=self.attr('url');
			var department=self.attr('department');
			
			$('.tbOpt-'+department+' ul li').removeClass('focus');
			$('.module-'+department).hide();
			
			$('.allPersonFreeTimeContainer-'+department).html('正在加载部门人员空闲时间情况');
			$.ajax({
				url : url,
				type : 'get',
				success :function(res){
					$('.allPersonFreeTimeContainer-'+department).html(res);
					$('.wholeStateContainer-'+department).show();
				},
				error : function(){
					$('.allPersonFreeTimeContainer-'+department).html('加载失败');
				}
			});
		});
		
		//没数据时查看某部门整体情况
		$('.viewAllPersonFreeTime_nodata_trigger').live('click',function(){
			
			$('.no-data').hide();
			
			var self=$(this);
			var url=self.attr('url');
			var department=self.attr('department');
			
			$('#noDataContainer').html('正在加载部门人员空闲时间情况');
			$.ajax({
				url : url,
				type : 'get',
				success :function(res){
					$('#noDataContainer').html(res);
					$('.wholeStateContainer-'+department).show();
				},
				error : function(){
					$('#noDataContainer').html('加载失败');
				}
			});
		});
	});
	//获取当前有空人员的列表
	function getUsernameOfCurrentKe(itemsArr,kenum,departmentID){
		var usernameArr=[];
		for(var i=0,len=itemsArr.length;i<len;i++){
			var obj=eval('('+$(itemsArr[i]).html()+')');
			if(hasFreeTime(kenum,obj.kevalue)){
				usernameArr.push(obj.username);
			}
		}
		return usernameArr;
	}
	//当前课是否有空
	function hasFreeTime(kenum,kevalue){
		if($.trim(kevalue)==''){
			return false;
		}
		var currentke=kevalue.substring(kenum-1,kenum);
		if(currentke=='0')
			return true;
		return false;
	}
	function createHTMLOfCurrentKe(arr,kenum,departmentID){
		var html='';
		html+='<div id="'+departmentID+'_'+kenum+'" class="currentPersonsDisplay">';
		html+='<div class="currentPersonList">';
		if(arr.length == 0){
			html+='<div class="one-person-username">无</div>';
		}
		else{
			for(var i=0,len=arr.length;i<len;i++){
				html+='<div class="one-person-username">'+arr[i]+'</div>';
			}
		}
		html+='</div>';
		html+='<div class="currentPersonBar">';
		html+='<div class="currentPersonsTitle">';
		html+='<div class="currentPersons_week">周'+getWeek(kenum)+'</div>';
		html+='<div class="currentPersons_whichke">第'+getWhichke(kenum)+'节</div>';
		html+='</div>';
		html+='<div class="closePersons"><a href="javascript:void(0);" title="关闭此时间点的人员列表">关闭</a></div>';
		html+='</div>';
		html+='<div class="clear"></div>';
		html+='</div>';
		return html;
	}
	function getWeek(kenum){
		var ys=kenum % 7;
		var value='';
		switch(ys){
			case 0:
				value='日';
				break;
			case 1:
				value='一';
				break;
			case 2:
				value='二';
				break;
			case 3:
				value='三';
				break;
			case 4:
				value='四';
				break;
			case 5:
				value='五';
				break;
			case 6:
				value='六';
				break;
		}
		return value;
	}
	function getWhichke(kenum){
		var cs=Math.ceil(kenum / 7 );
		if(cs>=5)
			cs+=1;
		return cs;
	}
	function ToHex(n){
		var hexch = new Array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F');
		var h, l;
		n = Math.round(n);
		l = n % 16;
		h = Math.floor((n / 16)) % 16;
		return (hexch[h]+''+hexch[l]);
	}
	function getGColor(gradient){
		var colorR=200 + Math.floor(Math.random() * 50);
		var colorG=200 + Math.floor(Math.random() * 50);
		var colorB=200 + Math.floor(Math.random() * 50);
		
		colorR=colorR % 255;
		colorG=colorG % 255;
		colorB=colorB % 255;
		var color='#'+ToHex(colorR)+''+ToHex(colorG)+''+ToHex(colorB)+'';
		return color;
	}
	
</script>
</body>
</html>