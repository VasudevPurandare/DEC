<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>International Market</title>
</head>
<body
	style="background-color: #fffafa; font-family: New Century Schoolbook, TeX Gyre Schola, serif; font-size: 16px">
	<jsp:include page="Header.jsp"></jsp:include>
	
	<div class="row mt-4">
        <div class="col-lg-6 mx-auto">
            <div class="card ">
                <div class="card-header">
                    <div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
                    <h4 class="card-title">Enter Payment Info:</h4>
                            <form:form modelAttribute="paymentInfo" method="post"
								action="submitPayment">		
											<div class="form-group">						
											<label >Credit Holder Number</label>
											<form:input path="cardHolderName" placeholder="Card Holder Name"  class="form-control " />
											</div>
											<div class="form-group">		
											<label >Credit Card Number</label>
											<form:input path="creditCardNumber" placeholder="Card Number "  class="form-control " />
											</div>
											<div class="form-group">	
											<div class="input-group">	
												<div class="mr-auto">	
													<label >Cards Expiry Date</label>
													<form:input path="expirationDate" placeholder="MM/YYYY" class="form-control "/>	
												</div>
												<div class="mr-auto">	<label >CSV</label>
											<form:input path="cvvCode"  placeholder="XXX" type="password" class="form-control "/>
											</div>
											</div>
											</div>
											<div class="form-group">		
												<input type="submit" value="Next"
													class="form-control btn btn-primary btn-md">
											</div>
							</form:form>                            
                   </div>
                </div>
            </div>
        </div>
    </div>
	
	

	<br>
		<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>