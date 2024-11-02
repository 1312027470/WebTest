<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		//要求：访问index.jsp页面必须先登录
		if(session.getAttribute("uname") == null){
			out.println("您未登录，请先登录！三秒钟后回到登录页面");
			response.setHeader("Refresh", "3;URL=login.jsp");
		}else{
			String account = (String)session.getAttribute("uname");
			out.println("您已登录，用户名是：" + account);
		}
	%>
	
	<a href="validate.jsp">注销</a>
</body>
</html>