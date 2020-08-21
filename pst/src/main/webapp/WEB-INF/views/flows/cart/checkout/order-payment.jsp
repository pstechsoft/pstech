<%@include file="../../flows-shared/flows-header.jsp"%>
<div class="container">

	<div class="row">
		<!--  To display all the goods -->
		<div class="col-lg-6">
			<h4>Order Details</h4>
			<hr />
			<div class="row">
				<c:forEach items="${checkoutModel.cartLines}" var="cartLine">
					<div class="col-lg-12">

						<div>
							<h6>${cartLine.product.name}</h5>
								<hr />
								<h6>
									Quantity -${cartLine.productCount}
									</h5>
									<h6>
										Buying Price - &#8377; ${cartLine.buyingPrice}/-
										</h5>
						</div>
						<hr />
						<div class="text-right">
							<h5>
								Grand Total - &#8377; ${cartLine.total}/-
								</h4>
								<br> <br>
						</div>
					</div>
				</c:forEach>
			</div>


		</div>

		<div class="col-lg-6 mx-auto p-2">

			<div class="card card-default mb-3">
				<div class="card-header">
					<h3 class="card-title">Payment Details</h3>
				</div>
				<div class="card-body">
					<form role="form">
						<div class="form-group">
							<label for="cardNumber"> CARD NUMBER</label>
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="cardNumber"
									placeholder="Valid Card Number" required autofocus /> <span
									class="input-group-append"><span
									class="input-group-text fa fa-lock"></span></span>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-7 col-lg-7">
								<div class="form-group">
									<label for="expityMonth">EXPIRY DATE</label> <br />
									<div class="row">
										<div class="col-lg-5 ">
											<input type="text" class="form-control" id="expityMonth"
												placeholder="MM" required />
										</div>
										<div class="col-lg-5 pl-ziro">
											<input type="text" class="form-control" id="expityYear"
												placeholder="YY" required />
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-5 col-lg-5 pull-right">
								<div class="form-group">
									<label for="cvCode"> CV CODE</label> <input type="password"
										class="form-control" id="cvCode" placeholder="CV" required />
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>

			<ul class="nav nav-pills flex-column">
				<li class="nav-item"><a class="nav-link active" href="#"><span
						class="badge badge-light pull-right"> &#8377;
							${checkoutModel.checkoutTotal}/-</span> Final Payment</a></li>
			</ul>
			<%-- <a href="${flowExecutionUrl}&_eventId_pay" --%>

			<a
				href="${contextRoot}/payuform?amount=${checkoutModel.checkoutTotal}&firstname=${checkoutModel.user.firstName}&email=${checkoutModel.user.email}&phone=${checkoutModel.user.contactNumber}&productinfo=<c:forEach items="${checkoutModel.cartLines}" var="cartLine">${cartLine.product.name},</c:forEach>&surl=http://www.pstech.co.in&furl=http://www.pstech.co.in/contactus&udf1=<c:forEach items="${checkoutModel.cartLines}" var="cartLine">${cartLine.product.id},</c:forEach>"
				class="btn btn-success btn-lg btn-block" role="button">Pay</a>
		</div>

	</div>
</div>
<%@include file="../../flows-shared/flows-footer.jsp"%>