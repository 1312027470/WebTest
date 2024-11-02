<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*,java.text.*,java.net.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//设置请求和响应的编码
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		//接受用户提交的登录数据
		String account = request.getParameter("uname");
		String password = request.getParameter("pwd");
		/*if("admin".equals(account) && "123456".equals(password)){
			//跳转到首页
			session.setAttribute("uname", account);
			response.sendRedirect("index.jsp");
		}else{
			//跳转到登录页面，重新登录
			response.sendRedirect("login.jsp");
		} */
		
		//获取系统当前时间
		Date currentDate = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String lastLoginTime = dateFormat.format(currentDate);
		
		//获取客户端所有的cookie数据
		Cookie[] cookies = request.getCookies();
		Cookie lastLogin = null;
		if(cookies != null){
			for(Cookie cookie:cookies){
				if(cookie.getName().equals("lastLoginTime")){
					lastLogin = cookie;
					break;
				}
			}
		}
		
		if(lastLogin == null){
			out.println("您是第一次登录");
			Cookie firstCookie = new Cookie("lastLoginTime",URLEncoder.encode(lastLoginTime,"utf-8"));
			firstCookie.setMaxAge(60*60*365);
			response.addCookie(firstCookie);
		}else{
			out.println("您上次登录的时间是：" + URLDecoder.decode(lastLogin.getValue(), "utf-8"));
			Cookie newCookie = new Cookie("lastLoginTime",URLEncoder.encode(lastLoginTime,"utf-8"));
			newCookie.setMaxAge(60*60*365);
			response.addCookie(newCookie);
		}
	%>
</body>
</html>