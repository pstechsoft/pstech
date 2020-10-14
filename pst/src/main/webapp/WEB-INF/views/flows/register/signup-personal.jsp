<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@include file="../flows-shared/flows-header.jsp"%>
<div class="container">
	<div class="row">
		<div class="col-lg-8 mx-auto p-2">
			<div class="card border-primary mb-3">
				<div class="card bg-primary text-white">
					<div class="card-header">
						<h4>Sign Up - Personal</h4>
					</div>
				</div>
				<div class="card-body">
					<!-- FORM ELEMENT -->
					<sf:form class="form-horizontal" method="POST" id="registerForm"
						modelAttribute="user">

						<div class="form-group row">
							<label class="form-control-label col-lg-4"><b>First
									Name: </b></label>
							<div class="col-lg-8">
								<sf:input type="text" path="firstName" placeholder="First Name"
									class="form-control" />
								<sf:errors path="firstName" cssClass="form-text" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="form-control-label col-lg-4"><b>Last
									Name: </b></label>
							<div class="col-lg-8">
								<sf:input type="text" path="lastName" placeholder="Last Name"
									class="form-control" />
								<sf:errors path="lastName" cssClass="form-text" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="form-control-label col-lg-4"><b>Email:
							</b></label>
							<div class="col-lg-8">
								<sf:input type="text" path="email" placeholder="abcd@xyz.com"
									class="form-control" />
								<sf:errors path="email" cssClass="form-text" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="form-control-label col-lg-4"><b>Contact
									Number: </b></label>
							<div class="col-lg-8">
								<sf:input type="text" path="contactNumber"
									placeholder="xxxxxxxxxx" maxlength="10" class="form-control" />
								<sf:errors path="contactNumber" cssClass="form-text"
									element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="form-control-label col-lg-4"><b>Password:
							</b></label>
							<div class="col-lg-8">
								<sf:input type="password" path="password" placeholder="Password"
									class="form-control" />
								<sf:errors path="password" cssClass="form-text" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="form-control-label col-lg-4"><b>Confirm Password: </b></label>
							<div class="col-lg-8">
								<sf:input type="password" path="confirmPassword"
									class="form-control" placeholder="Re-type password" />
								<sf:errors path="confirmPassword" cssClass="form-text"
									element="em" />
							</div>
						</div>

						<!-- radio button using bootstrap class of radio-inline-->
						<div class="form-group row">
							<label class="form-control-label col-lg-4"><b>Select
									Role</b></label>
							<div class="col-lg-8">
								<label class="radio-inline"> <sf:radiobutton path="role"
										value="USER" checked="checked" /> User
								<%-- </label> <label class="radio-inline"> <sf:radiobutton
										path="role" value="SUPPLIER" /> Supplier
								</label> --%>
							</div>
						</div>

						<div class="form-group row">
							<div class="col-lg-8 ml-auto">
								<button type="submit" name="_eventId_billing"
									class="btn btn-primary">
									Next - Billing <span class="fa fa-chevron-right"
										aria-hidden="true"></span>
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