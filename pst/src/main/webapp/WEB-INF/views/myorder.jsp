<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:if test="${not empty message}">

	<div class="alert alert-info">
		<h3 class="text-center">${message}</h3>
	</div>

</c:if>
<c:choose>
	<c:when test="${not empty cartLines}">
<div class="container-fluid">
	<table id="cart" class="table table-hover table-condensed">
		<thead>
			<tr>
				<th style="width: 10%">OrderNo</th>
				<th style="width: 50%">Product</th>
				<th style="width: 10%">Price</th>
				<th style="width: 8%">Quantity</th>
				<th style="width: 10%" class="text-center">Tax</th>
				<th style="width: 12%" class="text-center">Subtotal</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${orderItems}" var="orderItem">
				<tr>
					<td>
						<div class="col-sm-2 hidden-xs">
							<h5 class="nomargin">${orderItem.orderDetail.id}</h5>
						</div>
					</td>
					<td>
						<div class="row">
							<div class="col-sm-2 hidden-xs">
								<img src="${images}/${orderItem.product.code}.jpg"
									alt="${orderItem.product.name}" class="img-responsive cartImg" />
							</div>
							<div class="col-sm-10">
								<h5 class="nomargin">${orderItem.product.name}</h5>
								<p>Brand : ${orderItem.product.brand}</p>
								<p>Order Date : ${orderItem.orderDetail.orderDate}</p>
								<%-- <p>Description : ${cartLine.product.description}</p> --%>
							</div>
						</div>
					</td>
					<td data-th="Price">&#8377; ${orderItem.buyingPrice} /-</td>
					<td data-th="Quantity">${orderItem.productCount}</td>
					<td data-th="Tax" class="text-center">&#8377;
						${orderItem.product.tax} /-</td>
					<td data-th="Subtotal" class="text-center">&#8377;
						${orderItem.total} /-</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</c:when>

	<c:otherwise>

		<div class="jumbotron">

			<h3 class="text-center">YOU DONT HAVE ANY ORDER!</h3>

		</div>

	</c:otherwise>
</c:choose>
<%-- <c:set var="availableCount" value="${userModel.cart.cartLines}" />
<!-- <div class="container"> -->
<c:if test="${not empty message}">

	<div class="alert alert-info">
		<h3 class="text-center">${message}</h3>
	</div>

</c:if>
<c:choose>
	<c:when test="${not empty cartLines}">
		<table id="cart" class="table table-hover table-condensed">
			<thead>
				<tr>
					<th style="width: 50%">Product</th>
					<th style="width: 10%">Price</th>
					<th style="width: 8%">Quantity</th>
					<th style="width: 10%" class="text-center">Tax</th>
					<th style="width: 12%" class="text-center">Subtotal</th>
					<th style="width: 10%"></th>
				</tr>
			</thead>
			<tbody>

				<c:forEach items="${cartLines}" var="cartLine">

					<c:if test="${cartLine.available == false}">
						<c:set var="availableCount" value="${availableCount - 1}" />
					</c:if>
					<tr>
						<td data-th="Product">
							<div class="row">
								<div class="col-sm-2 hidden-xs">
									 <img src="${images}/${cartLine.product.code}.jpg"
										alt="${cartLine.product.name}" class="img-responsive cartImg" />
								</div>
								<!-- <div class="col-sm-10"> -->
								<div class="col-sm-10">
									<h5 class="nomargin">${cartLine.product.name}
										<c:if test="${cartLine.available == false}">
											<strong class="unavailable"> (Not Available) </strong>
										</c:if>
									</h5>
									<p>Brand : ${cartLine.product.brand}</p>
									<p>Description : ${cartLine.product.description}</p>
								</div>
							</div> <!-- </div> -->
						</td>
						<td data-th="Price">&#8377; ${cartLine.buyingPrice} /-</td>
						<td data-th="Quantity"><input type="number"
							id="count_${cartLine.id}" min="1" max="3"
							class="form-control text-center" value="${cartLine.productCount}"></td>
						<td data-th="Tax" class="text-center">&#8377; ${product.tax}
							/-</td>
						<td data-th="Subtotal" class="text-center">&#8377;
							${cartLine.total} /-</td>
						<td class="actions" data-th=""><c:if
								test="${cartLine.available == true}">
								<button type="button" name="refreshCart" value="${cartLine.id}"
									class="btn btn-info btn-sm">
									<i class="fa fa-refresh"></i>
								</button>
							</c:if> <a href="${contextRoot}/cart/${cartLine.id}/delete"
							class="btn btn-danger btn-sm"> <i class="fa fa-trash"></i>
						</a></td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<!-- <tr class="visible-xs">
							<td class="text-center"><strong>Total 1.99</strong></td>
					
						</tr> -->
				<tr>
					<td><a href="${contextRoot}/show/all/products"
						class="btn btn-warning"><i class="fa fa-angle-left"></i>
							Continue Shopping</a></td>
					<td colspan="2" class="hidden-xs"></td>
					<td></td>
					<td class="hidden-xs text-center"><strong>Total
							&#8377; ${userModel.cart.grandTotal}/-</strong></td>
					<td></td>
					<c:choose>
						<c:when test="${availableCount != 0}">
							<td><a href="${contextRoot}/cart/validate"
								class="btn btn-success btn-block">Checkout <i
									class="fa fa-angle-right"></i></a></td>
						</c:when>
						<c:otherwise>
							<td><a href="javascript:void(0)"
								class="btn btn-success btn-block disabled"><strike>Checkout
										<span class="fa fa-angle-right"></span>
								</strike></a></td>
						</c:otherwise>
					</c:choose>
				</tr>
			</tfoot>
		</table>
	</c:when>

	<c:otherwise>

		<div class="jumbotron">

			<h3 class="text-center">Your Cart is Empty!</h3>

		</div>

	</c:otherwise>
</c:choose> --%>
<!-- </div> -->
