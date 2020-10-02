<%@include file="../../flows-shared/flows-header.jsp"%>
<div class="container">

	<div class="row">
		<!--  To display all the goods -->
		<div class="col-lg-5">
			<h4>Order Details</h4>
			<hr />
			<div class="row">
				<c:forEach items="${checkoutModel.cartLines}" var="cartLine">
					<div class="col-lg-12">

						<div>
							<h6>${cartLine.product.name}</h6>
							<hr />
							<h6>Quantity -${cartLine.productCount}</h6>
							<h6>Buying Price - &#8377; ${cartLine.buyingPrice}/-</h6>
						</div>
						<hr />
						<div class="text-right">
							<h5>Grand Total - &#8377; ${cartLine.total}/-</h5>
							<br> <br>
						</div>
					</div>
				</c:forEach>
			</div>


		</div>
		<div class="col-lg-2"></div>

		<div class="col-lg-5 mx-auto p-2">

			<div class="card card-default mb-3">
				<div class="card-header">
					<h3 class="card-title text-center">Order Summary</h3>
				</div>
				<div class="card-body">
					<div class="row">
						<c:forEach items="${checkoutModel.cartLines}" var="cartLine">
							<div class="col-lg-12">

								<div>
									<h6>${cartLine.product.name}</h6>
									<h6 class="text-right">&#8377; ${cartLine.total}/-</h6>
									<hr />


								</div>

							</div>
						</c:forEach>
						<table class="table table-condensed">
							<tbody>
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
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- <form>
				<input type="radio" id="cod" name="payment" value="cod"> <label
					for="cod">COD</label><br>
				<input type="radio" id="payonline" name="payment" value="payonline">
				<label for="payonline">Online Payment</label><br>
			</form> -->
			<%-- <ul class="nav nav-pills flex-column">
				<li class="nav-item"><a class="nav-link active" href="#"><span
						class="badge badge-light pull-right"> &#8377;
							${checkoutModel.grandTotal}/-</span> Final Payment</a></li>
			</ul> --%>


			<a href="${flowExecutionUrl}&_eventId_pay"
				class="btn btn-success btn-lg btn-block" role="button">Cash On Delevery</a>

			<%-- <a
				href="${contextRoot}/payuform?amount=${checkoutModel.grandTotal}&firstname=${checkoutModel.user.firstName}&email=${checkoutModel.user.email}&phone=${checkoutModel.user.contactNumber}&productinfo=<c:forEach items="${checkoutModel.cartLines}" var="cartLine">${cartLine.product.name},</c:forEach>&surl=http://www.pstech.co.in&furl=http://www.pstech.co.in/contactus&udf1=<c:forEach items="${checkoutModel.cartLines}" var="cartLine">${cartLine.product.id},</c:forEach>"
				class="btn btn-success btn-lg btn-block" role="button">Pay</a> --%>

			<%-- <a
				href="${contextRoot}/email/show?&firstname=${checkoutModel.user.firstName}&email=${checkoutModel.user.email}&subject=Your order Info&message=Thanks for purchasing your order <c:forEach items="${checkoutModel.cartLines}" var="cartLine">${cartLine.product.name},</c:forEach> with order id is ${CheckoutModel.orderId}"
				class="btn btn-success btn-lg btn-block" role="button">Cash On
				Delevery</a> --%>
		</div>

	</div>
</div>
<%@include file="../../flows-shared/flows-footer.jsp"%>