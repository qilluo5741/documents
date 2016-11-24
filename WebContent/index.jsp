<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	request.setAttribute("url","Desktop/index.html");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的主页</title>
<script type="text/javascript">
	function load(){
		if("${!empty url}"=="true"){
			window.location.href="<%=basePath%>"+"${url}";
		}
	}
</script>
</head>
<body onload="javascript:setTimeout('load()',3000);">
<div class="screenbg">
	<object id="swftitlebar" data="images/79514.swf" width="100%" height="220" type="application/x-shockwave-flash">
	      <param name="allowScriptAccess" value="always">
	      <param name="allownetworking" value="all">
	      <param name="allowFullScreen" value="true">
	      <param name="wmode" value="transparent">
	      <param name="menu" value="false">
	      <param name="scale" value="noScale">
	      <param name="salign" value="1">
	</object>
	<center>
		<c:if test="${!empty url}">
			<p style="color:gray;font-size:28" >正在加载中。。请等待</p>
	     </c:if>
    </center>
</div>
</body>
</html>