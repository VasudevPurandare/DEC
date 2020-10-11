<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
</head>
<body style="font-size: 24px">
	<jsp:include page="Header.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<div
				class="card col-lg-4 col-sm-6 col-xs-12 col-md-4 shadow d-flex align-items-stretch mr-auto mt-5"
				style="width: 400px">
				<div style="height: 50%">
					<img class="card-img-top" src="images/Medha.jpeg" alt="Card image"
						style="width: 100%; max-height: 100%;">
				</div>
				<div class="card-body">
					<h4 class="card-title">Medha Gupta</h4>
					<p class="card-text">Some example text some example text. John
						Doe is an architect and engineer</p>
					<a href="#" class="btn btn-primary">See Profile</a>
				</div>
			</div>
			<div
				class="card col-lg-4 col-sm-6 col-xs-12 col-md-4 shadow d-flex align-items-stretch mr-auto mt-5"
				style="width: 400px">
				<div style="height: 50%">
					<img class="card-img-top" src="images/Mihir.jpeg" alt="Card image"
						style="width: 100%; max-height: 100%">
				</div>
				<div class="card-body">
					<h4 class="card-title">Mihir Iyer</h4>
					<p class="card-text">Some example text some example text. John
						Doe is an architect and engineer</p>
					<a href="#" class="btn btn-primary">See Profile</a>
				</div>
			</div>
			<div
				class="card col-lg-4 col-sm-6 col-xs-12 col-md-4 shadow d-flex align-items-stretch mr-auto mt-5"
				style="width: 400px">
				<div style="height: 50%">
					<img class="card-img-top" src="images/Vasudev.jpeg"
						alt="Card image" style="width: 100%; max-height: 100%">
				</div>
				<div class="card-body">
					<h4 class="card-title">Vasudev Purandare</h4>
					<p class="card-text">Some example text some example text. John
						Doe is an architect and engineer</p>
					<a href="#" class="btn btn-primary">See Profile</a>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>