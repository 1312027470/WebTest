<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>添加到购物车</title>
</head>

<body>
    <%
        // 获取表单提交的数据
        String product = request.getParameter("product");
        String quantityStr = request.getParameter("quantity");

        if (product != null && quantityStr != null) {
            int quantity = Integer.parseInt(quantityStr);
            String[] productDetails = product.split(",");
            String productName = new String(productDetails[0].getBytes("ISO-8859-1"), "UTF-8");
            int price = Integer.parseInt(productDetails[1]);

            // 获取购物车信息
            java.util.List<String[]> cart = (java.util.List<String[]>) session.getAttribute("cart");
            if (cart == null) {
                cart = new java.util.ArrayList<>();
            }

            // 添加商品到购物车
            cart.add(new String[]{productName, String.valueOf(quantity), String.valueOf(price)});

            // 更新购物车信息到 session
            session.setAttribute("cart", cart);

            out.println("<h2>商品已添加到购物车</h2>");
        }
    %>
    <a href="products.jsp">继续购物</a>
    <a href="cart.jsp">查看购物车</a>
</body>

</html>