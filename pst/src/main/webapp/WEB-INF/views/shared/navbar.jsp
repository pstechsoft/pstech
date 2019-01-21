<!-- Top Nevigation -->

<div class="container-fluid bg-info header-top d-none d-md-block">
	<div class="container-fluid">
		<div class="row text-light pt-2 pb-2">
			<div class="col-md-5">
				<a href="https://mail.google.com" class="contact text-light"><i
					class="fa fa-envelope" aria-hidden="true"></i> pstech24x7@gmail.com</a>
			</div>
			<div class="col-md-3"></div>
			<div class="col-md-2" id="myaccount">
				<a href="${contextRoot}/myaccount" class="account text-light"><i
					class="fa fa-user" aria-hidden="true"></i> Login/Register</a>
			</div>
			<div class="col-md-2" id="cart">
				<a href="${contextRoot}/cart" class="cart text-light"><i
					class="fa fa-cart-plus" aria-hidden="true"></i> My Cart - <i
					class="fa fa-inr fa-sm" aria-hidden="true"></i> 0.00</a>
			</div>
		</div>
	</div>
</div>


<!-- Second Nevigation -->
<div class="container-fluid bg-dark d-md-block">
	<div class="container-fluid">
		<nav
			class="navbar navbar-dark sticky-top bg-dark flex-wrap2 flex-md-nowrap p-0">
			<!--        <div class="container-fluid">-->
			<img id="brand-image" alt="Website Logo" src="${images}/PS Logo2.png" />
			<a class="navbar-brand ml-2 pt-3" href="${contextRoot}/home">PS
				TECH
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
						<li class="nav-item my-1 active" id="home"><a class="nav-link"
							href="${contextRoot}/home"><i class="fa fa-home fa-fw"
								aria-hidden="true"></i> Home <span class="sr-only">(current)</span></a></li>
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
							href="${contextRoot}/show/all/products"
							class="nav-link"><i
								class="fab fa-product-hunt"></i> View Products</a></li>
						<li class="nav-item my-1" id="myaccount"><a
							href="${contextRoot}/myaccount"
							class="nav-link btn btn-outline-secondary"><i
								class="fa fa-user"></i> My account</a></li>
					</ul>
				</div>
			</ul>
			<!--        </div>-->
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

