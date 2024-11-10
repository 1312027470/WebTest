package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // 预设的用户名和密码
    private static final String USERNAME = "admin";
    private static final String PASSWORD = "123456";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        // 获取表单提交的用户名和密码
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // 设置响应内容类型
        response.setContentType("text/html; charset=UTF-8");

        // 验证用户名和密码
        if (USERNAME.equals(username) && PASSWORD.equals(password)) {
            response.getWriter().append("登录成功");
        } else {
            response.getWriter().append("用户名或密码错误");
        }
    }
}