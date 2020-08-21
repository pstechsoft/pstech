<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<div class="container-fluid bg-dark d-md-block">
	<div class="container-fluid">
		<nav
			class="navbar navbar-dark sticky-top bg-dark flex-wrap2 flex-md-nowrap p-0">
			<!--        <div class="container-fluid">-->
			<img id="brand-image" alt="Website Logo" src="${images}/PS Logo2.png" />
			<a class="navbar-brand ml-2 pt-3"
				href="${flowExecutionUrl}&_eventId_home">PS TECH
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
								class="fa fa-product-hunt"></i> View Products</a></li>


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
		</nav>
	</div>
</div>