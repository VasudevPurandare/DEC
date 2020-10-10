<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	style="background-color: #fffafa; font-family: New Century Schoolbook, TeX Gyre Schola, serif; font-size: 18px">
	<jsp:include page="Header.jsp"></jsp:include>
	<div class="orderConfirmation"
		style="margin-left: 15px; font-size: 18px">
		<b>Thank you for shopping with us...</b> <br> Your order
		confirmation number is:
		<%=request.getAttribute("orderId")%>
	</div>
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>