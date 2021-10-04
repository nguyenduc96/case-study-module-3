<%--
  Created by IntelliJ IDEA.
  User: dat01
  Date: 10/4/2021
  Time: 2:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    <c:if test="${message!=null}">
        <c:out value="${message}"></c:out>
    </c:if>
    <form action="product?action=create" method="post">
        <p><lable>Product Name</lable>
            <input type="text" name="name"></p>
        <p><lable>Product Code</lable>
            <input type="text" name="code"></p>
        <p><lable>Product Image</lable>
            <input type="text" name="image"></p>
        <p><lable>Product Quantity</lable>
            <input type="number" name="quantity" value="0"></p>
        <p><lable>Product Price</lable>
            <input type="number" name="price" step=".01" value="0"></p>
        <p><lable>Product Discount</lable>
            <input type="number" name="discount" value="0" step=".01"></p>
        <p><lable>Product Discount Percent</lable>
            <input type="number" name="discount_pct" min="0" max="100" value="0"></p>
        <p><lable>Product Category</lable>
            <select name="category_id">
                <option value="1">Dien thoai</option>
                <option value="2">Laptop</option>
                <option value="3">May tinh bang</option>
            </select>
        </p>
        <p><lable>Product Brand</lable>
            <select name="brand_id">
                <option value="1">SamSung</option>
                <option value="2">Iphone</option>
                <option value="3">Xiaomi</option>
            </select>
        </p>
        <p><label>Description</label>
            <input type="text" name="description">
        </p>
        <button type="submit">Save</button>
        <a href="/product">Back To List</a>
    </form>
</div>

</body>
</html>
