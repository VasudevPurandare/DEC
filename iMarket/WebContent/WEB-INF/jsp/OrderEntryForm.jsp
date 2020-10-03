<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>International Market</title>
</head>
<body>

<form:form modelAttribute="order" method="post" action="purchase/submitItems">
    <table border=1 cellpadding=20>
    <thead>
                <tr>
                    <th>Name</th>
                    <th>Company</th>
                    <th>Price</th>
                    <th>Quantity</th>
                </tr>
    </thead>
	<c:forEach items="${order.items}" var="item" varStatus="loop">
		<tr>
			<td><c:out value="${item.name}"></c:out></td>
			<td><c:out value="${item.company}"></c:out></td>
			<td>$<c:out value="${item.price}"></c:out></td>
			<td><form:input path="items[${loop.index}].quantity" />
			<form:hidden path="items[${loop.index}].name" value="${item.name}"/>
			<form:hidden path="items[${loop.index}].price" value="${item.price}"/>
			<form:hidden path="items[${loop.index}].company" value="${item.company}"/>
			</td>
		</tr>
	</c:forEach>
	  <tr>
		<td colspan="4"><input type="submit" value="Purchase"></td>
	  </tr>
	
    </table>
</form:form>

</body>
</html>