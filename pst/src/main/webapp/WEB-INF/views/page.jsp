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
<title>PS TECH</title>

<link rel="stylesheet" href="${css}/bootstrap.min.css">
<link rel="stylesheet" href="${css}css/bootstrap4.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="${css}/myapp.css">
</head>

<body>


	<!-- Top Nevigation -->
	<div class="container-fluid bg-info header-top d-none d-md-block">
		<div class="container-fluid">
			<div class="row text-light pt-2 pb-2">
				<div class="col-md-5">
					<a href="https://mail.google.com" class="contact text-light"><i
						class="fa fa-envelope-o" aria-hidden="true"></i>
						pstech24x7@gmail.com</a>
				</div>
				<div class="col-md-3"></div>
				<div class="col-md-2">
					<a href="#" class="account text-light"><i class="fa fa-user-o"
						aria-hidden="true"></i> Login/Register</a>
				</div>
				<div class="col-md-2">
					<a href="#" class="cart text-light"><i class="fa fa-cart-plus"
						aria-hidden="true"></i> My Cart - <i class="fa fa-inr"></i> 0.00</a>
				</div>
			</div>
		</div>
	</div>


	<!-- Second Top Nevigation -->
	<div class="container-fluid bg-dark d-md-block">
		<div class="container-fluid">
			<nav
				class="navbar navbar-dark sticky-top bg-dark flex-wrap2 flex-md-nowrap p-0">
				<!--        <div class="container-fluid">-->
				<img id="brand-image" alt="Website Logo"
					src="${images}/PS Logo2.png" /> <a class="navbar-brand ml-2 pt-3"
					href="#">PS TECH
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

				<ul class="navbar-nav navbar-expand-md pl-2 pr-3">
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav mr-auto text-nowrap">
							<li class="nav-item my-1 active"><a class="nav-link"
								href="#">Home <span class="sr-only">(current)</span></a></li>
							<li class="nav-item dropdown my-1"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <i class="fa fa-folder-open"
									aria-hidden="true"></i> Categories
							</a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="#">Laptop</a> <a
										class="dropdown-item" href="#">Desktop</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#">Antivirus</a>
								</div></li>
							<li class="nav-item my-1"><a href="#"
								class="nav-link btn btn-outline-secondary"><i
									class="fa fa-user"></i> My account</a></li>
						</ul>
					</div>
				</ul>
				<!--        </div>-->
			</nav>
		</div>
	</div>


	<div class="container-fluid bg-gold header-top d-md-block">
		<div class="container-fluid">
			<div class="row text-light pt-2 pb-2">
				<div class="col-md-1">
					<a href="#" class="nav-a text-light">Laptop</a>
				</div>
				<div class="col-md-1">
					<a href="#" class="nav-a text-light">Desktop</a>
				</div>
				<div class="col-md-1">
					<a href="#" class="nav-a text-light">Antivirus</a>
				</div>
				<div class="col-md-8"></div>
			</div>
		</div>
	</div>
	<div id="carouselExampleIndicators" class="carousel slide bg-dark"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block" width="1100" height="500"
					src="${images}/envyx360_1.png" alt="img1">
				<div class="carousel-caption d-none d-md-block">
					<h1>HP ENVY x360</h1>
					<h4>
						<p>Power your inspiration anytime, anywhere with the ENVY
							x360.</p>
					</h4>
					<button class="btn btn-default btn-lg">Shop Now</button>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block" width="1100" height="500"
					src="${images}/envyx360_2.png" alt="Second slide">
				<div class="carousel-caption d-none d-md-block">
					<h1>HP ENVY x360</h1>
					<h4>
						<p>Power your inspiration anytime, anywhere with the ENVY
							x360.</p>
					</h4>
					<button class="btn btn-default btn-lg">Shop Now</button>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block" width="1100" height="500"
					src="${images}/envyx360_3.png" alt="Second slide">
				<div class="carousel-caption d-none d-md-block">
					<h1>HP ENVY x360</h1>
					<h4>
						<p>Power your inspiration anytime, anywhere with the ENVY
							x360.</p>
					</h4>
					<button class="btn btn-default btn-lg">Shop Now</button>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block" width="1100" height="500"
					src="${images}/envyx360_4.png" alt="Second slide">
				<div class="carousel-caption d-none d-md-block">
					<h1>HP ENVY x360</h1>
					<h4>
						<p>Power your inspiration anytime, anywhere with the ENVY
							x360.</p>
					</h4>
					<button class="btn btn-default btn-lg">Shop Now</button>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<!-- Location & Contact -->
	<div
		class="container-fluid offer pt-1 pb-1 bg-orange d-none d-md-block">
		<div class="container">
			<div class="row">
				<div class="col-md-4 m-right">
					<h4>FREE SHIPPING</h4>
					<p>
						On all orders over<i class="fa fa-inr"></i> 5000
					</p>
				</div>

				<div class="col-md-4 m-right">
					<h4>CALL US ANYTIME</h4>
					<p>+91-9439231191</p>
				</div>

				<div class="col-md-4">
					<h4>OUR LOCATION</h4>
					<p>Rourkela,Odisha</p>
				</div>
			</div>
		</div>
	</div>


	<!-- Carousel -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<h2>
					Trending <b>Products</b>
				</h2>
				<div id="myCarousel" class="carousel slide" data-ride="carousel"
					data-interval="0">
					<!-- Carousel indicators -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>
					<!-- Wrapper for carousel items -->
					<div class="carousel-inner">
						<div class="item carousel-item active">
							<div class="row">
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<img src="${images}/HP Envy 13au2.jpg"
												class="img-responsive img-fluid" alt="">
										</div>
										<div class="thumb-content">
											<h4>HP Envy</h4>
											<p class="item-price">
												<strike><i class="fa fa-inr"></i> 67972.00</strike> <span><i
													class="fa fa-inr"></i> 66360.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<button class="btn btn-danger">
												<i class="fa fa-cart-plus" aria-hidden="true"></i> Add To
												Cart
											</button>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<img src="${images}/sandisk2.jpeg"
												class="img-responsive img-fluid" alt="">
										</div>
										<div class="thumb-content">
											<h4>Sandisk Cruzer Blade 16 GB</h4>
											<p class="item-price">
												<strike><i class="fa fa-inr"></i> 550.00</strike> <span><i
													class="fa fa-inr"></i> 330.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<button class="btn btn-danger">
												<i class="fa fa-cart-plus" aria-hidden="true"></i> Add To
												Cart
											</button>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<img src="${images}/HP Envy 13au1.jpg"
												class="img-responsive img-fluid" alt="">
										</div>
										<div class="thumb-content">
											<h4>Hp Envy X360</h4>
											<p class="item-price">
												<strike><i class="fa fa-inr"></i> 83496.00</strike> <span><i
													class="fa fa-inr"></i> 81794.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<button class="btn btn-danger">
												<i class="fa fa-cart-plus" aria-hidden="true"></i> Add To
												Cart
											</button>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<img src="${images}/K7 Total 1User 1Year.jpg"
												class="img-responsive img-fluid" alt="">
										</div>
										<div class="thumb-content">
											<h4>K7 Total 1User 1Year</h4>
											<p class="item-price">
												<strike><i class="fa fa-inr"></i> 1299.00</strike> <span><i
													class="fa fa-inr"></i> 550.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i
														class="fa fa-star-half-o"></i></li>
												</ul>
											</div>
											<button class="btn btn-danger">
												<i class="fa fa-cart-plus" aria-hidden="true"></i> Add To
												Cart
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item carousel-item">
							<div class="row">
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<img src="${images}/HP Pavilion 2.jpg"
												class="img-responsive img-fluid" alt="">
										</div>
										<div class="thumb-content">
											<h4>Hp Pavilion</h4>
											<p class="item-price">
												<strike><i class="fa fa-inr"></i> 81250.00</strike> <span><i
													class="fa fa-inr"></i> 78193.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<button class="btn btn-danger">
												<i class="fa fa-cart-plus" aria-hidden="true"></i> Add To
												Cart
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Carousel controls -->
						<a class="carousel-control left carousel-control-prev"
							href="#myCarousel" data-slide="prev"> <i
							class="fa fa-angle-left"></i>
						</a> <a class="carousel-control right carousel-control-next"
							href="#myCarousel" data-slide="next"> <i
							class="fa fa-angle-right"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>




	<!-- All Laptops -->
	<div class="container-fluid bg-light-gray">

		<div class="container pt-5">

			<div class="row">
				<h3>ALL LAPTOP</h3>
			</div>
			<div class="row">
				<div class="underline"></div>
			</div>
		</div>
		<div class="container mt-5">
			<div class="row">
				<div class="col-md-3">
					<div class="card">
						<img src="${images}/HP Envy 13au2.jpg" alt="card-1"
							class="card-img-top">
						<div class="card-body">
							<h5 text-align:center>Hp Envy</h5>
							<h6 text-align:center>
								<i class="fa fa-inr"></i> 81794.00
							</h6>
							<button class="btn btn-danger">
								<i class="fa fa-cart-plus" aria-hidden="true"></i> Add To Cart
							</button>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="card">
						<img src="${images}/HP Envy 13au3.jpg" alt="card-1"
							class="card-img-top">
						<div class="card-body">
							<h5>Hp Envy</h5>
							<h6>
								<i class="fa fa-inr"></i> 81794.00
							</h6>
							<button class="btn btn-danger">
								<i class="fa fa-cart-plus" aria-hidden="true"></i> Add To Cart
							</button>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="card">
						<img src="${images}/HP Envy 13au5.jpg" alt="card-1"
							class="card-img-top">
						<div class="card-body">
							<h5>Hp Envy</h5>
							<h6>
								<i class="fa fa-inr"></i> 81794.00
							</h6>
							<button class="btn btn-danger">
								<i class="fa fa-cart-plus" aria-hidden="true"></i> Add To Cart
							</button>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="card">
						<img src="${images}/HP Envy 13au1.jpg" alt="card-1"
							class="card-img-top">
						<div class="card-body">
							<h5>Hp Envy</h5>
							<h6>
								<i class="fa fa-inr"></i> 81794.00
							</h6>
							<button class="btn btn-danger">
								<i class="fa fa-cart-plus" aria-hidden="true"></i> Add To Cart
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Most Wanted -->
	<div class="container-fluid pt-5 pb-5">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="row">
						<h4>RECENT</h4>
					</div>
					<div class="row">
						<div class="underline-green"></div>
					</div>
					<div class="media mt-5">
						<img src="${images}/HP Pavilion 2.jpg" class="img-fluid mr-3"
							alt="media1">
						<div class="media-body mt-2">
							<h5>Hp Pavilion</h5>
							<h6>
								<i class="fa fa-inr"></i> 78193.00
							</h6>
							<button class="btn btn-success">
								<i class="fa fa-cart-plus" aria-hidden="true"></i> Add To Cart
							</button>
						</div>
					</div>

					<div class="media mt-5">
						<img src="${images}/HP Envy 13au2.jpg" class="img-fluid mr-3"
							alt="media1">
						<div class="media-body mt-2">
							<h5>Hp Envy</h5>
							<h6>
								<i class="fa fa-inr"></i> 81794.00
							</h6>
							<button class="btn btn-success">
								<i class="fa fa-cart-plus" aria-hidden="true"></i> Add To Cart
							</button>
						</div>
					</div>

					<div class="media mt-5">
						<img src="${images}/HP Envy 13au1.jpg" class="img-fluid mr-3"
							alt="media1">
						<div class="media-body mt-2">
							<h5>Hp Envy</h5>
							<h6>
								<i class="fa fa-inr"></i> 81794.00
							</h6>
							<button class="btn btn-success">
								<i class="fa fa-cart-plus" aria-hidden="true"></i> Add To Cart
							</button>
						</div>
					</div>
				</div>




				<div class="col-md-4">
					<div class="row">
						<h4>FEATURED</h4>
					</div>
					<div class="row">
						<div class="underline-blue"></div>
					</div>
					<div class="media mt-5">
						<img src="${images}/HP Pavilion 1.jpg" class="img-fluid mr-3"
							alt="media1">
						<div class="media-body mt-2">
							<h5>Hp Pavilion</h5>
							<h6>
								<i class="fa fa-inr"></i> 78193.00
							</h6>
							<button class="btn btn-primary">
								<i class="fa fa-cart-plus" aria-hidden="true"></i> Add To Cart
							</button>
						</div>
					</div>

					<div class="media mt-5">
						<img src="${images}/HP Envy 13au1.jpg" class="img-fluid mr-3"
							alt="media1">
						<div class="media-body mt-2">
							<h5>Hp Envy</h5>
							<h6>
								<i class="fa fa-inr"></i> 81794.00
							</h6>
							<button class="btn btn-primary">
								<i class="fa fa-cart-plus" aria-hidden="true"></i> Add To Cart
							</button>
						</div>
					</div>

					<div class="media mt-5">
						<img src="${images}/HP Envy 13au1.jpg" class="img-fluid mr-3"
							alt="media1">
						<div class="media-body mt-2">
							<h5>Hp Envy</h5>
							<h6>
								<i class="fa fa-inr"></i> 81794.00
							</h6>
							<button class="btn btn-primary">
								<i class="fa fa-cart-plus" aria-hidden="true"></i> Add To Cart
							</button>
						</div>
					</div>
				</div>



				<div class="col-md-4">
					<div class="row">
						<h4>ON SALE</h4>
					</div>
					<div class="row">
						<div class="underline-black"></div>
					</div>
					<div class="media mt-5">
						<img src="${images}/sandisk2.jpeg" class="img-fluid mr-3"
							alt="media1">
						<div class="media-body mt-2">
							<h5>Pendrive 16gb</h5>
							<h6>
								<i class="fa fa-inr"></i> 330.00
							</h6>
							<button class="btn btn-dark">
								<i class="fa fa-cart-plus" aria-hidden="true"></i> Add To Cart
							</button>
						</div>
					</div>

					<div class="media mt-5">
						<img src="${images}/HP Envy 13au1.jpg" class="img-fluid mr-3"
							alt="media1">
						<div class="media-body mt-2">
							<h5>Hp Envy</h5>
							<h6>
								<i class="fa fa-inr"></i> 81794.00
							</h6>
							<button class="btn btn-dark">
								<i class="fa fa-cart-plus" aria-hidden="true"></i> Add To Cart
							</button>
						</div>
					</div>

					<div class="media mt-5">
						<img src="${images}/sandisk2.jpeg" class="img-fluid mr-3"
							alt="media1">
						<div class="media-body mt-2">
							<h5>Pendrive 32gb</h5>
							<h6>
								<i class="fa fa-inr"></i> 550.00
							</h6>
							<button class="btn btn-dark">
								<i class="fa fa-cart-plus" aria-hidden="true"></i> Add To Cart
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<footer>
		<div class="container-fluid pt-5 pb-5 bg-dark text-light">
			<div class="container">
				<div class="row">

					<div class="col-md-3">
						<div class="row">
							<h5>Recent Posts</h5>
						</div>
						<div class="row mb-4">
							<div class="underline bg-light" style="width: 50px;"></div>
						</div>
						<div class="row">
							<div class="media">
								<img src="${images}/HP Envy 13au9.jpg" class="img-fluid"
									alt="media-image">
								<div class="media-body ml-2">
									<h6>HP ENVY x360 AMD Ryzen 5 2500U</h6>
								</div>
							</div>
						</div>

						<div class="row mt-3">
							<div class="media">
								<img src="${images}/Hp Pavilion1.jpg" class="img-fluid"
									alt="media-image">
								<div class="media-body ml-2">
									<h6>HP Pavilion 13-AN0046TU</h6>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-3 pl-4">
						<div class="row">
							<h5>About Us</h5>
						</div>
						<div class="row mb-4">
							<div class="underline bg-light" style="width: 50px;"></div>
						</div>
						<div class="row">
							<p>Welcome to PS TECH, your number one source for all things
								Desktop PCs, Laptops, Desktop accessories, Antivirus,
								Surveillance Cameras and also providing all services regarding
								Desktop PCs, Laptops, Antivirus, Surveillance Cameras. We're
								dedicated to giving you the very best of products, with...</p>
							<button class="btn btn-danger">
								<i class="fas fa-book-reader" aria-hidden="true"></i>
							</button>
						</div>
					</div>
					<div class="col-md-3 pl-4">
						<div class="row">
							<h5>Contact Us</h5>
						</div>
						<div class="row mb-4">
							<div class="underline bg-light" style="width: 50px;"></div>
						</div>
						<div class="row">
							<p>
								RKV/35,Hamirpur<br> Rourkela,odisha
							</p>
						</div>
					</div>

					<div class="col-md-3">
						<div class="row">
							<h5>Tags</h5>
						</div>
						<div class="row mb-4">
							<div class="underline bg-light" style="width: 50px;"></div>
						</div>
						<button class="btn btn-outline-light">Pendrive 16gb</button>
						<button class="btn btn-outline-light">Hp Envy x360</button>
						<button class="btn btn-outline-light">Hp Pavilion x360</button>
						<button class="btn btn-outline-light">K7 Total Security</button>
						<button class="btn btn-outline-light">Pendrive 32gb</button>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid footer bg-info text-light pt-3 pb-2">
			<div class="row">
				<div class="col-lg-12">
					<p>Copyright &copy; Ps Tech 2019 - Designed and Developed by
						www.pstech.co.in</p>
				</div>
			</div>
		</div>
	</footer>

</body>


<script src="${js}/jquery.js"></script>
<script
	src="${js}/https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="${js}/bootstrap.min.js"></script>


</html>