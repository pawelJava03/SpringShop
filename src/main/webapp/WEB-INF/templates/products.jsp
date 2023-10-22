<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product catalog</title>
    <link rel="stylesheet" type="text/css" href="/style.css"/>
</head>
<body>


<c:if test="${not empty basket and not empty basket.elements}">
    <div class="basket">
        <h4>Basket</h4>
        <ul>
            <c:forEach var="p" items="${basket.elements}">
                <li>${p.productName}: ${p.quantity} × ${p.price} = <b>${p.value}</b></li>
            </c:forEach>
        </ul>
        <p>Basket value: ${basket.totalValue}</p>
    </div>
</c:if>


<h1>All products</h1>

<c:forEach var="product" items="${products}">
    <div class="product">
        <img class="photo" src="/products/${product.productId}/photo" alt=""/>
        <p>Product: <a href="/products/${product.productId}" class="product-name">${product.productName}</a></p>
        <p>Price: <span class="product-price">${product.price}</span></p>
        <p class="product-description">${product.description}</p>
        <div class="action"><a href="/products/${product.productId}/edit">Edit</a></div>
        <div class="action"><a href="/products/${product.productId}/add-to-basket">Add to basket</a></div>
    </div>
</c:forEach>

<div><a href="/products/new">Add new product</a></div>
<div><a href="/">Back to main page</a></div>

</body>
</html>
