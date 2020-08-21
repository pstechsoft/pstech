<%@include file="../../flows-shared/flows-header.jsp"%>
	<div class="container">
		<!-- Page Content -->

		<div class="alert alert-success">
			<h3 class="text-center">Your Order is Confirmed!!</h3>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="invoice-title">
						<h2>Invoice</h2>
						<h3 class="pull-right mx-auto p-4">Order # ${orderDetail.id}</h3>
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
								<strong>Payment Method:</strong><br> Card Payment <br>
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
											<td class="text-right"><strong>Totals</strong></td>
										</tr>
									</thead>
									<tbody>
										<!-- foreach ($order->lineItems as $line) or some such thing here -->
										<c:forEach items="${orderDetail.orderItems}" var="orderItem">
											<tr>
												<td>${orderItem.product.name}</td>
												<td class="text-center">&#8377;
													${orderItem.buyingPrice}</td>
												<td class="text-center">${orderItem.productCount}</td>
												<td class="text-right">&#8377; ${orderItem.total}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center">
			<a href="${contextRoot}/show/all/products"
				class="btn btn-lg btn-warning">Continue Shopping</a>
		</div>
	</div>
<%@include file="../../flows-shared/flows-footer.jsp"%>