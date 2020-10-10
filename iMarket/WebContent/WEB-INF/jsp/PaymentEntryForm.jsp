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
	<div class="paymentDetails" style="margin-left: 15px; font-size: 18px">
		<b>Enter Payment Details:</b>
	</div>
	<br>
	<form:form modelAttribute="paymentInfo" method="post"
		action="submitPayment">
		<div class="table table-hover" style="margin-left: 15px">
			<div class="row">
				<div class="col-2">
					<form:label path="creditCardNumber">Credit Card Number</form:label>
				</div>
				<div class="col-2">
					<form:input path="creditCardNumber" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-2">
					<form:label path="expirationDate">Expiration Date</form:label>
				</div>
				<div class="col-2">
					<form:input path="expirationDate" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-2">
					<form:label path="cvvCode">CVV Code</form:label>
				</div>
				<div class="col-2">
					<form:input path="cvvCode" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-2">
					<form:label path="cardHolderName">Card Holder Name</form:label>
				</div>
				<div class="col-2">
					<form:input path="cardHolderName" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-sm-4" style="padding: 10px">
					<div class="float-right">
						<input type="submit" value="Next"
							class="form-control btn btn-primary btn-md">
					</div>
				</div>
			</div>
		</div>
	</form:form>
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>