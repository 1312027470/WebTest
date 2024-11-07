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
		String id = request.getParameter("id");
		double price = Integer.parseInt(request.getParameter("price"));
	%>
	商品编号:<%=id %><br>
	商品价格:<%=price %>
</body>
</html>