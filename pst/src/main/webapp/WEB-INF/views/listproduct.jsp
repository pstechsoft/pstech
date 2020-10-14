<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
</head>

<body>

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
				<div class="table-responsive">
					<table id="productListTable"
						class="table table-striped table-bordered">

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

					<script>
				const searchFun= () =>{
					let filter = document.getElementById('searchInput').value.toUpperCase();
					
					let productListTable = document.getElementById('productListTable');
					
					let tr = productListTable.getElementsByTagName('tr');
					
					for(var i=0; i<tr.length; i++){
						let td = tr[i].getElementsByTagName('td')[1];
						if(td){
							let textvalue = td.textContent || td.innerHTML;
							if(textvalue.toUpperCase().indexOf(filter) > -1){
								tr[i].style.display = "";
							}else{
								tr[i].style.display = "none";
							}
						}
					}
					
				} 
				</script>

				</div>
			</div>
		</div>
	</div>
</body>

</html>