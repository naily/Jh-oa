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
<title> 批量导入用户 </title>
</head>
<body>
<c:set var="tip" value="${requestScope.tip}"></c:set>
<c:set var="model" value="${requestScope.model }"></c:set>

<div class="crumb">
	<div class="adduser-title">批量导入用户</div>
	<div class="backNav"><a href="action/user/filter">返回用户列表</a></div>
	<div class="clear"></div>
</div>
<div class="box">
	<div class="actionTip">温馨提醒：<span class="tip-words">数据文件必须使用后缀为".xls"的文件</span></div>
	<c:if test="${ not empty tip}">
	<div class="optTip m30">提示：<span class="msg">${tip}</span></div>
	</c:if>
	<div class="uploadContainer">
	<iframe name="uploadIframe" id="uploadIframe" style="display:none;"></iframe>
	<form name="uploadFileForm" id="uploadFileForm" action="action/ffile/uploadFile" method="post" enctype="multipart/form-data" target="uploadIframe">
	<div class="formItem clear">
		<label for="selectfile" class="common-label">文件</label>
		<input type="file" name="selectfile" id="selectfile" />
		<span id="wait">正在上传文件...</span>
	</div>
	</form>
	</div>

	<form name="importUserForm" id="importUserForm" action="action/user/importUserList" method="post">
	<c:choose>
		<c:when test="${not empty model.filename }">
			<div class="formItem alreadyUpload">
					<span class="uploadTitle">已上传的文件：</span> <span class="flist">${model.filename }</span><span class="cleanit"><a href="javascript:void(0);" title="丢弃此文件" class="lostit"><span>丢弃</span></a></span>
			</div>
		</c:when>
		<c:otherwise>
			<div class="formItem alreadyUpload" style="display:none;">
					<span class="uploadTitle">已上传的文件：</span> <span class="flist">${model.filename }</span><span class="cleanit"><a href="javascript:void(0);" title="丢弃此文件" class="lostit"><span>丢弃</span></a></span>
			</div>	
		</c:otherwise>
	</c:choose>
	<input type="hidden" id="filename" name="filename" value="${model.filename }" />
	<div class="formItem">
		<input type="submit" value="导入" class="bt bt-addffile" />
	</div>
	</form>
</div>
<script type="text/javascript">
$(function(){
	$('#selectfile').change(function(){
		var fname=$('#selectfile').val();
		var docIndex=fname.lastIndexOf('.');
		var s=fname.substring(docIndex+1);
		console.log(s);
		if(s != 'xls'){
			$('#wait').html('数据文件后缀不正确，请使用后缀为".xls"的文件');
			$('#wait').show();
			return;
		}
		else{
			$('#uploadFileForm').submit();
			$('#wait').html('正在上传文件...');
			$('#wait').show();
			var time=null;
			var count=1;
			time=setTimeout(function(){
				var result=$('#uploadIframe').contents().find('body').html();
				if(result!=''){
					console.log(count+',result: '+result);
					clearTimeout(time);
					var obj=window.eval('('+result+')');
					
					if(obj.error==1){
						$('#wait').html(obj.message);
					}
					else{
						$('#filename').val(obj.url);
						$('#wait').html('上传成功!');
	
						//更新列表
						$('.flist').html(obj.url);
						$('.alreadyUpload').show();
						$('.cleanit').show();
					}
					
				}
				else{
					console.log(count+',result is empty');
				}
				count+=1;
			},100);
		}
	});
	
	//丢弃文件点击事件
	$('.lostit').click(function(){
		$('.cleanit').hide();
		$('.flist').html('暂未上传任何文件，请上传');
		$('#filename').val('');
	});
	
	if($('#filename').val()==''){
		$('#selectfile').focus();
	}
});
</script>
</body>
</html>