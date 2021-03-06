$(function() {
	// solving the active menu problem
	switch (menu) {
	case 'category.getName':
		$('#navbarDropdown').addClass('active');
		break;
	case 'All Products':
		$('#listProducts').addClass('active');
		break;
	case 'Manage Products':
		$('#manageProducts').addClass('active');
		break;
	case 'About Us':
		$('#about').addClass('active');
		break;
	case 'My account':
		$('#myaccount').addClass('active');
		break;
	case 'Shopping Cart':
		$('#shoppingCart').addClass('active');
		break;
	/*case 'My Cart':
		$('#cart').addClass('active');
		break;*/
	default:
		if (menu == "Home")
			break;
		$('#home').addClass('active');
		$('a_' + menu).addClass('active');
		break;
	}

	// for handling CSRF token
	var token = $('meta[name="_csrf"]').attr('content');
	var header = $('meta[name="_csrf_header"]').attr('content');

	if ((token != undefined && header != undefined)
			&& (token.length > 0 && header.length > 0)) {
		// set the token header for the ajax request
		$(document).ajaxSend(function(e, xhr, options) {
			xhr.setRequestHeader(header, token);
		});
	}

	
	// code for jquery data table

	var $table = $('#productListTable');

	// execute the bellow code only where we have this table
	if ($table.length) {
		// console.log('Inside the table!');

		var jsonUrl = '';
		if (window.categoryId == '') {
			jsonUrl = window.contextRoot + '/json/data/all/products';
		} else {
			jsonUrl = window.contextRoot + '/json/data/category/'
					+ window.categoryId + '/products';
		}

		$table
				.DataTable({
					lengthMenu : [ [ 3, 5, 10, -1 ],
							[ '3 Records', '5 Records', '10 Records', 'ALL' ] ],
					pageLength : 5,
					ajax : {
						url : jsonUrl,
						dataSrc : ''
					},
					columns : [
							{
								data : 'code',
								mRender : function(data, type, row) {

									return '<img src="' + window.contextRoot
											+ '/resources/images/' + data
											+ '.jpg" class="dataTableImg"/>';
								}
							},
							{
								data : 'name'
							},
							{
								data : 'brand'
							},
							{
								data : 'unitPrice',
								mRender : function(data, type, row) {
									return '&#8377;' + data
								}
							},
							{
								data : 'quantity',
								mRender : function(data, type, row) {

									if (data < 1) {
										return '<span style="color:red">Out of Stock!</span>';
									}
									return data;
								}
							},
							{
								data : 'id',
								bSortable : false,
								mRender : function(data, type, row) {
									var str = '';
									str += '<a href="'
											+ window.contextRoot
											+ '/show/'
											+ data
											+ '/product" class="btn btn-primary"><span class="fa fa-eye"></span></a> &#160';

									if (userRole == 'ADMIN') {
										str += '<a href="'
												+ window.contextRoot
												+ '/manage/'
												+ data
												+ '/product" class="btn btn-warning"><span class="fa fa-pencil"></span></a>';
									} else {

										if (row.quantity < 1) {
											str += '<a href="javascript:void(0)" class="btn btn-success disabled"><span class="fa fa-cart-plus"></span></a>';
										} else {
											str += '<a href="'
													+ window.contextRoot
													+ '/cart/add/'
													+ data
													+ '/product" class="btn btn-success"><span class="fa fa-cart-plus"></span></a>';
										}
									}
									return str;
								}

							} ]
				});
	}

	// dismissing the alert after 3 second
	var $alert = $('.alert');
	if ($alert.length) {

		setTimeout(function() {
			$alert.fadeOut('slow');
		}, 3000)

	}

	// --------------------------------

	$('.switch input[type="checkbox"]')
			.on(
					'change',
					function() {
						var checkbox = $(this);
						var checked = checkbox.prop('checked');
						var dMsg = (checked) ? 'You want to activate the product!'
								: 'You want to de activate the product!';
						var value = checkbox.prop('value');
						bootbox
								.confirm({
									size : 'medium',
									title : 'Product Activation & Deactivation',
									message : dMsg,
									callback : function(confirmed) {
										if (confirmed) {
											/*$.ajax({							            	
								            	type: 'GET',
								            	url: window.contextRoot + '/manage/product/'+checkbox.prop('value')+'/activation',
								        		timeout : 100000,
								        		success : function(data) {
								        			bootbox.alert(data);							        										        			
								        		},
								        		error : function(e) {
								        			bootbox.alert('ERROR: '+ e);
								        			//display(e);
								        		}						 */
											console.log(value);
											bootbox
													.alert({
														size : 'medium',
														title : 'Information',
														message : 'You are going to perform operation on product'
																+ value
													});
										} else {
											checkbox.prop('checked', !checked);
										}
									}
								});
					});

	// ----------------------------
	// Data Table for Admin
	// ----------------------------

	var $adminProductsTable = $('#adminProductsTable');

	// execute the bellow code only where we have this table
	if ($adminProductsTable.length) {
		// console.log('Inside the table!');

		var jsonUrl = window.contextRoot + '/json/data/admin/all/products';

		$adminProductsTable
				.DataTable({
					lengthMenu : [ [ 10, 30, 50, -1 ],
							[ '10 Records', '30 Records', '50 Records', 'ALL' ] ],
					pageLength : 30,
					ajax : {
						url : jsonUrl,
						dataSrc : ''
					},
					columns : [
							{
								data : 'id'
							},
							{
								data : 'code',
								mRender : function(data, type, row) {

									return '<img src="'
											+ window.contextRoot
											+ '/resources/images/'
											+ data
											+ '.jpg" class="adminDataTableImg"/>';
								}
							},
							{
								data : 'name'
							},
							{
								data : 'brand'
							},
							{
								data : 'quantity',
								mRender : function(data, type, row) {

									if (data < 1) {
										return '<span style="color:red">Out of Stock!</span>';
									}
									return data;
								}
							},
							{
								data : 'unitPrice',
								mRender : function(data, type, row) {
									return '&#8377;' + data;
								}
							},
							
							{
								data : 'tax',
								mRender : function(data, type, row) {
									return '&#8377;' + data;
								}
							},

							{
								data : 'active',
								bSortable : false,
								mRender : function(data, type, row) {

									var str = '';

									str += '<label class="switch">';
									if (data) {
										str += '<input type="checkbox" checked="checked" value="'
												+ row.id + '"/>';
									} else {
										str += '<input type="checkbox" value="'
												+ row.id + '"/>';
									}
									str += '<div class="slider"></div></label>';

									return str;

								}

							},
							{
								data : 'id',
								bSortable : false,
								mRender : function(data, type, row) {

									var str = '';
									str += '<a href="'
											+ window.contextRoot
											+ '/manage/'
											+ data
											+ '/product" class="btn btn-warning"><span class="fa fa-pencil"></span></a>';
									return str;

								}
							} ],
					initComplete : function() {

						var api = this.api();
						api
								.$('.switch input[type="checkbox"]')
								.on(
										'change',
										function() {
											var checkbox = $(this);
											var checked = checkbox
													.prop('checked');
											var dMsg = (checked) ? 'You want to activate the product!'
													: 'You want to deactivate the product!';
											var value = checkbox.prop('value');
											bootbox
													.confirm({
														size : 'medium',
														title : 'Product Activation & Deactivation',
														message : dMsg,
														callback : function(
																confirmed) {
															if (confirmed) {
																console
																		.log(value);
																var activationUrl = window.contextRoot
																		+ '/manage/product/'
																		+ value
																		+ '/activation';
																$
																		.post(
																				activationUrl,
																				function(
																						data) {
																					bootbox
																							.alert({
																								size : 'medium',
																								title : 'Information',
																								message : data
																							});
																				});

															} else {
																checkbox
																		.prop(
																				'checked',
																				!checked);
															}
														}
													});
										});
					}
				});
	}

	// ----------------------------
	// Validation code for category

	var $categoryForm = $('#categoryForm');

	if ($categoryForm.length) {

		$categoryForm.validate({

			rules : {

				name : {
					required : true,
					minlength : 3
				},
				description : {
					required : true,
					minlength : 3
				}
			},
			messages : {
				name : {
					required : 'Please enter the category name!',
					minlength : 'Please enter atleast three characters'
				},
				description : {
					required : 'Please enter description for this category!',
					minlength : 'Please enter atleast three characters'
				}
			},
			errorElement : 'em',
			errorPlacement : function(error, element) {
				// add a class of help-block
				error.addClass('form-text');
				// add the error element after the input element
				error.insertAfter(element);
			}
		});
	}

	// -----------------------

	// ----------------------------
	// Validation code for login

	var $loginForm = $('#loginForm');

	if ($loginForm.length) {

		$loginForm.validate({

			rules : {

				username : {
					required : true,
					email : true
				},
				password : {
					required : true,
				}
			},
			messages : {
				username : {
					required : 'Please enter the user name!',
					email : 'Please enter valid email address!'
				},
				password : {
					required : 'Please enter the password!',

				}
			},
			errorElement : 'em',
			errorPlacement : function(error, element) {
				// add a class of help-block
				error.addClass('form-text');
				// add the error element after the input element
				error.insertAfter(element);
			}
		});
	}

	// -----------------------
	/* handle refresh cart*/	
	$('button[name="refreshCart"]').click(function(){
		var cartLineId = $(this).attr('value');
		var countElement = $('#count_' + cartLineId);
		
		var originalCount = countElement.attr('value');
		var currentCount = countElement.val();
		// do the checking only the count has changed
		if(currentCount !== originalCount) {
			
			// check if the quantity is within the specified range
			if(countElement.val() < 1 || countElement.val() > 3) {
				// set the field back to the original field
				countElement.val(originalCount);
				bootbox.alert({
					size: 'medium',
			    	title: 'Error',
			    	message: 'Product Count should be minimum 1 and maximum 3!'
				});
			}
			else {
				// use the window.location.href property to send the request to the server
				var updateUrl = window.contextRoot + '/cart/' + cartLineId + '/update?count=' + currentCount;
				window.location.href = updateUrl;
			}
		}
	});	
	
	
	// ----------------------------
	// Payment Controller
	// ----------------------------
	
	/*var App = angular.module('paymentApp', []);
	App.controller('paymentCtrl',['$scope','$http','$q', function($scope, $http, $q) {

	    $scope.showSubmitButton = false;
	    $scope.productinfo = 'Online Course';
	    $scope.firstname = '';
	    $scope.email = '';
	    $scope.phone = '';
	    $scope.amount = '';
	    $scope.surl = '';
	    $scope.furl = '';
	    $scope.key = '';
	    $scope.hash = '';
	    $scope.txnid = '';

	    $scope.confirmPayment = function() {
	        var url = 'http://localhost:9090/payment/payment-details';
	        var data = {productInfo: $scope.productinfo, email: $scope.email, name: $scope.firstname, phone: $scope.phone, amount:$scope.amount};
	        $http.post(url, data)
	            .then(function (response) {
	                    console.log(response.data);
	                    $scope.txnid = response.data.txnId;
	                    $scope.surl = response.data.sUrl;
	                    $scope.furl = response.data.fUrl;
	                    $scope.key = response.data.key;
	                    $scope.hash = response.data.hash;
	                    $scope.showSubmitButton = true;
	                },
	                function (errResponse) {
	                    if (errResponse.status == -1) {
	                        errResponse.status = 408;
	                        errResponse.statusText = 'Server Timeout.';
	                    }
	                    alert(errResponse.status + ':' + errResponse.statusText);
	                });
	    }
	}]);*/
	
	
});