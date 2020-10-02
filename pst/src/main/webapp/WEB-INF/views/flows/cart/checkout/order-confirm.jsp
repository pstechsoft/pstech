<%@include file="../../flows-shared/flows-header.jsp"%>
<html lang="en">
<head>
<script>
	function pageRedirect() {
		window.location
				.replace("${contextRoot}/email/show?&firstname=${checkoutModel.user.firstName}&email=${checkoutModel.user.email}&subject=Your order Info&message=Hi ${checkoutModel.user.firstName}, Thanks for purchasing your order <c:forEach items="${checkoutModel.cartLines}" var="cartLine">${cartLine.product.name},</c:forEach> with order id is ${orderDetail.id}");
	}
	setTimeout("pageRedirect()", 5000);
</script>
</head>
<body>
	<div class="container">
		<!-- Page Content -->

		<div class="alert alert-success">
			<h3 class="text-center">Your Order is Confirmed!!</h3>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="row">
						<div class="col-lg-6">
							<address>
								<br> <img id="brand-image" alt="Website Logo"
									src="${images}/PS Logo2.png" />
							</address>
						</div>
						<div class="col-lg-6 text-right">
							<address>
								<br>Qr.No:-RKV/35,<br>Hamirpur,City:Rourkela<br>Pin:769003,Odisha<br>
								<br>
							</address>
						</div>
					</div>
					<div class="invoice-title">
						<address>
							<h2>Invoice</h2>
							<h3 class="pull-right mx-auto p-2 text-light">
								<b><span class="badge badge-notify">COD</b>
							</h3>
							<br>Order No:# ${orderDetail.id}<br> Invoice
							Date:${orderDetail.orderDate}<br>
						</address>
					</div>
					<hr>
					<div class="row">
						<div class="col-lg-6">
							<address>
								<strong>Billed To:</strong><br>
								${orderDetail.user.firstName} ${orderDetail.user.lastName}<br>
								${orderDetail.billing.addressLineOne}<br>
								${orderDetail.billing.addressLineTwo}<br>
								${orderDetail.billing.city} - ${orderDetail.billing.postalCode}<br>
								${orderDetail.billing.state} - ${orderDetail.billing.country}
							</address>
						</div>
						<div class="col-lg-6 text-right">
							<address>
								<strong>Shipped To:</strong><br>
								${orderDetail.user.firstName} ${orderDetail.user.lastName}<br>
								${orderDetail.shipping.addressLineOne}<br>
								${orderDetail.shipping.addressLineTwo}<br>
								${orderDetail.shipping.city} -
								${orderDetail.shipping.postalCode}<br>
								${orderDetail.shipping.state} - ${orderDetail.shipping.country}
							</address>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6">
							<address>
								<strong>Payment Method:</strong><br> Cash on Delivery <br>
								${orderDetail.user.email}
							</address>
						</div>
						<div class="col-lg-6 text-right">
							<address>
								<strong>Order Date:</strong><br> ${orderDetail.orderDate}<br>
								<br>
							</address>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12 mx-auto p-2">
					<div class="card card-default mb-3">
						<div class="card-header">
							<h3 class="card-title">
								<strong>Order summary</strong>
							</h3>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-condensed">
									<thead>
										<tr>
											<td><strong>Item</strong></td>
											<td class="text-center"><strong>Price</strong></td>
											<td class="text-center"><strong>Quantity</strong></td>
											<td class="text-right"><strong>Total</strong></td>
										</tr>
									</thead>
									<tbody>
										<!-- foreach ($order->lineItems as $line) or some such thing here -->
										<c:forEach items="${orderDetail.orderItems}" var="orderItem">
											<tr>
												<td>${orderItem.product.name}</td>
												<td class="text-center">&#8377;
													${orderItem.buyingPrice}/-</td>
												<td class="text-center">${orderItem.productCount}</td>
												<td class="text-right">&#8377; ${orderItem.total}/-</td>
											</tr>

										</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<td colspan="2" class="hidden-xs"></td>
											<td class="hidden-xs text-center">Sub Total
											<td class="text-right">&#8377;
												${checkoutModel.checkoutTotal}/-</td>
										</tr>
										<tr>
											<td colspan="2" class="hidden-xs"></td>
											<td class="hidden-xs text-center">Tax
											<td class="text-right">&#8377; ${checkoutModel.tax}/-</td>
										</tr>
										<tr>
											<td colspan="2" class="hidden-xs"></td>
											<td class="hidden-xs text-center"><strong>Grand
													Total</strong>
											<td class="text-right"><strong>&#8377;
													${checkoutModel.grandTotal}/-</strong></td>
										</tr>
									</tfoot>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%-- <div class="text-center">
		<a href="${contextRoot}/show/all/products"
			class="btn btn-lg btn-warning">Continue Shopping</a>
	</div> --%>
</body>
<%@include file="../../flows-shared/flows-footer.jsp"%>