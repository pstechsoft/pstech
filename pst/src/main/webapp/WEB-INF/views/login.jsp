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
<meta name="viewport" content="width=device-width, initial-scale=1.0 ">
<meta name="description" content="">
<meta name="author" content="">
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
<!-- <link rel='stylesheet'
	href='https://use.fontawesome.com/releases/v5.6.3/css/all.css'
	integrity='sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/'
	crossorigin='anonymous'> -->
<link rel="stylesheet" href="${css}/myapp.css">

</head>

<body>

	<!-- Nevigation -->
	<div class="container-fluid bg-dark d-md-block">
		<div class="container-fluid">
			<nav
				class="navbar navbar-dark sticky-top bg-dark flex-wrap2 flex-md-nowrap p-0">
				<!--        <div class="container-fluid">-->
				<img id="brand-image" alt="Website Logo"
					src="${images}/PS Logo2.png" /> <a class="navbar-brand ml-2 pt-3"
					href="${contextRoot}/home">PS TECH
					<p id="italic">Smart Shop 24x7</p>
				</a>
				<button class="navbar-toggler d-md-none mt-1 mr-2" type="button"
					data-toggle="collapse" data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="input-group py-1 px-2 px-md-0">
					<input class="form-control mr-sm-2" type="text"
						placeholder="Search products" aria-label="Search"> <span
						class="input-group-append">
						<div class="input-group-btn">
							<button class="btn btn-default my-sm-0" type="submit">
								<i class="fa fa-search"></i>
							</button>
						</div>
					</span>
				</div>

				<ul class="navbar-nav navbar-expand-md pl-3 pr-3">
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav mr-auto text-nowrap">
							<li class="nav-item my-1 active" id="home"><a
								class="nav-link" href="${contextRoot}/home"><i
									class="fa fa-home fa-fw" aria-hidden="true"></i> Home <span
									class="sr-only">(current)</span></a></li>
						</ul>
					</div>
				</ul>
			</nav>
		</div>
	</div>

	<!-- Page Content -->
	<div class="content">
		<div class="container">
		<!-- This will be displayed if the credential are wrong -->
			<c:if test="${not empty message}">
				<div class="row">
					<div class="col-lg-6 mx-auto p-1">
						<div class="alert alert-danger">${message}</div>
					</div>
				</div>
			</c:if>
			<!-- This will be displayed if the user has logged out -->
			<c:if test="${not empty logout}">
				<div class="row">
					<div class="col-lg-6 mx-auto p-1">
						<div class="alert alert-success">${logout}</div>
					</div>
				</div>
			</c:if>
			<div class="row">
				<div class="col-lg-6 mx-auto p-2">
					<div class="card border-primary mb-3">
						<div class="card bg-primary text-white">
							<div class="card-header">
								<h4>Login</h4>
							</div>
						</div>
						<div class="card-body">
							<!-- FORM ELEMENT -->
							<form action="${contextRoot}/login" class="form-horizontal"
								method="POST" id="loginForm">

								<div class="form-group row">
									<label class="form-control-label col-lg-4" for="username"><b>Email:
									</b></label>
									<div class="col-lg-8">
										<input type="text" name="username" id="username"
											placeholder="abcd@xyz.com" class="form-control" />
									</div>
								</div>


								<div class="form-group row">
									<label class="form-control-label col-lg-4" for="password"><b>Password:
									</b></label>
									<div class="col-lg-8">
										<input type="password" name="password" id="password"
											placeholder="Password" class="form-control" />
									</div>
								</div>

								<div class="form-group row">
									<div class="col-lg-8 ml-auto">
										<input type="hidden" name="${_csrf.parameterName}"
											value="${_csrf.token}" /><input type="submit" value="Login"
											class="btn btn-primary">
									</div>
								</div>
							</form>

							<div class="card-footer">
								<div class="text-right">
									New User - <a href="${contextRoot}/register">Register Here</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<%@include file="./shared/footer.jsp"%>

	<!-- Jquery -->
	<script src="${js}/jquery.js"></script>

	<!-- Jquery Validator-->
	<script src="${js}/jquery.validate.js"></script>

	<!-- Ajax core -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>

	<!-- Bootstrap Core -->
	<script src="${js}/bootstrap.min.js"></script>


	<!-- self coded js -->
	<script src="${js}/myapp.js"></script>


</body>

</html>