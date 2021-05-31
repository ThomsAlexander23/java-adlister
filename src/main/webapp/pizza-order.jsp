<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 5/31/21
  Time: 12:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza World</title>
</head>
<body>
<fieldset>
    <legend>Pizza</legend>
    <form method="post" action="/pizza-order">
        <label for="addressInput">Address</label>
            <input id="addressInput" name="address" type="text">

        <label for="crusts">Crust</label>
        <select name="crustTypes" id="crusts">
            <option value="thin">Thin</option>
            <option value="thick">Thick</option>
        </select>
        <label for="sauce">Sauce</label>
        <select name="sauceTypes" id="sauce">
            <option value="marinara">marinara</option>
            <option value="tomato/basil">tomato/basil</option>
        </select>
        <label for="sizes">Size</label>
        <select name="sizeTypes" id="sizes">
            <option value="large">Large</option>
            <option value="small">Small</option>
            <option value="medium">Medium</option>
        </select>
        <p>Toppings</p>
        <input type="checkbox" name="toppings" value="pepperoni">Pepperoni<br>
        <input type="checkbox" name="toppings" value="sausage">Sausage<br>
        <input type="checkbox" name="toppings" value="habenaro">Habenaro<br>

        <input type="submit" placeholder="Complete Order">

    </form>
</fieldset>

</body>
</html>
