<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border=1 cellpadding=20>
	<tr>
		<th colspan=4>Items order:</th>
	</tr>
	<tr>
		<th>Name</th>
		<th>Company</th>
		<th>Quantity</th>
		<th>Price</th>
	</tr>
		<c:forEach items="${order.items}" var="item">
		<tr>
			<td><c:out value="${item.name}"></c:out></td>
			<td><c:out value="${item.company}"></c:out></td>
			<td><c:out value="${item.quantity}"></c:out></td>
			<td><c:out value="${item.price}"></c:out></td>
		</tr>
	</c:forEach>
	
	<tr>
		<th colspan=4> Payment Information</th>
	</tr>
	<tr>
		<td colspan=2><b>Credit Card Number:</b><br><c:out value="${paymentInfo.creditCardNumber}"></c:out></td>
		<td colspan=2><b>Expiration Date:</b><br><c:out value="${paymentInfo.expirationDate}"></c:out></td>
	</tr>
	<tr>
		<td  colspan=2><b>CVV:</b><br><c:out value="${paymentInfo.cvvCode}"></c:out></td>
		<td  colspan=2 ><b>Card Holder Name:</b><br><c:out value="${paymentInfo.cardHolderName}"></c:out></td>
	</tr>
	<tr>
		<th colspan=4> Shipping Information</th>
	</tr>
	<tr>
		<td colspan = 4><b>Receiver Name:</b> <c:out value="${shippingInfo.name}"></c:out></td>
	</tr>
	<tr>
		<td  rowspan=3 colspan=2> <b>Address:</b><br>
			<c:out value="${shippingInfo.addressLine1}"></c:out>
			<br><c:out value="${shippingInfo.addressLine2}"></c:out>
		</td>
		<td colspan=2><b>City:   </b><c:out value="${shippingInfo.city}"></c:out></td>
	</tr>	
	<tr>	<td colspan=2><b>State:   </b><c:out value="${shippingInfo.state}"></c:out></td>	</tr>
	<tr>	<td colspan=2><b>Zip:   </b><c:out value="${shippingInfo.zip}"></c:out></td>	</tr>
	<tr><td colspan=4  align="right"><form:form action="confirmOrder" method="GET">
		<input type="submit" value="Confirm"/>
		</form:form></td>
	</tr>
</table>
</body>
</html>