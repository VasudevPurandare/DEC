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
	<b>Enter Payment Information</b>
	<form:form modelAttribute="paymentInfo" method="post" action="submitPayment">
    <table border=1 cellpadding=20>
		<tr>
			<td><form:label path="creditCardNumber">Credit Card Number</form:label></td>
            <td><form:input path="creditCardNumber"/></td>
		</tr>
		<tr>
			<td><form:label path="expirationDate">Expiration Date</form:label></td>
            <td><form:input path="expirationDate"/></td>
		</tr>
		<tr>
			<td><form:label path="cvvCode">CVV Code</form:label></td>
            <td><form:input path="cvvCode"/></td>
		</tr>
		<tr>
			<td><form:label path="cardHolderName">Card Holder Name</form:label></td>
            <td><form:input path="cardHolderName"/></td>
		</tr>
	  <tr>
		<td colspan="2"><input type="submit" value="Submit Payment Info"></td>
	  </tr>
    </table>
</form:form>
</body>
</html>