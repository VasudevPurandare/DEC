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
    var f=document.getElementById("shippingInfo");
    return receiverName(f) && validateAddress(f) && validateCity(f) && validateState(f) && validateZip(f);
}

function  validateAddress(form){
	   var add1=form["addressLine1"].value;
	   addressLine1Error = document.getElementById("addressLine1Error");
	   addressLine1Error.innerHTML="";

	   if( add1==null || add1==""){
		   document.getElementById("addressLine1").classList.add('is-invalid');
		   addressLine1Error.innerHTML="Address is Required";
		   return false;
	   }
	   
	   document.getElementById("addressLine1").classList.remove('is-invalid');
	   document.getElementById("addressLine1").classList.add('is-valid');
	   return true;
	}
	
function  validateCity(form){
	   var city=form["city"].value;
	   cityError = document.getElementById("cityError");
	   cityError.innerHTML="";

	   if( city==null || city==""){
		   document.getElementById("city").classList.add('is-invalid');
		   cityError.innerHTML="City is Required";
		   return false;
	   }
	   
	   document.getElementById("city").classList.remove('is-invalid');
	   document.getElementById("city").classList.add('is-valid');
	   return true;
	}
	
function  validateState(form){
	   var state=form["state"].value;
	   stateError = document.getElementById("stateError");
	   stateError.innerHTML="";

	   if( state==null || state==""){
		   document.getElementById("state").classList.add('is-invalid');
		   stateError.innerHTML="State is Required";
		   return false;
	   }
	   
	   document.getElementById("state").classList.remove('is-invalid');
	   document.getElementById("state").classList.add('is-valid');
	   return true;
	}

function  validateZip(form){
	   var zip=form["zip"].value;
	   zipError = document.getElementById("zipError");
	   zipError.innerHTML="";

	   if( zip==null || zip==""){
		   document.getElementById("zip").classList.add('is-invalid');
		   zipError.innerHTML="Zip is Required";
		   return false;
	   }
	   
	   document.getElementById("zip").classList.remove('is-invalid');
	   document.getElementById("zip").classList.add('is-valid');
	   return true;
	}
	
function  receiverName(form){
	   var name=form["name"].value;
	   receiverNameError = document.getElementById("nameError");
	   receiverNameError.innerHTML="";

	   if( name==null || name==""){
		   document.getElementById("name").classList.add('is-invalid');
		   receiverNameError.innerHTML="Name is Required";
		   return false;
	}
	   document.getElementById("name").classList.remove('is-invalid');
	   document.getElementById("name").classList.add('is-valid');
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
						<h4 class="card-title">Enter Shipping Info:</h4>
						<hr />
						<form:form modelAttribute="shippingInfo" id="shippingInfo" method="post"
							action="submitShipping">
							<div class="table">
								<div class="form-group">
									<label>To be Shipped to:</label>
									<form:input path="name" id="name" placeholder=" Reciever Name"
										class="form-control " />
									<div class="invalid-feedback" id="nameError"></div>
								</div>
								<div class="form-group my-auto ">
									<div class="input-group">
										<div class="form-group mr-auto ">
											<div class="form-group">
												<label>Address:</label>
												<form:input path="addressLine1" id="addressLine1" placeholder="Address Line 1"
													class="form-control  mb-3 " />
												<div class="invalid-feedback" id="addressLine1Error"></div>
												<form:input path="addressLine2" placeholder="Address Line 2"
													class="form-control " />
											</div>
											<div class="form-group">
												<label>Zip Code: </label>
												<form:input path="zip" placeholder="Zip Code" id="zip"
													class="form-control" />
												<div class="invalid-feedback" id="zipError"></div>
											</div>
										</div>
										<div class="form-group">
											<div>
												<label>City:</label>
												<form:input path="city" placeholder="City" id="city"
													class="form-control " />
												<div class="invalid-feedback" id="cityError"></div>
												<label>State:</label>
												<form:input path="state" placeholder="State" id="state"
													class="form-control " />
												<div class="invalid-feedback" id="stateError"></div>
											</div>
										</div>
									</div>
								</div>
								<input type="submit" value="Next" onclick="return validate();"
									class="form-control btn btn-primary btn-md">

							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>