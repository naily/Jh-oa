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

<c:set var="fktList" value="${requestScope.fktList }"></c:set>
<c:set var="currentDepartmentID" value="${requestScope.departmentID }"></c:set>
<c:set var="oneDepartmentname" value="${requestScope.departmentname }"></c:set>
<c:set var="oneTotal" value="${requestScope.total }"></c:set>

					<%-- 部门人员整体情况 --%>
					<div class="wholeStateContainer wholeStateContainer-${currentDepartmentID }  module-${currentDepartmentID }" >
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
							<%-- 生成时间点与人对应关系 --%>
							<div style="display:none" class="department-${currentDepartmentID }">
								{'${user.username}':'${ke.kevalue}'}
							</div>
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
								<div class="colorItem"  count="${cColorIndex }" title="${cColorIndex }人有空的时间点会以绿色突出显示">
									<div class="color color${cColorIndex }"></div>
									<span class="color-person">${cColorIndex }人</span>
									<div class="clear"></div>
								</div>
							</c:forEach>
							<div class="clear"></div>
						</div>
						<%-- 部门全体人员数据 --%>
						<c:forEach var="freeketogether" items="${fktList }">
							<c:set var="ke" value="${freeketogether.ke }"></c:set>
							<c:set var="usertogether" value="${freeketogether.usertogether }"></c:set>
							<c:set var="user" value="${usertogether.user }"></c:set>
							<c:set var="academy" value="${usertogether.academy }"></c:set>
							<c:set var="department" value="${usertogether.department }"></c:set>
							<c:set var="job" value="${usertogether.job }"></c:set>
							<c:set var="total" value="${freeketogether.total }"></c:set>
							
							
							
						</c:forEach>
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
												<td class="center color${countStateArr[z-1]} showPersonsOfCurrentKe" department="${currentDepartmentID }" kenum="${index+1 }" title="${countStateArr[z-1]}人有空"><!-- ${countStateArr[z-1]}人 --></td>
												<th></th>
											</c:when>
											<c:otherwise>
												<c:set var="z" value="${(i-1)* 7 + j }"></c:set>
												<td class="center color${countStateArr[z-1]} showPersonsOfCurrentKe" department="${currentDepartmentID }" kenum="${index+1 }" title="${countStateArr[z-1]}人有空"><!-- ${countStateArr[z-1]}人 --></td>
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
						<%-- 各个时间点的空闲情况 --%>
						<h2 class="keTitleForFreetime"><a href="javascript:void(0);" name="department_${currentDepartmentID }">${oneDepartmentname }</a>成员在各个时间点的空闲情况如下：</h2>
						<div id="department_${currentDepartmentID }" class="currentPersonsContainer"></div>
						<div id="departmentID">${currentDepartmentID }</div>	
					</div>
					<script type="text/javascript">
					function isFreeTime(kevalue){
						
					}
					//统计各时间点的人员列表计算
					function countByTime(departmentID){
						var elements=$('.department-'+departmentID);
						var arr=[];
						for(var i=0,len=elements.length;i<len;i++){
							var json=$(elements[i]).html();
						}
					}
					$(function(){
						var departmentID=$('#departmentID').html();
						var arr=countByTime(departmentID);
					});
					</script>