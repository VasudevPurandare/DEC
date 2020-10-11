<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/myStyle.css">
<style>
.company {
	color: #ffffff;
}
</style>
<meta charset="ISO-8859-1">
<title>Header</title>
</head>
<body>
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />

	<div class="company bg-primary">
		<h1 class="text-center">
			<b>iMarket</b>
		</h1>
		<nav class="navbar navbar-expand-lg "
			style="background-color: #e3f2fd;">
			<button class="navbar-toggler navbar-light" type="button"
				data-toggle="collapse" data-target="#navbarColor01"
				aria-controls="navbarColor01" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarColor01">
				<ul class="navbar-nav  mr-auto">
					<li class="nav-item "><a class="nav-link"
						href="${contextPath}/"><h5>Home</h5> </a></li>
					<li class="nav-item"><a class="nav-link"
						href="${contextPath}/purchase"><h5>Purchase</h5></a></li>
					<li class="nav-item"><a class="nav-link"
						href="${contextPath}/aboutUS"><h5>About Us</h5></a></li>
					<li class="nav-item"><a class="nav-link"
						href="${contextPath}/contactUs"><h5>Contact Us</h5></a></li>
				</ul>
				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" type="text"
						placeholder="Search">
					<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
				</form>
			</div>

		</nav>
	</div>

</body>
</html>