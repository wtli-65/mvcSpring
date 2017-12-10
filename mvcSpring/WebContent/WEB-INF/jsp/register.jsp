<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
<script src="../js/angular.min.js"></script>
<script type="text/javascript" src="../js/aggsites"></script>
<style type="text/css">
#menu{
background-color: blue;
}
#menu #logo{
text-align: left;
float:left;
}
div#menu #menu_info{
text-align: right;
float:right;
}
#tableArea {
text-align: center;
clear: both;
}
</style>
</head>
<body>
	<div id="menu" >
		<div id="logo"><a href="https://www.cnblogs.com/" title="开发者的网上家园"><img src="../images/logo_small.gif" alt="博客园Logo" width="142" height="55" /></a></div>
		<div id="menu_info">
			<a href="https://www.cnblogs.com/" >首页</a>
			<a href="/">注册</a>
			<a href="">帮助</a>
			<a href="">退出</a>
		</div>
	</div>
	<div id="tableArea">
		<div id="left_table">
			<form method="post" action="./register">
				<table style="margin: 0 auto;">
					<tr><td class="left_table_item">邮  箱</td><td class="left_table_input"><input type="text" name="email"/></td></tr>
					<tr><td class="left_table_item">手机号码</td><td class="left_table_input"><input type="text" name="cellnum"/></td></tr>
					<tr><td class="left_table_item">登录账号</td><td class="left_table_input"><input type="text" name="userid"/></td></tr>
					<tr><td class="left_table_item">显示名称</td><td class="left_table_input"><input type="text" name="username" /></td></tr> <br>
					<tr><td class="left_table_item">密码</td><td class="left_table_input"><input type="password" name="password" /></td></tr>
					<tr><td class="left_table_item">确认密码</td><td class="left_table_input"><input type="password" name="password2" /></td></tr>
				</table>
				<input type="submit" value="注册" style="color:#002c99" />
			</form>
		</div>
		<div id="right_image"></div>
	</div>
	<script type="text/javascript">
	
	</script>
</body>
</html>