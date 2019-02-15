<div class="container">

	<!-- Would be added breadcrumb component -->
	<div class="row">
		<div class="col-lg-12">
			<c:if test="${userClickAllProducts==true}">
				<script>
					window.categoryId = '';
				</script>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">All
						Products</li>
				</ol>
			</c:if>
			<c:if test="${userClickCategoryProducts == true}">
				<script>
					window.categoryId = '${category.id}';
				</script>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
					<li class="breadcrumb-item active">Category</li>
					<li class="breadcrumb-item active" aria-current="page">${category.name}</li>
				</ol>
			</c:if>
		</div>
	</div>
	<!-- Adding the products details to productListTable -->
	<div class="row">

		<div class="col-lg-12">
			<div style="overflow: auto">
				<table id="productListTable"
					class="table table-striped table-borderd">

					<thead>

						<tr>
							<th></th>
							<th>Name</th>
							<th>Brand</th>
							<th>Price</th>
							<th>Qty.Available</th>
							<th></th>
						</tr>

					</thead>

					<tfoot>

						<tr>
							<th></th>
							<th>Name</th>
							<th>Brand</th>
							<th>Price</th>
							<th>Qty.Available</th>
							<th></th>
						</tr>

					</tfoot>

				</table>

			</div>
		</div>
	</div>
</div>