<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="springmvc/testModelAttribute" method="post">
		<input type="hidden" name="id" value="1"/>
		<br>
		<input type="text" name="name" value="Tom"/>
		<br>
		<input type="text" name="age" value="12"/>
		<br>
		<input type="text" name="email" value="Tom@qq.com"/>
		<br>
		<input type="submit" value="Submit"/>
	</form>
	
	<a href="springmvc/testSessionAttributes">test SessionAttributes</a>
	<br><br>
	<a href="springmvc/testMap">test Map</a>
	<br><br>
	<a href="springmvc/testModelAndView">test ModelAndView</a>
	<br><br>

	<a href="springmvc/testServelet">testServelet</a>
	<br><br>
	<form action="springmvc/testPOJO" method="post">
		username:<input type="text" name="username"/><br><br>
		password:<input type="password" name="password"/><br><br>
		age:     <input type="text" name="age"/><br><br>
		email:   <input type="text" name="email"/><br><br>
		<input type="submit" value="Submit"/><br><br>
	</form>
	<br><br>
	<form action="springmvc/testPut/TEST01" method="post">
		<input type="hidden" name="_method" value="PUT"/>
		username:<input type="text" name="username"/><br><br>
		password:<input type="password" name="password"/><br><br>
		age:     <input type="text" name="age"/><br><br>
		email:   <input type="text" name="email"/><br><br>
		<input type="submit" value="test PUT"/>
	</form>
	<br>
	<form action="springmvc/testDelete/2" method="post">
		<input type="hidden" name="_method" value="DELETE"/>
		<input type="submit" value="test DELETE"/>
	</form>
</body>
</html>