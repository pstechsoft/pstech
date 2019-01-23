<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<div class="container">
	<div class="row">
		<c:if test="${not empty message}">
			<div class="col-lg-12">
				<div class="alert alert-success alert-dismissible">
					<button type="button" class="close" data-dismiss="alert">&times;</button>
					${message}
				</div>

			</div>

		</c:if>
		<div class="col-lg-8 mx-auto p-2">
			<div class="card border-primary mb-3">
				<div class="card bg-primary text-white">
					<div class="card-header">
						<h4>Product Management</h4>
					</div>
				</div>
				<div class="card-body">
					<!-- FORM ELEMENT -->
					<sf:form class="form-horizontal" modelAttribute="product"
						action="${contextRoot}/manage/products" method="POST"
						enctype="multipart/form-data">

						<div class="form-group row">
							<label class="form-control-label col-lg-4" for="name"><b>Enter
									Product Name: </b></label>
							<div class="col-lg-8">
								<sf:input type="text" path="name" id="name"
									placeholder="Product Name" class="form-control" />
								<sf:errors path="name" cssClass="form-text" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="form-control-label col-lg-4" for="brand"><b>Enter
									Brand Name: </b></label>
							<div class="col-lg-8">
								<sf:input type="text" path="brand" id="brand"
									placeholder="Brand Name" class="form-control" />
								<sf:errors path="brand" cssClass="form-text" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="control-label col-lg-4" for="description"><b>Product
									Description: </b></label>
							<div class="col-lg-8">
								<sf:textarea path="description" id="description" rows="4"
									placeholder="Write a description for the product!"
									class="form-control"></sf:textarea>
								<sf:errors path="description" cssClass="form-text" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="control-label col-lg-4" for="unitPrice"><b>Enter
									Unit Price: </b></label>
							<div class="col-lg-8">
								<sf:input type="number" path="unitPrice" id="unitPrice"
									placeholder="Unit Price In &#8377;" class="form-control" />
								<sf:errors path="unitPrice" cssClass="form-text" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="control-label col-lg-4" for="quantity"><b>Quantity
									Available: </b></label>
							<div class="col-lg-8">
								<sf:input type="number" path="quantity" id="quantity"
									placeholder="Quantity Available" class="form-control" />
							</div>
						</div>
						<!-- file element for image upload-->
						<div class="form-group row">
							<label class="control-label col-lg-4" for="file"><b>Select
									an Image: </b></label>
							<div class="col-lg-8">
								<sf:input type="file" path="file" id="file" class="form-control" />
								<sf:errors path="file" cssClass="form-text" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="control-label col-lg-4" for="categoryId"><b>Select
									Category: </b></label>
							<div class="col-lg-8">
								<sf:select class="form-control" path="categoryId"
									id="categoryId" items="${categories}" itemLabel="name"
									itemValue="id" />
							</div>
						</div>

						<div class="form-group row">
							<div class="col-lg-8 ml-auto">
								<input type="submit" name="submit" id="submit" value="submit"
									class="btn btn-primary" />
								<!-- HIDDEN FIELD -->
								<sf:hidden path="id" />
								<sf:hidden path="code" />
								<sf:hidden path="supplierId" />
								<sf:hidden path="active" />
								<sf:hidden path="purchases" />
								<sf:hidden path="views" />
							</div>
						</div>
					</sf:form>
				</div>
			</div>
		</div>
	</div>
</div>