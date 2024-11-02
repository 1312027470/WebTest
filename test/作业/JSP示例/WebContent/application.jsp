<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>统计网站的访问量</title>
</head>
<body>
	<%
		int i;
		if(application.getAttribute("count") == null){
			application.setAttribute("count", "1");
		}else{
			i = Integer.parseInt((String)application.getAttribute("count"));
			i++;
			application.setAttribute("count", Integer.toString(i));
		}
	%>
	<center>
		该网站是第<%=(String)application.getAttribute("count") %>次被访问!
	</center>
</body>
</html>