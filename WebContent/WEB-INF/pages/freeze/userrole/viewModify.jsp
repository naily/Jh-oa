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
<title> 重新分配用户角色 </title>
</head>
<body>
<c:set var="tip" value="${requestScope.tip}"></c:set>
<c:set var="model" value="${requestScope.model }"></c:set>
<c:set var="userList" value="${requestScope.userList }"></c:set>
<c:set var="roleList" value="${requestScope.roleList }"></c:set>


<div class="crumb">
	<div class="adduserrole-title">重新分配用户角色</div>
	<div class="backNav"><a href="action/userrole/filter">返回用户角色列表</a></div>
	<div class="clear"></div>
</div>
<div class="box">
<c:if test="${ not empty tip}">
<div class="optTip">提示：<span class="msg">${tip}</span></div>
</c:if>
<form name="modifyuserroleForm" id="modifyuserroleForm" action="action/userrole/modify" method="post">
<div class="formItem">
	<label for="userID" class="common-label">用户</label>
	<select id="userID" name="userID" >
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
	<style>
	.fastname{width:200px;}
	#fastname{color:#ccc;}
	#fastname.focus{color:#333;font-weight:bold;font-family:"宋体";}
	#userList{display:none;position:absolute;top:25px;left:0px;width:200px;border:1px #ddd solid;}
	#userList .item{height:20px;line-height:20px;color:#666;}
	#userList .itemOn{background-color:#666;color:#fff;font-weight:bold;cursor:pointer;}
	</style>
	<span style="position:relative;">
	<input type="text" name="fastname" id="fastname" class="fastname" autocomplete="off" value="请输入需要查找的用户名" onfocus="if($('#fastname').val()=='请输入需要查找的用户名'){ $('#fastname').val('');$(this).addClass('focus');} " onblur="if($('#fastname').val()==''){ $('#fastname').val('请输入需要查找的用户名');$(this).removeClass('focus');}"/>
	<div id="userList"></div>
	</span>
</div>
<div class="formItem">
	<label for="roleID" class="common-label">角色</label>
	<select id="roleID" name="roleID">
		<option value="-1">== 请选择角色 ==</option>
		<c:choose>
			<c:when test="${ empty roleList }">
				<option value="0">无</option>
			</c:when>
			<c:otherwise>
				<c:forEach var="role" items="${roleList }">
					<c:choose>
						<c:when test="${model.roleID== role.id }">
							<option value="${role.id }" selected="selected">${role.rolename }</option>
						</c:when>
						<c:otherwise>
							<option value="${role.id }">${role.rolename }</option>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</c:otherwise>
		</c:choose>		
	</select>
</div>
<input type="hidden" name="id" value="${model.id }" />
<div class="formItem">
	<input type="submit" value="重新分配" class="bt bt-adduserrole" />
</div>
</form>
</div>
<script type="text/javascript">
function isForbidden(value){
	var flag=false;
	if(value.length==0)
		return false;
	for(var i=0,len=value.length;i<len;i++){
		if(isWordOrNum(value.charAt(i))){
			flag=true;
			break;
		}
	}
	return flag;
}
function isWordOrNum(c){
	var words='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
	var flag=false;
	for(var i=0,len=words.length;i<len;i++){
		if(c==words.charAt(i)){
			flag=true;
			break;
		}
	}
	return flag;
}
$(function(){
	if($('#userID').val()=='-1'){
		$('#userID').focus();
	}
	else if($('#userID').val()!='-1' && $('#roleID').val()=='-1'){
		$('#roleID').focus();
	}
	else{
		$('#userID').select();
	}
	
	$('#userList .item').live('mouseover',function(){
		$(this).addClass('itemOn');
	});
	
	$('#userList .item').live('mouseout',function(){
		$(this).removeClass('itemOn');
	});
	
	$('#userList .item').live('click',function(){
		var cValue=$(this).attr('title');
		var selectOpts=$('#userID').children();
		for(var i=0,len=selectOpts.length;i<len;i++){
			if(cValue==$(selectOpts[i]).attr('value')){
				$(selectOpts[i]).attr('selected',true);
				$('#fastname').val('请输入需要查找的用户名');
				$('#fastname').removeClass('focus');
				$('roleID').focus();
				break;
			}
		}
		$('#userList').hide();
	});
	var cache='';
	//时时响应用户列表
	$('#fastname').keyup(function(){
		$('#userList').hide();
		var fn=$.trim($('#fastname').val());
		if(fn!='' && fn!=cache && !isForbidden(fn)){
				cache=fn;
				$.ajax({
					url : 'action/global/ajaxForUserList',
					data :{
						'username' : fn
					},
					type : 'get',
					datatype : 'text',
					success : function(html){
						$('#userList').html(html);
						$('#userList').show();
					},
					error : function(){
						alert('请求出现异常,请稍候重试！');
					}
				});
		}
	});
});
</script>
</body>
</html>