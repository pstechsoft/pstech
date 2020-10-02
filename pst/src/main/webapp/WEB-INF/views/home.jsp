<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<!-- First Top carousel -->
<div class="carousel slide bg-dark" id="carouselFirst"
	data-ride="carousel">
	<ol class="carousel-indicators">
		<li data-target="#carouselFirst" data-slide-to="0" class="active"></li>
		<li data-target="#carouselFirst" data-slide-to="1"></li>
		<li data-target="#carouselFirst" data-slide-to="2"></li>
		<li data-target="#carouselFirst" data-slide-to="3"></li>
	</ol>
	<div class="carousel-inner">
		<div class="carousel-item active">
			<img class="d-block" width="1100" height="500"
				src="${images}/envyx360_1.png" alt="img1">
			<div class="carousel-caption d-none d-md-block">
				<h1>HP ENVY x360</h1>
				<h4>
					<p>Power your inspiration anytime, anywhere with the ENVY x360.</p>
				</h4>
				<security:authorize access="hasAuthority('USER')">
					<c:forEach items="${products}" var="product" begin="0" end="0">
						<a href="${contextRoot}/show/${product.id}/product"><button
							class="btn btn-default btn-lg">Shop Now
							</button>
						</a>
					</c:forEach>
				</security:authorize>
			</div>
		</div>
		<div class="carousel-item">
			<img class="d-block" width="1100" height="500"
				src="${images}/envyx360_2.png" alt="Second slide">
			<div class="carousel-caption d-none d-md-block">
				<h1>HP ENVY x360</h1>
				<h4>
					<p>Power your inspiration anytime, anywhere with the ENVY x360.</p>
				</h4>
				<security:authorize access="hasAuthority('USER')">
					<c:forEach items="${products}" var="product" begin="0" end="0">
						<a href="${contextRoot}/show/${product.id}/product"><button
							class="btn btn-default btn-lg">Shop Now
							</button>
						</a>
					</c:forEach>
				</security:authorize>
			</div>
		</div>
		<div class="carousel-item">
			<img class="d-block" width="1100" height="500"
				src="${images}/envyx360_3.png" alt="Second slide">
			<div class="carousel-caption d-none d-md-block">
				<h1>HP ENVY x360</h1>
				<h4>
					<p>Power your inspiration anytime, anywhere with the ENVY x360.</p>
				</h4>
				<security:authorize access="hasAuthority('USER')">
					<c:forEach items="${products}" var="product" begin="0" end="0">
						<a href="${contextRoot}/show/${product.id}/product"><button
							class="btn btn-default btn-lg">Shop Now
							</button>
						</a>
					</c:forEach>
				</security:authorize>
			</div>
		</div>
		<div class="carousel-item">
			<img class="d-block" width="1100" height="500"
				src="${images}/envyx360_4.png" alt="Second slide">
			<div class="carousel-caption d-none d-md-block">
				<h1>HP ENVY x360</h1>
				<h4>
					<p>Power your inspiration anytime, anywhere with the ENVY x360.</p>
				</h4>
				<button class="btn btn-default btn-lg">Shop Now</button>
			</div>
		</div>
	</div>
	<a class="carousel-control-prev" href="#carouselFirst" role="button"
		data-slide="prev"> <span class="carousel-control-prev-icon"
		aria-hidden="true"></span> <span class="sr-only">Previous</span>
	</a> <a class="carousel-control-next" href="#carouselFirst" role="button"
		data-slide="next"> <span class="carousel-control-next-icon"
		aria-hidden="true"></span> <span class="sr-only">Next</span>
	</a>
</div>

<!-- Location & Contact -->
<div class="container-fluid offer pt-1 pb-1 bg-orange d-none d-md-block">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4 m-right">
				<h4>FREE SHIPPING</h4>
				<p>
					On all orders over <i class="fa fa-inr fa-sm"></i> 5000
				</p>
			</div>

			<div class="col-md-4 m-right">
				<h4>CALL US ANYTIME</h4>
				<p>
					<i class="fa fa-phone"></i> 9439231191
				</p>
			</div>

			<div class="col-md-4">
				<h4>OUR LOCATION</h4>
				<p>Rourkela,Odisha</p>
			</div>
		</div>
	</div>
</div>


<!-- Second Carousel -->
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
								<c:forEach items="${products}" var="product" begin="1" end="1">
									<div class="img-box">
										<a href="${contextRoot}/show/${product.id}/product"> <img
											src="${images}/HP Envy 13au2.jpg"
											class="img-responsive img-fluid" alt=""></a>
									</div>
									<div class="thumb-content">
										<%-- <c:forEach items="${products}" var="product" begin="1" end="1"> --%>
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
										<%-- </c:forEach> --%>
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="thumb-wrapper">
								<c:forEach items="${products}" var="product" begin="4" end="4">
									<div class="img-box">
										<a href="${contextRoot}/show/${product.id}/product"> <img
											src="${images}/sandisk2.jpeg"
											class="img-responsive img-fluid" alt=""></a>
									</div>
									<div class="thumb-content">
										<h4>${product.name}</h4>
										<p class="item-price">
											<strike><i class="fa fa-inr"></i> 650.00</strike> <span><i
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
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="thumb-wrapper">
								<c:forEach items="${products}" var="product" begin="0" end="0">
									<div class="img-box">
										<a href="${contextRoot}/show/${product.id}/product"> <img
											src="${images}/HP Envy 13au1.jpg"
											class="img-responsive img-fluid" alt=""></a>
									</div>
									<div class="thumb-content">
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
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="thumb-wrapper">
								<c:forEach items="${products}" var="product" begin="3" end="3">
									<div class="img-box">
										<a href="${contextRoot}/show/${product.id}/product"> <img
											src="${images}/K7 Total 1User 1Year.jpg"
											class="img-responsive img-fluid" alt=""></a>
									</div>
									<div class="thumb-content">
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
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
				<div class="item carousel-item">
					<div class="row">
						<div class="col-sm-3">
							<div class="thumb-wrapper">
								<c:forEach items="${products}" var="product" begin="0" end="0">
									<div class="img-box">
										<a href="${contextRoot}/show/${product.id}/product"> <img
											src="${images}/HP Envy 13au1.jpg"
											class="img-responsive img-fluid" alt=""></a>
									</div>
									<div class="thumb-content">
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
									</div>
								</c:forEach>
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
<!-- Location & Contact -->
<div class="container-fluid offer pt-1 pb-1 bg-orange d-none d-md-block">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4 m-right">
				<h4>ONE CALL SERVICING</h4>
				<p>
					<i class="fa fa-phone"></i> 9439231191
				</p>
			</div>

			<div class="col-md-4 m-right">
				<h4>CONTACT US</h4>
				<p>
					<i class="fa fa-envelope"></i> pstech24x7@gmail.com
				</p>
			</div>

			<div class="col-md-4">
				<h4>OUR LOCATION</h4>
				<p>Rourkela,Odisha</p>
			</div>
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
								<c:forEach items="${products}" var="product" begin="1" end="1">
									<div class="img-box">
										<a href="${contextRoot}/show/${product.id}/product"> <img
											src="${images}/HP Envy 13au2.jpg"
											class="img-responsive img-fluid" alt=""></a>
									</div>
									<div class="thumb-content">
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
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="thumb-wrapper">
								<c:forEach items="${products}" var="product" begin="2" end="2">
									<div class="img-box">
										<a href="${contextRoot}/show/${product.id}/product"> <img
											src="${images}/HP Pavilion 1.jpg"
											class="img-responsive img-fluid" alt=""></a>
									</div>
									<div class="thumb-content">
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
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="thumb-wrapper">
								<c:forEach items="${products}" var="product" begin="0" end="0">
									<div class="img-box">
										<a href="${contextRoot}/show/${product.id}/product"> <img
											src="${images}/HP Envy 13au1.jpg"
											class="img-responsive img-fluid" alt=""></a>
									</div>
									<div class="thumb-content">
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
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="thumb-wrapper">
								<c:forEach items="${products}" var="product" begin="3" end="3">
									<div class="img-box">
										<a href="${contextRoot}/show/${product.id}/product"> <img
											src="${images}/K7 Total 1User 1Year.jpg"
											class="img-responsive img-fluid" alt=""></a>
									</div>
									<div class="thumb-content">
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
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
				<div class="item carousel-item">
					<div class="row">
						<div class="col-sm-3">
							<div class="thumb-wrapper">
								<c:forEach items="${products}" var="product" begin="2" end="2">
									<div class="img-box">
										<a href="${contextRoot}/show/${product.id}/product"> <img
											src="${images}/HP Pavilion 2.jpg"
											class="img-responsive img-fluid" alt=""></a>
									</div>
									<div class="thumb-content">
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
									</div>
								</c:forEach>
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

<!-- Most Wanted -->