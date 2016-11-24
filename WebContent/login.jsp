<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人登录</title>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<style type="text/css">
		button {
			border-bottom-style:solid;
			border-style:none;
			text-align:center;
			width:85;
			heigth:21;
			color:maroon;
			background: rgba(0,0,0,0.1);
			border-radius:2px;
		}
	</style>
</head>

<body> 
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
</div>
<div style="margin-top:-160;">
 <center>
 	 <div align="center" style="padding: 300px 200px 10px;width:800px;" > 
      <div class="input-group input-group-lg">
         <span class="input-group-addon">账&nbsp;&nbsp;&nbsp;&nbsp;户：</span>
         <input id="userName"  type="text" class="form-control" placeholder="请输入账户">
      </div><br>
 	<div class="input-group input-group-lg">
         <span class="input-group-addon">密&nbsp;&nbsp;&nbsp;&nbsp;码：</span>
         <input id="userPwd" type="password" class="form-control" placeholder="请输入密码">
      </div>
	</div>
 </center>
  <center>
 	<font id="msg_" ><strong id='msg'></strong></font><br/>
  	<button id='login' type="button">登陆</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  	<button type="button">注册</button>
  </center>
</div>
<script type="text/javascript">
	$(function(){
		//登陆
		$("#login").click(function(){
			//得到用户名账号密码
			var $name=$("#userName");
			var $pwd=$("#userPwd");
			if($name.val()==""){
				$name.css("borderColor","red");
				for(var i=0;i<=1;i++){
					$name.hide(50);
					$name.show(100);
				}
			}
			else if($pwd.val()==""){
				$pwd.css("borderColor","red");
				for(var i=0;i<=1;i++){
					$pwd.hide(50);
					$pwd.show(100);
				}
			}
			else{
				//登陆
				$.ajax({
					url:'user/login.action',
					data:{"userName":$name.val(),"userPwd":$pwd.val()},
					type:"post",
					success:function(res){
						if(res=="0"){
							$("#msg").html("登陆成功！");
							$("#msg_").attr("color","green");
							$pwd.val("");
							window.location.href='user/index.action';
						}
						else{
							$("#msg").html("登陆失败！请检查用户名密码是否错误！");
							$("#msg_").attr("color","red");
						}
					}
				});
			}
		});
		$("#userName").keyup(function(){
			  $("#userName").css("borderColor","#c0c0c0");
			  $("#userPwd").css("borderColor","#c0c0c0");
			  $("#msg").html("");
		})
		$("#userPwd").keyup(function(){
			 $("#userName").css("borderColor","#c0c0c0");
			  $("#userPwd").css("borderColor","#c0c0c0");
			  $("#msg").html("");
		})
	});	
</script>
</body>
</html>
	