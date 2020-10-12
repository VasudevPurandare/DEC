<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>International Market</title>
</head>
<body>
	<jsp:include page="Header.jsp"></jsp:include>

	<div class="row mt-4">
		<div class="col-lg-6 mx-auto">
			<div class="card ">
				<div class="card-header">
					<div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
						<h4 class="card-title">Order Confirmation:</h4>
						<hr />
						<b>Thank you for shopping with us...</b> <br> Your order
						confirmation number is:
						<%=request.getAttribute("orderId")%>
					</div>
				</div>
			</div>
			<div class="form-group">
				<a href="${pageContext.request.contextPath}/purchase"
					class="form-control btn btn-primary btn-md">Shop Again....</a>
			</div>
		</div>
	</div>
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>