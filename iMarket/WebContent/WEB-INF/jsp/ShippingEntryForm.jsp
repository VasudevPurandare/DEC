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
                    <h4 class="card-title">Enter Shipping Info:</h4>
                    <hr/>
                        	<form:form modelAttribute="shippingInfo" method="post"
								action="submitShipping">
                        		<div class="table"	>
                        					<div class="form-group">						
											<label >To be Shipped to:</label>
											<form:input path="name" placeholder=" Reciever Name"  class="form-control " />
											</div>
											<div class="form-group my-auto ">	
											<div class="input-group">	
												<div class="form-group mr-auto ">						
													<div class="form-group">		
														<label >Address:</label>		
														<form:input path="addressLine1" placeholder="Address Line 1"  class="form-control  mb-3 " />		
														<form:input path="addressLine2" placeholder="Address Line 2"  class="form-control " />
													</div>
													<div class="form-group">
													<label >Zip Code:   </label>
														<form:input path="zip" placeholder="Zip Code"  class="form-control"/>
													</div>
												</div>
												<div class="form-group">						
													<div >						
													<label >City:</label>
													<form:input path="state" placeholder="City"  class="form-control " />
													<label >State:</label>
													<form:input path="city" placeholder="State"  class="form-control " />
													</div>
												</div>
											</div>
											</div>
											<input	 type="submit" value="Next"
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