<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>International Market</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body
	style="background-color: #fffafa; font-family: New Century Schoolbook, TeX Gyre Schola, serif; font-size: 16px">
	<jsp:include page="Header.jsp"></jsp:include>
	<div class="shippingDetails" style="margin-left: 15px; font-size: 18px">
		<b>Enter Shipping Details:</b>
	</div>
	<br>
	<form:form modelAttribute="shippingInfo" method="post"
		action="submitShipping">
		<div class="table table-hover" style="margin-left: 15px">
			<div class="row">
				<div class="col-2">
					<form:label path="name">Name</form:label>
				</div>
				<div class="col-2">
					<form:input path="name" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-2">
					<form:label path="addressLine1">Address Line 1</form:label>
				</div>
				<div class="col-2">
					<form:input path="addressLine1" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-2">
					<form:label path="addressLine2">Address Line 2</form:label>
				</div>
				<div class="col-2">
					<form:input path="addressLine2" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-2">
					<form:label path="city">City</form:label>
				</div>
				<div class="col-2">
					<form:input path="city" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-2">
					<form:label path="state">State</form:label>
				</div>
				<div class="col-2">
					<form:input path="state" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-2">
					<form:label path="zip">Zip</form:label>
				</div>
				<div class="col-2">
					<form:input path="zip" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-4" style="padding: 10px">
					<div class="float-right">
					<input type="submit" value="Next"
						class="form-control btn btn-primary btn-md"></div>
				</div>
			</div>
		</div>
	</form:form>
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>