<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>PS TECH - ${title}</title>
<link rel="icon" type="image/png" href="${images}/PS Logo2.png" />

<script>
	window.menu = '${title}';
	window.contextRoot = '${contextRoot}'
</script>

<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="${css}/bootstrap.min.css">
<link rel="stylesheet" href="${css}/bootstrap.css">

<!-- Bootstrap dataTable CSS -->
<link href="${css}/dataTables.bootstrap4.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel='stylesheet'
	href='https://use.fontawesome.com/releases/v5.6.3/css/all.css'
	integrity='sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/'
	crossorigin='anonymous'>
<link rel="stylesheet" href="${css}/myapp.css">

</head>

<body>

	<!-- Nevigation -->
	<%@include file="./shared/navbar.jsp"%>
	<c:if test="${userClickMyCart == true }"><%@include
			file="cart.jsp"%>
	</c:if>

	<!-- Loads only when user clicks All Products -->
	<c:if
		test="${userClickAllProducts==true or userClickCategoryProducts==true}">
		<%@include file="listproduct.jsp"%>
	</c:if>

	<c:if test="${userClickMyAccount == true }"><%@include
			file="myaccount.jsp"%>
	</c:if>


	<!-- Page Content -->
	<!-- Loading the home content -->
	<c:if test="${userClickHome == true }"><%@include
			file="home.jsp"%>
	</c:if>
	<!-- Load only when user click about -->
	<c:if test="${userClickAbout == true }"><%@include
			file="about.jsp"%>
	</c:if>
	<!-- Single product page -->
	<c:if test="${userClickShowProduct == true }"><%@include
			file="singleProduct.jsp"%>
	</c:if>

	<!-- Footer -->
	<%@include file="./shared/footer.jsp"%>

	<!-- Jquery -->
	<script src="${js}/jquery.js"></script>

	<!-- Ajax core -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>

	<!-- Bootstrap Core -->
	<script src="${js}/bootstrap.min.js"></script>
	<!-- Data Table -->
	<script src="${js}/jquery.dataTables.js"></script>
	<script src="${js}/dataTables.bootstrap4.js"></script>

	<!-- self coded js -->
	<script src="${js}/myapp.js"></script>


</body>

</html>