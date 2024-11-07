<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>管理购物车</title>
</head>

<body>
    <%
        String action = request.getParameter("action");
        java.util.List<String[]> cart = (java.util.List<String[]>) session.getAttribute("cart");

        if (cart != null) {
            if ("增加数量".equals(action)) {
                int index = Integer.parseInt(request.getParameter("index"));
                String[] item = cart.get(index);
                int quantity = Integer.parseInt(item[1]);
                quantity++;
                item[1] = String.valueOf(quantity);
            } else if ("减少数量".equals(action)) {
                int index = Integer.parseInt(request.getParameter("index"));
                String[] item = cart.get(index);
                int quantity = Integer.parseInt(item[1]);
                if (quantity > 1) {
                    quantity--;
                    item[1] = String.valueOf(quantity);
                } else {
                    cart.remove(index);
                }
            } else if ("删除商品".equals(action)) {
                int index = Integer.parseInt(request.getParameter("index"));
                cart.remove(index);
            } else if ("清空购物车".equals(action)) {
                cart.clear();
            }

            session.setAttribute("cart", cart);
        }

        response.sendRedirect("cart.jsp");
    %>
</body>

</html>