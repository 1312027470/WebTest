<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h2>用户登录页面</h2><hr>
	<form action="checklogin.jsp" method="post">
		账号:<input type="text" name="uname"><br><br>
		密码:<input type="password" name="pwd"><br><br>
		<input type="submit" value="登录">
	</form>
</body>
</html>