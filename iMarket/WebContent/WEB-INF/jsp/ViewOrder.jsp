<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<body style="background-color: #fffafa; font-family: New Century Schoolbook, TeX Gyre Schola, serif; font-size: 16px; '">
	<jsp:include page="Header.jsp"></jsp:include>

	
		<div class="row mt-4">
        <div class="col-lg-6 mx-auto">
            <div class="card ">
                <div class="card-header">
                    <div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
                    <h4 class="card-title">Your Order:</h4>
						<table class="table" cellpadding=20>
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
						</table>
	</div>
	</div>
	</div>
            <div class="card ">
                <div class="card-header">
                    <div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
                    <h4 class="card-title">Payment Information:</h4>
                        <div  class="tab-pane fade show active pt-3">

							<table class="table"  cellpadding=20>
									<tr>
										<td colspan=2><b>Credit Card Number:</b><br>
										<c:out value="${paymentInfo.creditCardNumber}"></c:out></td>
										<td colspan=2><b>Expiration Date:</b><br>
										<c:out value="${paymentInfo.expirationDate}"></c:out></td>
									</tr>
									<tr>
										<td colspan=2><b>CVV:</b><br>
										<c:out value="${paymentInfo.cvvCode}"></c:out></td>
										<td colspan=2><b>Card Holder Name:</b><br>
										<c:out value="${paymentInfo.cardHolderName}"></c:out></td>
									</tr>
									</table>
									</div>
									</div>
									</div>
									</div>
            <div class="card ">
                <div class="card-header">
                    <div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
                    <h4 class="card-title">Shipping Information:</h4>
                        <div  class="tab-pane fade show active pt-3">
							<table class="table" cellpadding=20>	
								<tr>
									<td colspan=4><b>Receiver Name:</b> <c:out
											value="${shippingInfo.name}"></c:out></td>
								</tr>
								<tr>
									<td rowspan=3 colspan=2><b>Address:</b><br> <c:out
											value="${shippingInfo.addressLine1}"></c:out> <br>
									<c:out value="${shippingInfo.addressLine2}"></c:out></td>
									<td colspan=2><b>City: </b>
									<c:out value="${shippingInfo.city}"></c:out></td>
								</tr>
								<tr>
									<td colspan=2><b>State: </b>
									<c:out value="${shippingInfo.state}"></c:out></td>
								</tr>
								<tr>
									<td colspan=2><b>Zip: </b>
									<c:out value="${shippingInfo.zip}"></c:out></td>
								</tr>
							</table>
					</div>
					</div>
					</div>
					</div>
					<div>
					<form:form action="confirmOrder"
					method="GET">
						<input type="submit" value="Confirm" class="form-control btn btn-primary"/>
					</form:form>
					</div>
	</div>
	</div>		
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>