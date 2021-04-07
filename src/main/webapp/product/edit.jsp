<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit product</title>
</head>
<body>
<h1>Edit product</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/products">Back to product list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name" value="${requestScope["product"].getName()}"></td>
            </tr>
            <tr>
                <td>Unit Price: </td>
                <td><input type="text" name="unitPrice" id="unitPrice" value="${requestScope["product"].getUnitPrice()}"></td>
            </tr>
            <tr>
                <td>Quantity Stock: </td>
                <td><input type="text" name="quantityStock" id="quantityStock" value="${requestScope["product"].getQuantityStock()}"></td>
            </tr>
            <tr>
                <td>Product Description: </td>
                <td><input type="text" name="productDescription" id="productDescription" value="${requestScope["product"].getProductDescription()}"></td>
            </tr>
            <tr>
                <td>Thumbnail: </td>
                <td><input type="text" name="thumbnail" id="thumbnail" value="${requestScope["product"].getThumbnail()}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>