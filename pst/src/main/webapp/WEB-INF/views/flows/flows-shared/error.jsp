<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>




<spring:url var="css" value="/resources/css" />
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


<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="${css}/bootstrap.min.css">
<link rel="stylesheet" href="${css}/bootstrap.css">

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
							<li class="nav-item my-1" id="listProducts"><a
								href="${contextRoot}/show/all/products" class="nav-link"><i
									class="fab fa-product-hunt"></i> View Products</a></li>

							<security:authorize access="isAuthenticated()">
								<li class="nav-item dropdown my-1"><a
									class="nav-link btn btn-outline-secondary dropdown-toggle"
									id="navbarDropdown" href="javascript:void(0)" role="button"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"><i class="fa fa-user"></i>
										${userModel.fullName}</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<security:authorize access="hasAuthority('USER')">
											<a class="dropdown-item" href="${contextRoot}/cart/show">
												<span class="fa fa-cart-plus"></span> <span
												class="badge badge-notify">
													${userModel.cart.cartLines} </span> &#8377;
												${userModel.cart.grandTotal}
											</a>
											<div class="dropdown-divider" role="separator"></div>
											<a class="dropdown-item" href="${contextRoot}/myorders"><i
												class="fa fa-shopping-bag"></i> My Order</a>
											<div class="dropdown-divider" role="separator"></div>
										</security:authorize>
										<a class="dropdown-item" href="${contextRoot}/perform-logout"><i
											class="fa fa-sign-out"></i> Logout</a>
									</div></li>
							</security:authorize>
							<%-- <li class="nav-item my-1" id="myaccount"><a
							href="${contextRoot}/myaccount"
							class="nav-link btn btn-outline-secondary"><i
								class="fa fa-user"></i> My account</a></li> --%>
						</ul>
					</div>
				</ul>
				<!--        </div>-->
			</nav>
		</div>
	</div>


	<div class="container">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="jumbotron">
						<h1>${errorTitle}</h1>
						<img class="rounded mx-auto d-block" alt="error"
							src="${images}/error400.png" />
						<hr />
						<blockquote style="word-wrap: break-word">${errorDescription}</blockquote>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<%@include file="../flows-shared/flows-footer.jsp"%>
</body>

</html>