<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>商品展示页面</title>
    <style>
        .product {
            border: 1px solid #ddd;
            padding: 10px;
            margin: 10px;
            text-align: center;
        }

        .product img {
            max-width: 100px;
            height: auto;
        }
    </style>
</head>

<body>
    <h1>商品展示</h1>
    <form action="addToCart.jsp" method="post">
        <div class="product">
            <h2>手机</h2>
            <p>价格: ¥3000</p>
            <img src="#" alt="手机图片">
            <label for="phoneQuantity">数量:</label>
            <input type="number" name="quantity" id="phoneQuantity" value="1" min="1">
            <input type="hidden" name="product" value="手机,3000">
            <input type="submit" value="添加到购物车">
        </div>
    </form>
    <form action="addToCart.jsp" method="post">
        <div class="product">
            <h2>笔记本电脑</h2>
            <p>价格: ¥8000</p>
            <img src="#" alt="笔记本电脑图片">
            <label for="laptopQuantity">数量:</label>
            <input type="number" name="quantity" id="laptopQuantity" value="1" min="1">
            <input type="hidden" name="product" value="笔记本电脑,8000">
            <input type="submit" value="添加到购物车">
        </div>
    </form>
    <form action="addToCart.jsp" method="post">
        <div class="product">
            <h2>耳机</h2>
            <p>价格: ¥500</p>
            <img src="#" alt="耳机图片">
            <label for="headphonesQuantity">数量:</label>
            <input type="number" name="quantity" id="headphonesQuantity" value="1" min="1">
            <input type="hidden" name="product" value="耳机,500">
            <input type="submit" value="添加到购物车">
        </div>
    </form>
    <a href="cart.jsp">查看购物车</a>
</body>

</html>