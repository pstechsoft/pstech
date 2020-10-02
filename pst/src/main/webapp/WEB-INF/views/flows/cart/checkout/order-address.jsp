<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@include file="../../flows-shared/flows-header.jsp"%>
<div class="container">

	<div class="row">

		<div class="col-lg-4">

			<h4>Select Shipping Address</h4>
			<hr />

			<div class="row">
				<!-- <div class="col-lg-10 mx-auto p-2 card border-primary mb-3"> -->
				<c:forEach items="${addresses}" var="address">
					<div class="col-lg-12">
						<h6>${address.addressLineOne}</h6>
						<h6>${address.addressLineTwo}</h6>
						<h6>${address.city}-${address.postalCode}</h6>
						<h6>${address.state}-${address.country}</h6>
						<hr />
						<div class="text-center">
							<a
								href="${flowExecutionUrl}&_eventId_addressSelection&shippingId=${address.id}"
								class="btn btn-primary">Select</a>
							<c:url var="deleteLink" value="/user/delete">
								<c:param name="addressId" value="${address.id}" />
							</c:url>
							<a href="${deleteLink}" class="btn btn-danger">Delete</a>

						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<!-- </div> -->

		<div class="col-lg-8 mx-auto p-2">
			<div class="card border-primary mb-3">
				<div class="card bg-primary text-white">
					<div class="card-header">
						<h4>Sign Up - Address</h4>
					</div>
				</div>

				<div class="card-body">

					<sf:form method="POST" modelAttribute="shipping"
						class="form-horizontal" id="billingForm">


						<div class="form-group row">
							<label class="form-control-label col-lg-4" for="addressLineOne">Address
								Line One</label>
							<div class="col-lg-8">
								<sf:input type="text" path="addressLineOne" class="form-control"
									placeholder="Enter Address Line One" />
								<sf:errors path="addressLineOne" cssClass="form-text"
									element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="form-control-label col-lg-4" for="addressLineTwo">Address
								Line Two</label>
							<div class="col-md-8">
								<sf:input type="text" path="addressLineTwo" class="form-control"
									placeholder="Enter Address Line Two" />
								<sf:errors path="addressLineTwo" cssClass="form-text"
									element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="form-control-label col-lg-4" for="city">City</label>
							<div class="col-md-8">
								<sf:input type="text" path="city" class="form-control"
									placeholder="Enter City Name" />
								<sf:errors path="city" cssClass="form-text" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="form-control-label col-lg-4" for="postalCode">Postal
								Code</label>
							<div class="col-md-8">
								<sf:input type="text" path="postalCode" class="form-control"
									placeholder="XXXXXX" />
								<sf:errors path="postalCode" cssClass="form-text" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="cform-control-label col-lg-4" for="state">State</label>
							<div class="col-md-8">
								<sf:input type="text" path="state" class="form-control"
									placeholder="Enter State Name" />
								<sf:errors path="state" cssClass="form-text" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="form-control-label col-lg-4" for="country">Country</label>
							<div class="col-md-8">
								<sf:input type="text" path="country" class="form-control"
									placeholder="Enter Country Name" />
								<sf:errors path="country" cssClass="form-text" element="em" />
							</div>
						</div>


						<div class="form-group row">
							<div class="col-lg-8 ml-auto">
								<button type="submit" name="_eventId_saveAddress"
									class="btn btn-primary">
									<i class="fa fa-plus" aria-hidden="true"></i> Add Address
								</button>
							</div>
						</div>


					</sf:form>


				</div>


			</div>



		</div>


	</div>
</div>
<%@include file="../../flows-shared/flows-footer.jsp"%>