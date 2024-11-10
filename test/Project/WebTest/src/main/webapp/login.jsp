<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户信息</title>
</head>
<body>
<h1>请输入您的信息</h1>
<form action="UserInfoServlet" method="post">
    姓名: <input type="text" name="name"><br>
    年龄: <input type="text" name="age"><br>
    <input type="submit" value="提交">
</form>
<form action="LoginServlet" method="post">
    用户名: <input type="text" name="username"><br>
    密码: <input type="password" name="password"><br>
    <input type="submit" value="登录">
</form>
</body>
</html>