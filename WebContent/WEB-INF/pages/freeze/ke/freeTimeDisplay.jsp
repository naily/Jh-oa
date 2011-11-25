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
	<div class="backNav"><a href="action/ke/filter">返回课表列表</a></div>
	<div class="clear"></div>
</div>
<div class="box">
<div class="actionTip">温馨提醒：<span class="tip-words">当前查询条件将以黄色突出显示</span></div>
	<c:if test="${ not empty tip}">
		<div class="optTip">提示：<span class="msg">${tip}</span></div>
	</c:if>
	<c:choose>
		<c:when test="${empty fktList }">
			<div class="no-data">无任何数据</div>
		</c:when>
		<c:otherwise>
			<c:choose>
				<%-- 全精弘范围数据展示 --%>
				<c:when test="${currentDepartmentID=='0' }">
					<%-- 当前查询条件显示区域 --%>
					<div class="toggleArea">
						<div class="closeConditionDisplay">
							<a href="javascript:void(0);" class="closeTable">隐藏当前查询条件</a>
						</div>
						<table class="dataTableDisplay allJHUsers">
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
							<%-- 此处高亮显示查询时间点 --%>
							<c:set var="kevalue" value="${findFreeTime_kevalue }"></c:set>
							<c:set var="index" value="-1"></c:set>
							<c:forEach var="i" begin="1" end="11" step="1">
								<tr>
									<c:forEach var="j" begin="0" end="7" step="1">
									<c:set var="current_ke" value="${fn:substring(kevalue, index, index+1) }"></c:set>
									<c:choose>
										<c:when test="${j == 0 }">
										<th class="center">第${i }节</th>
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
					
					<%-- 按部门分区域展示全精弘的成员当前条件下的空闲时间情况　 --%>
					<c:forEach var="freeketogether" items="${fktList }">
						<c:set var="ke" value="${freeketogether.ke }"></c:set>
						<c:set var="usertogether" value="${freeketogether.usertogether }"></c:set>
						<c:set var="user" value="${usertogether.user }"></c:set>
						<c:set var="academy" value="${usertogether.academy }"></c:set>
						<c:set var="department" value="${usertogether.department }"></c:set>
						<c:set var="job" value="${usertogether.job }"></c:set>
						<c:set var="total" value="${freeketogether.total }"></c:set>
						<div class="toggleBar">
							<div id="tbOpt-${department.id }" class="tbOpt">
								<ul>
									<li class="freePersonList focus"><span>空闲人员列表</span></li>
									<li class="wholeState"><span>部门人员整体情况</span></li>
								</ul>
							</div>
						</div>
						<div class="freeTimeUserDisplay">
							<div class="ftudInner">
								<div class="one-person-line">${user.username }|${user.uid }<a href="action/ke/show?id=${ke.id }">查看课表情况</a></div>
							</div>
						</div>
					</c:forEach>
				</c:when>
				<%-- 单部门数据展示 --%>
				<c:otherwise>
					<div class="toggleBar">
						<div class="tbTitle"><b>${oneDepartmentname }</b>共[<span>${oneTotal }</span>]人有空</div>
						<div id="one-tbOpt" class="tbOpt">
							<ul>
								<li class="queryCondition focus"><span>当前查询条件</span></li>
								<li class="freePersonList"><span>空闲人员列表</span></li>
								<li class="wholeState"><span>部门人员整体情况</span></li>
							</ul>
						</div>
						<div class="clear"></div>
					</div>
					<%-- 当前查询条件显示区域 --%>
					<div id="one-queryConditionContainer" class="one-ke-module queryConditionContainer">
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
					<div id="one-freePersonListContainer" class="one-ke-module freePersonListContainer">
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
					<div id="one-wholeStateContainer" class="one-ke-module wholeStateContainer">
						<%-- 统计部门人员课分布情况 --%>
						<c:set var="allKeState" value=""></c:set>
						<c:set var="isFirst" value="true"></c:set>
						<c:forEach var="freeketogether" items="${fktList }">
							<c:set var="ke" value="${freeketogether.ke }"></c:set>
							<c:set var="usertogether" value="${freeketogether.usertogether }"></c:set>
							<c:set var="user" value="${usertogether.user }"></c:set>
							<c:set var="academy" value="${usertogether.academy }"></c:set>
							<c:set var="department" value="${usertogether.department }"></c:set>
							<c:set var="job" value="${usertogether.job }"></c:set>
							<c:set var="total" value="${freeketogether.total }"></c:set>
							
							<c:choose>
								<c:when test="${isFirst == true }">
									<c:set var="allKeState" value="${ke.kevalue}"></c:set>
									<c:set var="isFirst" value="false"></c:set>
								</c:when>
								<c:otherwise>
									<c:set var="allKeState" value="${allKeState }${','}${ke.kevalue }"></c:set>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						
						<%-- 统计每节课的空闲人员情况 --%>
						<c:set var="allKeStateArray" value="${fn:split(allKeState,',')}"></c:set>
						
						<c:set var="countState_1" value="0"></c:set>
						<c:set var="countState_2" value="0"></c:set>
						<c:set var="countState_3" value="0"></c:set>
						<c:set var="countState_4" value="0"></c:set>
						<c:set var="countState_5" value="0"></c:set>
						<c:set var="countState_6" value="0"></c:set>
						<c:set var="countState_7" value="0"></c:set>
						
						<c:set var="countState_8" value="0"></c:set>
						<c:set var="countState_9" value="0"></c:set>
						<c:set var="countState_10" value="0"></c:set>
						<c:set var="countState_11" value="0"></c:set>
						<c:set var="countState_12" value="0"></c:set>
						<c:set var="countState_13" value="0"></c:set>
						<c:set var="countState_14" value="0"></c:set>
						
						<c:set var="countState_15" value="0"></c:set>
						<c:set var="countState_16" value="0"></c:set>
						<c:set var="countState_17" value="0"></c:set>
						<c:set var="countState_18" value="0"></c:set>
						<c:set var="countState_19" value="0"></c:set>
						<c:set var="countState_20" value="0"></c:set>
						<c:set var="countState_21" value="0"></c:set>

						<c:set var="countState_22" value="0"></c:set>
						<c:set var="countState_23" value="0"></c:set>
						<c:set var="countState_24" value="0"></c:set>
						<c:set var="countState_25" value="0"></c:set>
						<c:set var="countState_26" value="0"></c:set>
						<c:set var="countState_27" value="0"></c:set>
						<c:set var="countState_28" value="0"></c:set>
						
						<c:set var="countState_29" value="0"></c:set>
						<c:set var="countState_30" value="0"></c:set>
						<c:set var="countState_31" value="0"></c:set>
						<c:set var="countState_32" value="0"></c:set>
						<c:set var="countState_33" value="0"></c:set>
						<c:set var="countState_34" value="0"></c:set>
						<c:set var="countState_35" value="0"></c:set>
						
						<c:set var="countState_36" value="0"></c:set>
						<c:set var="countState_37" value="0"></c:set>
						<c:set var="countState_38" value="0"></c:set>
						<c:set var="countState_39" value="0"></c:set>
						<c:set var="countState_40" value="0"></c:set>
						<c:set var="countState_41" value="0"></c:set>
						<c:set var="countState_42" value="0"></c:set>

						<c:set var="countState_43" value="0"></c:set>
						<c:set var="countState_44" value="0"></c:set>
						<c:set var="countState_45" value="0"></c:set>
						<c:set var="countState_46" value="0"></c:set>
						<c:set var="countState_47" value="0"></c:set>
						<c:set var="countState_48" value="0"></c:set>
						<c:set var="countState_49" value="0"></c:set>
						
						<c:set var="countState_50" value="0"></c:set>
						<c:set var="countState_51" value="0"></c:set>
						<c:set var="countState_52" value="0"></c:set>
						<c:set var="countState_53" value="0"></c:set>
						<c:set var="countState_54" value="0"></c:set>
						<c:set var="countState_55" value="0"></c:set>
						<c:set var="countState_56" value="0"></c:set>
						
						<c:set var="countState_57" value="0"></c:set>
						<c:set var="countState_58" value="0"></c:set>
						<c:set var="countState_59" value="0"></c:set>
						<c:set var="countState_60" value="0"></c:set>
						<c:set var="countState_61" value="0"></c:set>
						<c:set var="countState_62" value="0"></c:set>
						<c:set var="countState_63" value="0"></c:set>
						
						<c:set var="countState_64" value="0"></c:set>
						<c:set var="countState_65" value="0"></c:set>
						<c:set var="countState_66" value="0"></c:set>
						<c:set var="countState_67" value="0"></c:set>
						<c:set var="countState_68" value="0"></c:set>
						<c:set var="countState_69" value="0"></c:set>
						<c:set var="countState_70" value="0"></c:set>

						<c:set var="countState_71" value="0"></c:set>
						<c:set var="countState_72" value="0"></c:set>
						<c:set var="countState_73" value="0"></c:set>
						<c:set var="countState_74" value="0"></c:set>
						<c:set var="countState_75" value="0"></c:set>
						<c:set var="countState_76" value="0"></c:set>
						<c:set var="countState_77" value="0"></c:set>
						
						<c:forEach var="keSequence" items="${allKeStateArray }">							
							<c:forEach var="i" begin="1" end="77" step="1">
								<c:set var="currentKe" value="${ fn:substring(keSequence,i-1,i)}"></c:set>
								<c:choose>
									<c:when test="${currentKe=='0' }">
										<c:choose>
											<c:when test="${i==1 }">
												<c:set var="countState_1" value="${countState_1 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==2 }">
												<c:set var="countState_2" value="${countState_2 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==3 }">
												<c:set var="countState_3" value="${countState_3 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==4 }">
												<c:set var="countState_4" value="${countState_4 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==5 }">
												<c:set var="countState_5" value="${countState_5 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==6 }">
												<c:set var="countState_6" value="${countState_6 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==7 }">
												<c:set var="countState_7" value="${countState_7 + 1 }"></c:set>
											</c:when>
											
											<c:when test="${i==8 }">
												<c:set var="countState_8" value="${countState_8 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==9 }">
												<c:set var="countState_9" value="${countState_9 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==10 }">
												<c:set var="countState_10" value="${countState_10 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==11 }">
												<c:set var="countState_11" value="${countState_11 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==12 }">
												<c:set var="countState_12" value="${countState_12 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==13 }">
												<c:set var="countState_13" value="${countState_13 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==14 }">
												<c:set var="countState_14" value="${countState_14 + 1 }"></c:set>
											</c:when>
											
											<c:when test="${i==15 }">
												<c:set var="countState_15" value="${countState_15 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==16 }">
												<c:set var="countState_16" value="${countState_16 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==17 }">
												<c:set var="countState_17" value="${countState_17 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==18 }">
												<c:set var="countState_18" value="${countState_18 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==19 }">
												<c:set var="countState_19" value="${countState_19 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==20 }">
												<c:set var="countState_20" value="${countState_20 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==21 }">
												<c:set var="countState_21" value="${countState_21 + 1 }"></c:set>
											</c:when>
											
											<c:when test="${i==22 }">
												<c:set var="countState_22" value="${countState_22 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==23 }">
												<c:set var="countState_23" value="${countState_23 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==24 }">
												<c:set var="countState_24" value="${countState_24 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==25 }">
												<c:set var="countState_25" value="${countState_25 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==26 }">
												<c:set var="countState_26" value="${countState_26 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==27 }">
												<c:set var="countState_27" value="${countState_27 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==28 }">
												<c:set var="countState_28" value="${countState_28 + 1 }"></c:set>
											</c:when>
											
											<c:when test="${i==29 }">
												<c:set var="countState_29" value="${countState_29 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==30 }">
												<c:set var="countState_30" value="${countState_30 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==31 }">
												<c:set var="countState_31" value="${countState_31 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==32 }">
												<c:set var="countState_32" value="${countState_32 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==33 }">
												<c:set var="countState_33" value="${countState_33 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==34 }">
												<c:set var="countState_34" value="${countState_34 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==35 }">
												<c:set var="countState_35" value="${countState_35 + 1 }"></c:set>
											</c:when>
											
											<c:when test="${i==36 }">
												<c:set var="countState_36" value="${countState_36 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==37 }">
												<c:set var="countState_37" value="${countState_37 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==38 }">
												<c:set var="countState_38" value="${countState_38 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==39 }">
												<c:set var="countState_39" value="${countState_39 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==40 }">
												<c:set var="countState_40" value="${countState_40 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==41 }">
												<c:set var="countState_41" value="${countState_41 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==42 }">
												<c:set var="countState_42" value="${countState_42 + 1 }"></c:set>
											</c:when>
											
											<c:when test="${i==43 }">
												<c:set var="countState_43" value="${countState_43 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==44 }">
												<c:set var="countState_44" value="${countState_44 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==45 }">
												<c:set var="countState_45" value="${countState_45 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==46 }">
												<c:set var="countState_46" value="${countState_46 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==47 }">
												<c:set var="countState_47" value="${countState_47 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==48 }">
												<c:set var="countState_48" value="${countState_48 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==49 }">
												<c:set var="countState_49" value="${countState_49 + 1 }"></c:set>
											</c:when>
											
											<c:when test="${i==50 }">
												<c:set var="countState_50" value="${countState_50 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==51 }">
												<c:set var="countState_51" value="${countState_51 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==52 }">
												<c:set var="countState_52" value="${countState_52 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==53 }">
												<c:set var="countState_53" value="${countState_53 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==54 }">
												<c:set var="countState_54" value="${countState_54 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==55 }">
												<c:set var="countState_55" value="${countState_55 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==56 }">
												<c:set var="countState_56" value="${countState_56 + 1 }"></c:set>
											</c:when>
											
											<c:when test="${i==57 }">
												<c:set var="countState_57" value="${countState_57 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==58 }">
												<c:set var="countState_58" value="${countState_58 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==59 }">
												<c:set var="countState_59" value="${countState_59 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==60 }">
												<c:set var="countState_60" value="${countState_60 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==61 }">
												<c:set var="countState_61" value="${countState_61 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==62 }">
												<c:set var="countState_62" value="${countState_62 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==63 }">
												<c:set var="countState_63" value="${countState_63 + 1 }"></c:set>
											</c:when>
											
											<c:when test="${i==64 }">
												<c:set var="countState_64" value="${countState_64 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==65 }">
												<c:set var="countState_65" value="${countState_65 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==66 }">
												<c:set var="countState_66" value="${countState_66 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==67 }">
												<c:set var="countState_67" value="${countState_67 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==68 }">
												<c:set var="countState_68" value="${countState_68 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==69 }">
												<c:set var="countState_69" value="${countState_69 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==70 }">
												<c:set var="countState_70" value="${countState_70 + 1 }"></c:set>
											</c:when>
											
											<c:when test="${i==71 }">
												<c:set var="countState_71" value="${countState_71 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==72 }">
												<c:set var="countState_72" value="${countState_72 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==73 }">
												<c:set var="countState_73" value="${countState_73 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==74 }">
												<c:set var="countState_74" value="${countState_74 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==75 }">
												<c:set var="countState_75" value="${countState_75 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==76 }">
												<c:set var="countState_76" value="${countState_76 + 1 }"></c:set>
											</c:when>
											<c:when test="${i==77 }">
												<c:set var="countState_77" value="${countState_77 + 1 }"></c:set>
											</c:when>
											
										</c:choose>
									</c:when>
								</c:choose>
							</c:forEach>
						</c:forEach>
						<%-- 按课表形式展现人员空闲情况 --%>
						<%-- 组合全部统计数据构建数组 --%>
						<c:set var="countState" value="${countState_1},${countState_2},${countState_3},${countState_4},${countState_5},${countState_6},${countState_7},${countState_8},${countState_9},${countState_10},${countState_11},${countState_12},${countState_13},${countState_14},${countState_15},${countState_16},${countState_17},${countState_18},${countState_19},${countState_20},${countState_21},${countState_22},${countState_23},${countState_24},${countState_25},${countState_26},${countState_27},${countState_28},${countState_29},${countState_30},${countState_31},${countState_32},${countState_33},${countState_34},${countState_35},${countState_36},${countState_37},${countState_38},${countState_39},${countState_40},${countState_41},${countState_42},${countState_43},${countState_44},${countState_45},${countState_46},${countState_47},${countState_48},${countState_49},${countState_50},${countState_51},${countState_52},${countState_53},${countState_54},${countState_55},${countState_56},${countState_57},${countState_58},${countState_59},${countState_60},${countState_61},${countState_62},${countState_63},${countState_64},${countState_65},${countState_66},${countState_67},${countState_68},${countState_69},${countState_70},${countState_71},${countState_72},${countState_73},${countState_74},${countState_75},${countState_76},${countState_77}"></c:set>
						<c:set var="countStateArr" value="${fn:split(countState,',') }"></c:set>
						<c:set var="maxCountState" value="${countStateArr[0] }"></c:set>
						<c:forEach var="tmp" items="${countStateArr }">
							<c:if test="${tmp >=maxCountState }">
								<c:set var="maxCountState" value="${tmp }"></c:set>
							</c:if>
						</c:forEach>
						<div class="optTip">提示：<span class="msg">以下所统计的人数是指在不同时间点下有空闲时间的人员总数</span></div>
						<div class="colorIntroduce">
							<c:forEach var="cColorIndex" begin="0" end="${maxCountState }" step="1">
								<div class="colorItem" id="${cColorIndex }">
									<div class="color color${cColorIndex }"></div>
									<span class="color-person">${cColorIndex }人</span>
									<div class="clear"></div>
								</div>
							</c:forEach>
								<div class="clear"></div>
							</div>
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
							<c:set var="index" value="-1"></c:set>
							<c:forEach var="i" begin="1" end="11" step="1">
								<tr>
									<c:forEach var="j" begin="0" end="7" step="1">
										<c:choose>
											<c:when test="${j == 0 }">
											<th class="center">第${i >= 5 ? i+1 : i }节</th>
											</c:when>
											<c:when test="${j == 5 }">
												<c:set var="z" value="${(i-1)* 7 + j }"></c:set>
												<td class="center color${countStateArr[z-1]}" title="${countStateArr[z-1]}人有空"><!-- ${countStateArr[z-1]}人 --></td>
												<th></th>
											</c:when>
											<c:otherwise>
												<c:set var="z" value="${(i-1)* 7 + j }"></c:set>
												<td class="center color${countStateArr[z-1]}" title="${countStateArr[z-1]}人有空"><!-- ${countStateArr[z-1]}人 --></td>
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
		$('#one-tbOpt ul li').click(function(){
			var self=$(this);
			$('#one-tbOpt ul li').removeClass('focus');
			self.addClass('focus');
			
			//切换
			$('.one-ke-module').hide();
			if(self.hasClass('queryCondition')){
				$('#one-queryConditionContainer').show();
			}
			else if(self.hasClass('freePersonList')){
				$('#one-freePersonListContainer').show();
			}
			else if(self.hasClass('wholeState')){
				$('#one-wholeStateContainer').show();
			}
		});
	
		//人员列表的交互效果
		$('.ftudInnerContainer .one-person-line').hover(function(){
			$(this).addClass('on');
		},function(){
			$(this).removeClass('on');
		});
		//部门空闲人员
		$('.colorItem').hover(function(){
			var id=$(this).attr('id');
			$('.color'+id).addClass('colorOn');
		},function(){
			var id=$(this).attr('id');
			$('.color'+id).removeClass('colorOn');
		});
		
		
	});
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
	/*
	var maxColorSize=255;
	var cssStyle='<style type="text/css">';
	for(var i=0;i<maxColorSize;i++){
		cssStyle+='.color'+i+'{background-color:'+getGColor()+'}\n';
	}
	cssStyle+='</style>';
	$('body').append(cssStyle);
	*/
</script>
</body>
</html>