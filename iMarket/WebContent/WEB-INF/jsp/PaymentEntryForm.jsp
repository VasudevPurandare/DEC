<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>International Market</title>
<script type="text/javascript">
function validate(){
    var f=document.getElementById("payment");
    return validateCardHolderName(f) && validateCardNumber(f) && validateCvv(f);
}

function  validateCardNumber(form){

  var cardNumber=form["creditCardNumber"].value;

  cardNumberError.innerHTML="";

  if( cardNumber==null || cardNumber==""){
	  document.getElementById("creditCardNumber").classList.add('is-invalid');
	   cardNumberError.innerHTML="Enter Card Number";
	   return false;
  }

  else if(cardNumber.length<16){
	  document.getElementById("creditCardNumber").classList.add('is-invalid');
	   cardNumberError.innerHTML="Card number has to be 16 digits"
	   return false;
  }
  
  document.getElementById("creditCardNumber").classList.remove('is-invalid');
  document.getElementById("creditCardNumber").classList.add('is-valid');
  return true;
}

function  validateCvv(form){
	   var cvv=form["cvvCode"].value;
	   cvvError = document.getElementById("cvvError");
	   cvvError.innerHTML="";

	   if( cvv==null || cvv==""){
		   document.getElementById("cvvCode").classList.add('is-invalid');
		   cvvError.innerHTML="CVV is Required";
		   return false;
	   }

	   else if(cvv.length<3 || cvv.length>3){
		   document.getElementById("cvvCode").classList.add('is-invalid');
		   cvvError.innerHTML="CVV has to be 3 digits"
		   return false;
	   }
	   document.getElementById("cvvCode").classList.remove('is-invalid');
	   document.getElementById("cvvCode").classList.add('is-valid');
	   return true;
	}

function  validateCardHolderName(form){
	   var name=form["cardHolderName"].value;
	   cardHolderNameError = document.getElementById("cardHolderNameError");
	   cardHolderNameError.innerHTML="";

	   if( name==null || name==""){
		   document.getElementById("cardHolderName").classList.add('is-invalid');
		   cardHolderNameError.innerHTML="Name is Required";
		   return false;
	}
	   document.getElementById("cardHolderName").classList.remove('is-invalid');
	   document.getElementById("cardHolderName").classList.add('is-valid');
	   return true;
}
</script>
</head>
<body>
	<jsp:include page="Header.jsp"></jsp:include>
	<div class="row mt-4">
		<div class="col-lg-6 mx-auto">
			<div class="card ">
				<div class="card-header">
					<div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
						<h4 class="card-title">Enter Payment Info:</h4>
						<form:form id="payment" modelAttribute="paymentInfo" method="post"
							action="submitPayment">
							<div class="form-group">
								<label>Card Holder Number</label>
								<form:input path="cardHolderName" name="cardHolderName" id="cardHolderName" placeholder="Card Holder Name"
									class="form-control " />
								<div class="invalid-feedback" id="cardHolderNameError"></div>
							</div>
							<div class="form-group">
								<label>Credit Card Number</label>
								<form:input path="creditCardNumber" name="creditCardNumber" placeholder="Card Number "
									class="form-control " />
							<div class="invalid-feedback" id="cardNumberError"></div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<div class="mr-auto">
										<label>Cards Expiration Date</label>
										<form:input path="expirationDate" name="expirationDate" placeholder="MM/YYYY"
											class="form-control " />
								        <form:errors path="expirationDate"/>
									</div>
									<div class="mr-auto">
										<label>CVV</label>
										<form:input path="cvvCode" placeholder="XXX" name="cvvCode" type="password"
											class="form-control " />
			                            <div class="invalid-feedback" id="cvvError"></div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<input type="submit" value="Next"
									class="form-control btn btn-primary btn-md" onclick="return validate();">
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