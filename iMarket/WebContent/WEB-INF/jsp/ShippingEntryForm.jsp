<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form modelAttribute="shippingInfo" method="post" action="submitShipping">
    <table>
		<tr>
			<td><form:label path="name">Name</form:label></td>
            <td><form:input path="name"/></td>
		</tr>
		<tr>
			<td><form:label path="addressLine1">Address Line 1</form:label></td>
            <td><form:input path="addressLine1"/></td>
		</tr>
		<tr>
			<td><form:label path="addressLine2">Address Line 2</form:label></td>
            <td><form:input path="addressLine2"/></td>
		</tr>
		<tr>
			<td><form:label path="city">City</form:label></td>
            <td><form:input path="city"/></td>
		</tr>
		<tr>
			<td><form:label path="state">State</form:label></td>
            <td><form:input path="state"/></td>
		</tr>
		<tr>
			<td><form:label path="zip">Zip</form:label></td>
            <td><form:input path="zip"/></td>
		</tr>
	  <tr>
		<td colspan="2" > <input type="submit" value="Submit Shipping Info"></td>
	  </tr>
    </table>
</form:form>
</body>
</html>