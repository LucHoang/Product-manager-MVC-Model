<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Products</h1>
<p>
    <a href="/products?action=create">Create new product</a>
    <a href="/products?action=find">Find product by name</a>
</p>
<table border="1">
    <tr>
        <td>Product Id</td>
        <td>Name</td>
        <td>Unit Price</td>
        <td>Quantity Stock</td>
        <td>Description</td>
        <td>Category Id</td>
        <td>Thumbnail</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
        <tr>
            <td><a href="/products?action=view&id=${product.getProductId()}">${product.getProductId()}</a></td>
            <td><a href="/products?action=view&id=${product.getProductId()}">${product.getName()}</a></td>
            <td>${product.getUnitPrice()}</td>
            <td>${product.getQuantityStock()}</td>
            <td>${product.getProductDescription()}</td>
            <td>${product.getCategoryId()}</td>
            <td><img width="150px" height="150px" src="image/<c:out value="${product.getThumbnail()}"/>"></td>
<%--            <td>${product.getThumbnail()}</td>--%>
            <td><a href="/products?action=edit&id=${product.getProductId()}">edit</a></td>
            <td><a href="/products?action=delete&id=${product.getProductId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>