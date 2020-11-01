<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>International Market</title>
<script>
function getproductQuantity (id){
	
	var qid="#quantity"+id
	var nid="#name"+id
	var q= ($(qid).val());
	 /*
	$.ajax({
    	type: "POST",
        url: "purchase/isAvailable",
        data: {id: id, cust_q: q }, // serializes the form's elements.
        success: function(data)
        {
       		if(data!="true"){
       			if(parseInt(data)==0)
       			{
       				alert( $(nid).val() + ": Out of Stock!! ");
       			}
       			else{
       				alert( $(nid).val() + ": quantity available "+ data);
       			}
       			$(qid).val(data);
       		}
		}
	});
	     */
	return false;
};

function increment(id){
	var qid="#quantity"+id
	let q= parseInt($(qid).val());
	$(qid).val( q+1);
	getproductQuantity (id);
}

function decrement(id){
	var qid="#quantity"+id
	let q= parseInt($(qid).val());
	$(qid).val( (q-1)<0?0:(q-1)  );
}
</script>
<style>
img {
	max-height: 100%;
}
</style>
</head>

<body>
	<jsp:include page="Header.jsp"></jsp:include>
	
	<h4 style="text-align:center;">${message}</h4>
	
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	
	<form:form modelAttribute="order" method="post"
		action="${contextPath}/purchase/submitItems">

		<div class="container">
		<div class="row">
		
		<div>	Customer Name:
				<form:input type ="text" id="cust_name" placeholder="Enter Your Name"
					path="customer_name"  class="form-control "/>
				Customer Email:<form:input path="customer_email"  placeholder="Enter Your Email" type="email" class="form-control "/>			
		</div>
		</div>
			<div class="row">
				<c:forEach items="${inventory.items}" var="item" varStatus="loop">
					<div
						class="card col-lg-2 col-sm-6 col-xs-12 col-md-4 shadow d-flex align-items-stretch mr-4 mt-5"
						style="background: #F0F0F0">
						<div style="height: 50%;">
							<img class="card-img img-responsive"
								src="${contextPath}/images/${loop.index}.jpg" alt="Card image">
						</div>
						<div class="card-body">
							<h4 class="card-title">${item.name}</h4>
							<p class="card-text">
								<b>By:</b> ${item.company}<br> <b>Price:</b> $
								${item.price}
							</p>
							<div class="input-group">
								<a class="btn btn-sm btn-outline-secondary"
									onclick="decrement(${loop.index});">-</a>
								<form:input id="quantity${loop.index}"
									path="lineItems[${loop.index}].quantity"
									class="form-control input-number"
									onchange="getproductQuantity(${loop.index})" />
								<a class="btn btn-sm btn-outline-secondary"
									onclick="increment(${loop.index})">+</a>
							</div>
						</div>
					</div>
						<form:hidden id="name${loop.index}"
						path="lineItems[${loop.index}].item_number" value="${item.itemNumber}" />
					<form:hidden id="name${loop.index}"
						path="lineItems[${loop.index}].name" value="${item.name}" />
					<form:hidden path="lineItems[${loop.index}].price"
						value="${item.price}" />
					<form:hidden path="lineItems[${loop.index}].company"
						value="${item.company}" />
					<c:if test="${loop.index}%2==0"> Even</c:if>
				</c:forEach>
			</div>
			<br>
			<div class="row" style="justify-content: center">
				<div class="col-lg-3" style="padding: 10px">
					<input type="submit" value="Next"
						class="form-control btn btn-primary btn-lg">
				</div>
			</div>
		</div>
	</form:form>
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>