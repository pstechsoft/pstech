<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@include file="../flows-shared/flows-header.jsp"%>
<div class="container">
	<div class="row">
		<div class="col-lg-6 mx-auto p-2">
			<div class="card border-primary mb-3">
				<div class="card bg-primary text-white">
					<div class="card-header">
						<h4>Personal Details</h4>
					</div>
				</div>
				<div class="card-body">
					<!-- code to display the personal details -->
					<div class="text-center">
						<h5>Name : <strong>${registerModel.user.firstName} ${registerModel.user.lastName}</strong></h5>
						<h6>Email : <strong>${registerModel.user.email}</strong></h6>
						<h6>Contact : <strong>${registerModel.user.contactNumber}</strong></h6>
						<h6>Role : <strong>${registerModel.user.role}</strong></h6>
						<p></p>
					</div>
				</div>

				<div class="card-footer">
					<!-- Anchor to move to the edit of personal detail -->
					<a href="${flowExecutionUrl}&_eventId_personal" class="btn btn-primary">Edit</a>
				</div>
			</div>
		</div>
		<!-- column to display the Address -->
		<div class="col-lg-6 mx-auto p-2">
			<div class="card border-primary mb-3">
				<div class="card bg-primary text-white">
					<div class="card-header">
						<h4>Billing Address</h4>
					</div>
				</div>
				<div class="card-body">
					<!-- code to display the communication Address -->
					<div class="text-center">
						<p>${registerModel.billing.addressLineOne}, </p>
						<p>${registerModel.billing.addressLineTwo}, 
						${registerModel.billing.city} -  ${registerModel.billing.postalCode},</p>
						<p>${registerModel.billing.state}, ${registerModel.billing.country}</p>
						
					</div>
				</div>

				<div class="card-footer">
					<!-- Anchore to move to the edit of Address -->
					<a href="${flowExecutionUrl}&_eventId_billing" class="btn btn-primary">Edit</a>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- To provide the confirmbutton afterdisplaying the details -->
<div class="row">
	<div class="col-lg-4 mx-auto pb-4">
		<div class="text-center">
			<!-- Anchor to move to the success page-->
			<a href="${flowExecutionUrl}&_eventId_submit" class="btn btn-primary">Confirm</a>
		</div>
	</div>
</div>
<%@include file="../flows-shared/flows-footer.jsp"%>