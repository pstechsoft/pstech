<div class="container">

	<!-- Would be added breadcrumb component -->
	<div class="row">
		<div class="col-lg-12">
			<c:if test="${userClickCategoryProducts == true}">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
					<li class="breadcrumb-item active">Category</li>
					<li class="breadcrumb-item active" aria-current="page">${category.name}</li>
				</ol>
			</c:if>
		</div>
	</div>
</div>