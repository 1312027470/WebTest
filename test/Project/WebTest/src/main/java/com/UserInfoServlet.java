package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserInfoServlet")
public class UserInfoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        // 获取表单提交的姓名和年龄参数
        String name = request.getParameter("name");
        String age = request.getParameter("age");

        // 设置响应内容类型
        response.setContentType("text/html; charset=UTF-8");

        // 输出用户信息到页面上
        response.getWriter().append("姓名: ").append(name).append(", 年龄: ").append(age);
    }
}