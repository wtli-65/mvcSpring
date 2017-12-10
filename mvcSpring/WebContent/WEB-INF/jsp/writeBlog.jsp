<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/signin.css">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<div id="Main">
                <noscript>
                    <div style="font-size:15px;margin-bottom:20px;">
                        您的浏览器未启用Javascript，无法进行登录。
                    </div>
                    <style>                       
                        form { display:none;}
                    </style>
                </noscript>
                    <form method="post" action="./login">
                        <div id="Heading">登录博客园 - 代码改变世界</div>
                        <div class="block">
                            <label class="label-line">登录用户名(<a href="/GetUsername.aspx" tabindex="-1" class="tb_right">找回</a>)</label>
                            <input type="text" id="input1" name="userid" value="" class="input-text" onkeydown="check_enter(event)" /> <span id="tip_input1" class="tip"></span>
                        </div>
                        <div class="block">
                            <label class="label-line">密码(<a href="/GetMyPassword.aspx" tabindex="-1" class="tb_right">重置</a>)</label>
                            <input type="password" id="input2" name="password" value="" class="input-text" onkeydown="check_enter(event)" /> <span id="tip_input2" class="tip"></span>
                        </div>
                        <div class="block">
                            <input id="remember_me" type="checkbox" name="remember_me" onkeydown="check_enter(event)" /><label for="remember_me" onkeydown="check_enter(event)">下次自动登录</label>
                        </div>
                        <div class="block">
                            <input type="submit" id="signin" class="button" value="登录" /> <span id="tip_btn" class="tip"></span>
                        </div>
                        <div class="block nav">
                            &raquo; <a href="./" title="注册成为博客园用户">立即注册</a><br />
                            &raquo; <a href="http://www.cnblogs.com/ContactUs.aspx">反馈问题</a>
                        </div>
                    </form>
                    <div style="clear: both" />
</div>
</body>
</html>