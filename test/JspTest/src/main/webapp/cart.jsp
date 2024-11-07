<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>购物车</title>
</head>

<body>
    <h1>购物车内容</h1>
    <%
        java.util.List<String[]> cart = (java.util.List<String[]>) session.getAttribute("cart");
        if (cart != null && !cart.isEmpty()) {
            for (int i = 0; i < cart.size(); i++) {
                String[] item = cart.get(i);
                out.println("<p>商品名称: " + item[0] + ", 数量: " + item[1] + ", 价格: ¥" + item[2] + "</p>");
                out.println("<form action='removeFromCart.jsp' method='post'>");
                out.println("<input type='hidden' name='index' value='" + i + "'>");
                out.println("<input type='hidden' name='action' value='增加数量'>");
                out.println("<input type='submit' value='增加数量'>");
                out.println("</form>");
                out.println("<form action='removeFromCart.jsp' method='post'>");
                out.println("<input type='hidden' name='index' value='" + i + "'>");
                out.println("<input type='hidden' name='action' value='减少数量'>");
                out.println("<input type='submit' value='减少数量'>");
                out.println("</form>");
                out.println("<form action='removeFromCart.jsp' method='post'>");
                out.println("<input type='hidden' name='index' value='" + i + "'>");
                out.println("<input type='hidden' name='action' value='删除商品'>");
                out.println("<input type='submit' value='删除商品'>");
                out.println("</form>");
            }
            out.println("<form action='removeFromCart.jsp' method='post'>");
            out.println("<input type='hidden' name='action' value='清空购物车'>");
            out.println("<input type='submit' value='清空购物车'>");
            out.println("</form>");
        } else {
            out.println("<p>购物车为空</p>");
        }
    %>
    <a href="products.jsp">继续购物</a>
</body>

</html>