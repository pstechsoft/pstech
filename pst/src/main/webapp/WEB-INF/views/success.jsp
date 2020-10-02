<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0 ">
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>PS TECH - ${title}</title>
<link rel="icon" type="image/png" href="${images}/PS Logo2.png" />


<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="${css}/bootstrap.min.css">
<link rel="stylesheet" href="${css}/bootstrap.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel='stylesheet'
	href='https://use.fontawesome.com/releases/v5.6.3/css/all.css'
	integrity='sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/'
	crossorigin='anonymous'>
<link rel="stylesheet" href="${css}/myapp.css">
</head>
<%@include file="./shared/navbar.jsp"%>
<!-- <div class="form-group row">
	<div class="col-lg-8 mx-auto pt-5">
		<div class="alert alert-info text-center">
			<h5>
				<b>Thank you, your order has been placed successfully.</b>
			</h5>
		</div>
	</div>
</div> -->
<div class="container">
	<!-- Page Content -->
	<div class="alert alert-success">
		<h3 class="text-center">Your Order is Confirmed!!</h3>
	</div>

	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<div class="row">
					<div class="col-lg-6">
						<address>
							<br> <img id="brand-image" alt="Website Logo"
								src="${images}/PS Logo2.png" />
						</address>
					</div>
					<div class="col-lg-6 text-right">
						<address>
							<br>Qr.No:-RKV/35,<br>Hamirpur,City:Rourkela<br>Pin:769003,Odisha<br>
							<br>
						</address>
					</div>
				</div>
				<div class="invoice-title">
					<address>
						<h2>Invoice</h2>
						<h3 class="pull-right mx-auto p-2 text-light">
							<b><span class="badge badge-notify">COD</b>
						</h3>
						<br>Order No:# ${orderDetail.id}<br> Invoice
						Date:${orderDetail.orderDate}<br>
					</address>
				</div>
				<hr>
				<div class="row">
					<div class="col-lg-6">
						<address>
							<strong>Billed To:</strong><br>
							${orderDetail.user.firstName} ${orderDetail.user.lastName}<br>
							${orderDetail.billing.addressLineOne}<br>
							${orderDetail.billing.addressLineTwo}<br>
							${orderDetail.billing.city} - ${orderDetail.billing.postalCode}<br>
							${orderDetail.billing.state} - ${orderDetail.billing.country}
						</address>
					</div>
					<div class="col-lg-6 text-right">
						<address>
							<strong>Shipped To:</strong><br>
							${orderDetail.user.firstName} ${orderDetail.user.lastName}<br>
							${orderDetail.shipping.addressLineOne}<br>
							${orderDetail.shipping.addressLineTwo}<br>
							${orderDetail.shipping.city} - ${orderDetail.shipping.postalCode}<br>
							${orderDetail.shipping.state} - ${orderDetail.shipping.country}
						</address>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<address>
							<strong>Payment Method:</strong><br> Cash on Delivery <br>
							${orderDetail.user.email}
						</address>
					</div>
					<div class="col-lg-6 text-right">
						<address>
							<strong>Order Date:</strong><br> ${orderDetail.orderDate}<br>
							<br>
						</address>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12 mx-auto p-2">
				<div class="card card-default mb-3">
					<div class="card-header">
						<h3 class="card-title">
							<strong>Order summary</strong>
						</h3>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-condensed">
								<thead>
									<tr>
										<td><strong>Item</strong></td>
										<td class="text-center"><strong>Price</strong></td>
										<td class="text-center"><strong>Quantity</strong></td>
										<td class="text-right"><strong>Total</strong></td>
									</tr>
								</thead>
								<tbody>
									<!-- foreach ($order->lineItems as $line) or some such thing here -->
									<c:forEach items="${orderDetail.orderItems}" var="orderItem">
										<tr>
											<td>${orderItem.product.name}</td>
											<td class="text-center">&#8377;
												${orderItem.buyingPrice}/-</td>
											<td class="text-center">${orderItem.productCount}</td>
											<td class="text-right">&#8377; ${orderItem.total}/-</td>
										</tr>

									</c:forEach>
								</tbody>
								<tfoot>
									<tr>
										<td colspan="2" class="hidden-xs"></td>
										<td class="hidden-xs text-center">Sub Total
										<td class="text-right">&#8377;
											${checkoutModel.checkoutTotal}/-</td>
									</tr>
									<tr>
										<td colspan="2" class="hidden-xs"></td>
										<td class="hidden-xs text-center">Tax
										<td class="text-right">&#8377; ${product.tax}/-</td>
									</tr>
									<tr>
										<td colspan="2" class="hidden-xs"></td>
										<td class="hidden-xs text-center"><strong>Grand
												Total</strong>
										<td class="text-right"><strong>&#8377;
												${checkoutModel.grandTotal}/-</strong></td>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="text-center">
	<a href="${contextRoot}/show/all/products"
		class="btn btn-lg btn-warning">Continue Shopping</a>
</div>

<%@include file="./shared/footer.jsp"%>