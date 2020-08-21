<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<div class="container">
	<!-- Breadcrumb -->
	<div class="row">
		<div class="col-lg-12">
			<ol class="breadcrumb">

				<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
				<li class="breadcrumb-item"><a
					href="${contextRoot}/show/all/products">Products</a></li>
				<li class="breadcrumb-item active">${product.name}</li>

			</ol>
		</div>
	</div>

	<div class="row">
		<!-- Display the product image -->
		<div class="col-lg-4 col-sm-4">
			<div class="thumbnail">
				<img class="img-thumbnail" alt="Cinque Terre" width="400"
					height="400" src="
					${images}/${product.code}.jpg"
					class="img img-responsive" />
			</div>
		</div>
		<!-- Display the product description -->
		<div class="col-lg-8 col-sm-8">

			<h3>${product.name}</h3>
			<hr />
			<p>${product.description}</p>
			<hr />
			<h4>
				Price: <strong> &#8377; ${product.unitPrice} /-</strong>
			</h4>
			<hr />

			<c:choose>
				<c:when test="${product.quantity < 1}">
					<h6>
						Qty. Available: <span style="color: red">Out of Stock!</span>
					</h6>
				</c:when>

				<c:otherwise>
					<h6>Qty. Available: ${product.quantity}</h6>
				</c:otherwise>
			</c:choose>
			<security:authorize access="hasAuthority('USER')">
				<c:choose>
					<c:when test="${product.quantity < 1}">
						<a href="javascript:void(0)" class="btn btn-success disabled">
							<strike> <span class="fa fa-cart-plus"></span>Add to
								Cart
						</strike>
						</a>
					</c:when>

					<c:otherwise>
						<a href="${contextRoot}/cart/add/${product.id}/product"
							class="btn btn-success"> <span class="fa fa-cart-plus"></span>
							Add to Cart
						</a>
					</c:otherwise>
				</c:choose>
			</security:authorize>

			<security:authorize access="hasAuthority('ADMIN')">
				<a href="${contextRoot}/manage/${product.id}/product"
					class="btn btn-warning"> <span class="fas fa-pencil-alt"></span>
					Edit
				</a>
			</security:authorize>

			<a href="${contextRoot}/show/all/products" class="btn btn-primary">Back</a>
		</div>
	</div>
</div>
<!-- Third Carousel -->
<div class="row">
	<div class="col-md-12">

		<h2>
			ALL <b>LAPTOP</b>
		</h2>
		<div id="carouselThird" class="carousel slide" data-ride="carousel"
			data-interval="0">
			<!-- Carousel indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carouselThird" data-slide-to="0" class="active"></li>
				<li data-target="#carouselThird" data-slide-to="1"></li>
				<li data-target="#carouselThird" data-slide-to="2"></li>
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
									<c:forEach items="${products}" var="product" begin="1" end="1">
										<h4>${product.name}</h4>
										<p class="item-price">
											<strike><i class="fa fa-inr"></i> 67972.00</strike> <span>
												<i class="fa fa-inr fa-sm"></i> ${product.unitPrice}
											</span>
										</p>
										<div class="star-rating">
											<ul class="list-inline">
												<li class="list-inline-item"><i class="fa fa-star"></i></li>
												<li class="list-inline-item"><i class="fa fa-star"></i></li>
												<li class="list-inline-item"><i class="fa fa-star"></i></li>
												<li class="list-inline-item"><i class="fa fa-star"></i></li>
												<li class="list-inline-item"><i class="fa fa-star"></i></li>
											</ul>
										</div>
										<c:choose>
											<c:when test="${product.quantity < 1}">
												<h6>
													Qty. Available: <span style="color: red">Out of
														Stock!</span>
												</h6>
											</c:when>
											<c:otherwise>
												<h6>Qty. Available: ${product.quantity}</h6>
											</c:otherwise>
										</c:choose>
										<security:authorize access="hasAuthority('USER')">
											<c:choose>
												<c:when test="${product.quantity < 1}">
													<a href="javascript:void(0)"
														class="btn btn-success disabled"> <strike> <span
															class="fa fa-cart-plus"></span>Add to Cart
													</strike>
													</a>
												</c:when>
												<c:otherwise>
													<a href="${contextRoot}/cart/add/${product.id}/product"
														class="btn btn-success"> <i class="fa fa-cart-plus"></i>
														Add to Cart
													</a>
												</c:otherwise>
											</c:choose>
										</security:authorize>
									</c:forEach>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="thumb-wrapper">
								<div class="img-box">
									<img src="${images}/HP Pavilion 1.jpg"
										class="img-responsive img-fluid" alt="">
								</div>
								<div class="thumb-content">
									<c:forEach items="${products}" var="product" begin="2" end="2">
										<h4>HP Pavilion 13-AN0046TU</h4>
										<p class="item-price">
											<strike><i class="fa fa-inr"></i> 81930.00</strike> <span><i
												class="fa fa-inr fa-sm"></i> ${product.unitPrice}</span>
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
										<c:choose>
											<c:when test="${product.quantity < 1}">
												<h6>
													Qty. Available: <span style="color: red">Out of
														Stock!</span>
												</h6>
											</c:when>
											<c:otherwise>
												<h6>Qty. Available: ${product.quantity}</h6>
											</c:otherwise>
										</c:choose>
										<security:authorize access="hasAuthority('USER')">
											<c:choose>
												<c:when test="${product.quantity < 1}">
													<a href="javascript:void(0)"
														class="btn btn-success disabled"> <strike> <span
															class="fa fa-cart-plus"></span>Add to Cart
													</strike>
													</a>
												</c:when>
												<c:otherwise>
													<a href="${contextRoot}/cart/add/${product.id}/product"
														class="btn btn-success"> <i class="fa fa-cart-plus"></i>
														Add to Cart
													</a>
												</c:otherwise>
											</c:choose>
										</security:authorize>
									</c:forEach>
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
									<c:forEach items="${products}" var="product" begin="0" end="0">
										<h4>${product.name}</h4>
										<p class="item-price">
											<strike><i class="fa fa-inr"></i> 83496.00</strike> <span><i
												class="fa fa-inr fa-sm"></i> ${product.unitPrice}</span>
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
										<c:choose>
											<c:when test="${product.quantity < 1}">
												<h6>
													Qty. Available: <span style="color: red">Out of
														Stock!</span>
												</h6>
											</c:when>
											<c:otherwise>
												<h6>Qty. Available: ${product.quantity}</h6>
											</c:otherwise>
										</c:choose>
										<security:authorize access="hasAuthority('USER')">
											<c:choose>
												<c:when test="${product.quantity < 1}">
													<a href="javascript:void(0)"
														class="btn btn-success disabled"> <strike> <span
															class="fa fa-cart-plus"></span>Add to Cart
													</strike>
													</a>
												</c:when>
												<c:otherwise>
													<a href="${contextRoot}/cart/add/${product.id}/product"
														class="btn btn-success"> <i class="fa fa-cart-plus"></i>
														Add to Cart
													</a>
												</c:otherwise>
											</c:choose>
										</security:authorize>
									</c:forEach>
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
									<c:forEach items="${products}" var="product" begin="3" end="3">
										<h4>${product.name}</h4>
										<p class="item-price">
											<strike><i class="fa fa-inr"></i> 1299.00</strike> <span><i
												class="fa fa-inr fa-sm"></i> ${product.unitPrice}</span>
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
										<c:choose>
											<c:when test="${product.quantity < 1}">
												<h6>
													Qty. Available: <span style="color: red">Out of
														Stock!</span>
												</h6>
											</c:when>
											<c:otherwise>
												<h6>Qty. Available: ${product.quantity}</h6>
											</c:otherwise>
										</c:choose>
										<security:authorize access="hasAuthority('USER')">
											<c:choose>
												<c:when test="${product.quantity < 1}">
													<a href="javascript:void(0)"
														class="btn btn-success disabled"> <strike> <span
															class="fa fa-cart-plus"></span>Add to Cart
													</strike>
													</a>
												</c:when>
												<c:otherwise>
													<a href="${contextRoot}/cart/add/${product.id}/product"
														class="btn btn-success"> <i class="fa fa-cart-plus"></i>
														Add to Cart
													</a>
												</c:otherwise>
											</c:choose>
										</security:authorize>
									</c:forEach>
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
									<c:forEach items="${products}" var="product" begin="2" end="2">
										<h4>${product.name}</h4>
										<p class="item-price">
											<strike><i class="fa fa-inr"></i> 81250.00</strike> <span><i
												class="fa fa-inr fa-sm"></i> ${product.unitPrice}</span>
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
										<c:choose>
											<c:when test="${product.quantity < 1}">
												<h6>
													Qty. Available: <span style="color: red">Out of
														Stock!</span>
												</h6>
											</c:when>
											<c:otherwise>
												<h6>Qty. Available: ${product.quantity}</h6>
											</c:otherwise>
										</c:choose>
										<security:authorize access="hasAuthority('USER')">
											<c:choose>
												<c:when test="${product.quantity < 1}">
													<a href="javascript:void(0)"
														class="btn btn-success disabled"> <strike> <span
															class="fa fa-cart-plus"></span>Add to Cart
													</strike>
													</a>
												</c:when>
												<c:otherwise>
													<a href="${contextRoot}/cart/add/${product.id}/product"
														class="btn btn-success"> <i class="fa fa-cart-plus"></i>
														Add to Cart
													</a>
												</c:otherwise>
											</c:choose>
										</security:authorize>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Carousel controls -->
				<a class="carousel-control left carousel-control-prev"
					href="#carouselThird" data-slide="prev"> <i
					class="fa fa-angle-left"></i>
				</a> <a class="carousel-control right carousel-control-next"
					href="#carouselThird" data-slide="next"> <i
					class="fa fa-angle-right"></i>
				</a>
			</div>
		</div>
	</div>
</div>
