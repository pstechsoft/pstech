<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<head>
<style>
#searchInput, #searchInput2 {
	width: 350px;
	background: #fff;
	height: 35px;
	border: solid 1px #fff;
	padding: 8px;
}

#searchInput2 {
	width: 250px;
}

input[type="submit"] {
	background: #f2ae0b;
	border: none;
	padding: 10px 20px;
	color: #fff;
}

/** let's modify the default border size of the unibox suggest box. Note how the size of the suggest box still stays as wide as the input. */
#unibox-suggest-box {
	border-width: 10px;
}
</style>
</head>
<body>
	<script>
		window.userRole = '${userModel.role}';
	</script>


	<!-- Top Nevigation -->
	<div class="container-fluid bg-info header-top d-none d-md-block">
		<div class="container-fluid">
			<div class="row text-light pt-2 pb-2">
				<div class="col-md-5">
					<a href="https://mail.google.com" class="contact text-light"><i
						class="fa fa-envelope" aria-hidden="true"></i>
						pstech24x7@gmail.com</a>
				</div>
				<%-- <div class="col-md-3"></div>
			<div class="col-md-2" id="myaccount">
				<a href="${contextRoot}/login"
					"${contextRoot}/myaccount" class="account text-light"><i
					class="fa fa-user" aria-hidden="true"></i> Login/Register</a>
			</div> --%>
				<%-- <div class="col-md-3"></div>
			<div class="col-md-2">
				<li class="dropdown"><a href="javascript:void(0)"
					class="btn btn-default dropdown-toggle" id="dropownMenu1"
					data-toggle="dropdown"> Full Name <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="${contextRoot}/cart"> <span
								class="fa fa-cart-plus"></span> <span class="fa fa-id-badge">
									0 </span> - &#8377; 0.0
						</a></li>
						<li class="divider" role="separator"></li>
						<li><a href="${contextRoot}/logout">Logout</a>
					</ul></li>
			</div> --%>
				<div class="col-md-7" id="cart">
					<a href="${contextRoot}/cart/show"
						class="cart text-light pull-right"><span
						class="fa fa-cart-plus"></span> <span class="badge badge-notify">
							${userModel.cart.cartLines} </span> My Cart</a>
				</div>
			</div>
		</div>
	</div>


	<!-- Second Nevigation -->
	<div class="container-fluid sticky-top bg-dark d-md-block">
		<div class="container-fluid">
			<nav class="navbar navbar-dark bg-dark flex-wrap2 flex-md-nowrap p-0">
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
					<security:authorize access="hasAuthority('USER')">
						<div class="input-group-btn">
							<form>
								<input id="searchInput" class="s mr-sm-2" type="text"
									placeholder="Search products" aria-label="Search"
									onkeyup="searchFun()">

								<button class="btn btn-default my-sm-0" type="submit">
									<i class="fa fa-search"></i>
								</button>
							</form>
						</div>
					</security:authorize>
				</div>

				<ul class="navbar-nav navbar-expand-md pl-3 pr-3">
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav mr-auto text-nowrap">
							<li class="nav-item my-1 active" id="home"><a
								class="nav-link" href="${contextRoot}/home"><i
									class="fa fa-home fa-fw" aria-hidden="true"></i> Home <span
									class="sr-only">(current)</span></a></li>
							<li class="nav-item dropdown my-1"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <i class="fa fa-folder-open"
									aria-hidden="true"></i> Categories
							</a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<c:forEach items="${categories}" var="category">
										<a class="dropdown-item" id="categoryProducts"
											href="${contextRoot}/show/category/${category.id}/products">${category.name}</a>
										<div class="dropdown-divider"></div>
									</c:forEach>
								</div></li>
							<li class="nav-item my-1" id="listProducts"><a
								href="${contextRoot}/show/all/products" class="nav-link"><i
									class="fa fa-product-hunt"></i> View Products</a></li>
							<security:authorize access="hasAuthority('ADMIN')">
								<li class="nav-item my-1" id="manageProducts"><a
									href="${contextRoot}/manage/products" class="nav-link"><i
										class="fa fa-unlock-alt"></i> Manage Products</a></li>
							</security:authorize>
							<%-- <li class="nav-item my-1" id="myaccount"><a
							href="${contextRoot}/myaccount"
							class="nav-link btn btn-outline-secondary"><i
								class="fa fa-user"></i> My account</a></li> --%>
							<security:authorize access="isAnonymous()">
								<li class="nav-item dropdown my-1" id="shoppingCart"><a
									class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
									role="button" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> <i class="fa fa-user"></i>
										Login/Register
								</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" id="register"
											href="${contextRoot}/register"><i class="fa fa-user-plus"></i>
											Sign Up</a>
										<div class="dropdown-divider"></div>
										<a class="dropdown-item" id="login"
											href="${contextRoot}/login"><i class="fa fa-sign-in"></i>
											Login</a>
									</div></li>
							</security:authorize>
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
												<a class="dropdown-item"
													href="${contextRoot}/myorders"><i
													class="fa fa-shopping-bag"></i> My Orders </a>
												<div class="dropdown-divider" role="separator"></div>				
										</security:authorize>
										<security:authorize access="hasAuthority('ADMIN')">
												<a class="dropdown-item"
													href="${contextRoot}/manage/allorders"><i
													class="fa fa-shopping-bag"></i> All Orders </a>
												<div class="dropdown-divider" role="separator"></div></security:authorize>
										<a class="dropdown-item" href="${contextRoot}/perform-logout"><i
											class="fa fa-sign-out"></i> Logout</a>
									</div></li>
							</security:authorize>
						</ul>
					</div>
				</ul>
			</nav>
		</div>
	</div>


	<!-- Third Nevigation -->
	<%-- <div class="container-fluid bg-gold header-top d-md-block">
	<div class="container-fluid">
		<div class="row pt-2 pb-2">
			<c:forEach items="${categories}" var="category">
				<a class="col-md-1 text-light"
					href="${contextRoot}/show/category/${category.id}/products"
					id="a_${category.name}">${category.name}</a>
			</c:forEach>
			<div class="col-md-8"></div>
		</div>
	</div>
</div> --%>

	<div class="navigation-bar">
		<div id="navigation-container">
			<ul>
				<c:forEach items="${categories}" var="category">
					<li class="active"><a
						href="${contextRoot}/show/category/${category.id}/products"
						id="a_${category.name}">${category.name}</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
</body>
