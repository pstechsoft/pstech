<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@include file="../flows-shared/flows-header.jsp"%>
<div class="container">
	<div class="row">
		<div class="col-lg-8 mx-auto p-2">
			<div class="card border-primary mb-3">
				<div class="card bg-primary text-white">
					<div class="card-header">
						<h4>Sign Up - Address</h4>
					</div>
				</div>
				<div class="card-body">
					<!-- FORM ELEMENT -->
					<sf:form class="form-horizontal" method="POST" id="billingForm"
						modelAttribute="billing">

						<div class="form-group row">
							<label class="form-control-label col-lg-4" for="addressLineOne"><b>Address
									Line One: </b></label>
							<div class="col-lg-8">
								<sf:input type="text" path="addressLineOne"
									placeholder="Enter Address Line One" class="form-control" />
								<sf:errors path="addressLineOne" cssClass="form-text"
									element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="form-control-label col-lg-4" for="addressLineTwo"><b>Address
									Line Two: </b></label>
							<div class="col-lg-8">
								<sf:input type="text" path="addressLineTwo"
									placeholder="Enter Address Line Two" class="form-control" />
								<sf:errors path="addressLineTwo" cssClass="form-text"
									element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="form-control-label col-lg-4" for="city"><b>City:
							</b></label>
							<div class="col-lg-8">
								<sf:input type="text" path="city" placeholder="Enter City Name"
									class="form-control" />
								<sf:errors path="city" cssClass="form-text" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="form-control-label col-lg-4" for="postalCode"><b>Postal
									Code: </b></label>
							<div class="col-lg-8">
								<sf:input type="text" path="postalCode" placeholder="xxxxxx"
									maxlength="6" class="form-control" />
								<sf:errors path="postalCode" cssClass="form-text" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="form-control-label col-lg-4" for="state"><b>State:
							</b></label>
							<div class="col-lg-8">
								<sf:input type="text" path="state"
									placeholder="Enter State Name" class="form-control" />
								<sf:errors path="state" cssClass="form-text" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="form-control-label col-lg-4" for="country"><b>Country:
							</b></label>
							<div class="col-lg-8">
								<sf:input type="text" path="country"
									placeholder="Enter Country Name" class="form-control" />
								<sf:errors path="country" cssClass="form-text" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<div class="col-lg-8 ml-auto">

								<!-- Submit button for moving to the personal-->
								<button type="submit" name="_eventId_personal"
									class="btn btn-primary">
									<span class="fa fa-chevron-left" aria-hidden="true"></span>
									Previous
								</button>

								<!-- Submit button for moving to the conform-->
								<button type="submit" name="_eventId_confirm"
									class="btn btn-primary">
									Next <span class="fa fa-chevron-right" aria-hidden="true"></span>
								</button>
							</div>
						</div>
					</sf:form>
				</div>
			</div>
		</div>
	</div>

</div>

<%@include file="../flows-shared/flows-footer.jsp"%>