<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>${product.productName}</title>
  <link rel="stylesheet" type="text/css" href="/style.css"/>
</head>
<body>

<h1>Product info<%-- ${product.productId}--%></h1>

<div class="product">
  <img class="photo" src="/products/${product.productId}/photo" alt=""/>
  <p>Product: <a href="/products/${product.productId}" class="product-name">${product.productName}</a></p>
  <p>Price: <span class="product-price">${product.price}</span></p>
  <p>VAT: <span class="product-price">${product.vat * 100}%</span></p>
  <p class="product-description">${product.description}</p>
  <div class="action"><a href="/products/${product.productId}/edit">Edit</a></div>
  <div class="action"><a href="/products/${product.productId}/add-to-basket">Add to basket</a></div>
</div>

<p><a href="/products">Go to list of products</a></p>

</body>
</html>


