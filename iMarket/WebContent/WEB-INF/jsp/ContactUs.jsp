<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
</head>
<body style="background-color: #fffafa; font-family: New Century Schoolbook, TeX Gyre Schola, serif; font-size: 24px">
	<jsp:include page="Header.jsp"></jsp:include>

<div class="container">	
    <div class="row ">
        <div class="col-sm-12 ">
    		<h2 class="h1-responsive font-weight-bold text-center my-4">Contact us</h2>
    		<p class="text-center mb-5">Do you have any questions? Please do not hesitate to contact us directly. <br>Our team will come back to you within
        	a matter of hours to help you.</p>
        	<div class="row">
	        	<div class="col col-md-9">
	        	         <form  action="#" method="POST">
	                <div class="row">
	                    <div class="col-md-3">
	                        <div class="md-form mb-0">
	                            <input type="text" id="name" name="name" class="form-control">
	                            <label for="name" class="">Your name</label>
	                        </div>
	                    </div>
	                    <div class="col-md-3">
	                        <div class="md-form mb-0">
	                            <input type="text" id="email" name="email" class="form-control">
	                            <label for="email" class="">Your email</label>
	                        </div>
	                    </div>
	                    <div class="col-md-3">
	                        <div class="md-form mb-0">
	                            <input type="text" id="subject" name="subject" class="form-control">
	                            <label for="subject" class="">Subject</label>
	                        </div>
	                    </div>
	                </div>
	                <div class="row">
	                    <div class="col-md-9">
	                        <div class="md-form">
	                            <textarea type="text" id="message" name="message" rows="2" class="form-control md-textarea"></textarea>
	                            <label for="message">Your message</label>
	                        </div>
	                    </div>
	                </div>
	                 <div class="row">
	                 	 <div class="col-md-9">
	                	<div class="text-center text-md-right">
                			<a class="btn btn-primary" onclick="document.getElementById('contact-form').submit();">Send</a>
           			 	</div>
           			 	</div>
           			 </div>
	            </form>        	
	        	</div>
	        	<div class="col-md-3 text-center">
				            <ul class="list-unstyled mb-0">
				                <li><i class="fas fa-map-marker-alt fa-2x"></i>
				                    <p>Ohio State University, OH 43202, USA</p>
				                </li>
				                <li><i class="fas fa-phone mt-4 fa-2x"></i>
				                    <p>+1-234-567-89</p>
				                </li>
				                <li><i class="fas fa-envelope mt-4 fa-2x"></i>
				                    <p>contact@osu.edu</p>
				                </li>
				            </ul>
				 </div>
        	</div>
        </div>
    </div>
</div>
 
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>