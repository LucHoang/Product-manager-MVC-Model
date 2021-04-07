<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View product</title>
</head>
<body>
<h1>Product details</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<table>
    <tr>
        <td>Name: </td>
        <td>${requestScope["product"].getName()}</td>
    </tr>
    <tr>
        <td>Unit Price: </td>
        <td>${requestScope["product"].getUnitPrice()}</td>
    </tr>
    <tr>
        <td>Quantity Stock: </td>
        <td>${requestScope["product"].getQuantityStock()}</td>
    </tr>
    <tr>
        <td>Product Description: </td>
        <td>${requestScope["product"].getProductDescription()}</td>
    </tr>
    <tr>
        <td>Thumbnail: </td>
        <td>${requestScope["product"].getThumbnail()}</td>
    </tr>
</table>
</body>
</html>