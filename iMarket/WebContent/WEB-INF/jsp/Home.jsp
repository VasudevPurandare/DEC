<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>iMarket</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
.welcome {
	color: black;
	font-size: 24px;
	font-family: New Century Schoolbook, TeX Gyre Schola, serif;
	padding: 30px; 
	text-align: center;
}
</style>
</head>
<body style="background-color: #fffafa">
	<jsp:include page="Header.jsp"></jsp:include>
	<div class="welcome">
		<h4>
			Welcome to iMarket!!! <br> <br> Shop from our wide variety
			of products originally found in the great sub-continent of India...
		</h4>
	</div>
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>
