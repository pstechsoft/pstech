<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script type="text/javascript" src="webjars/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/angular.js/1.7.2/angular.min.js"></script>
    <!-- self coded js -->
	<script src="${js}/myapp.js"></script>
    <title>PS TECH</title>
</head>
<body ng-app="paymentApp" ng-controller="paymentCtrl">

<div class="col-md-6">
    <h2>Payment Form</h2>
<form action="https://test.payu.in/_payment" name="payuform" method="POST">
    <div class="form-group">
        <label for="productInfo">Product Name:</label>
        <input type="text" class="form-control" id="productInfo" name="productinfo" ng-model="productinfo">
    </div>
    <div class="form-group">
        <label for="firstname">Name:</label>
        <input type="text" class="form-control" id="firstname" name="firstname" ng-model="firstname">
    </div>
    <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" class="form-control" id="email" name="email" ng-model="email">
    </div>
    <div class="form-group">
        <label for="email">Phone:</label>
        <input type="number" class="form-control" id="phone" name="phone" ng-model="phone">
    </div>
    <div class="form-group">
        <label for="amount">Amount:</label>
        <input type="number" class="form-control" id="amount" name="amount" ng-model="amount">
    </div>
    <textarea name="surl" id="surl" ng-model="surl" rows="2" cols="2" hidden></textarea>
    <textarea name="furl" id="furl" ng-model="furl" rows="2" cols="2" hidden></textarea>
    <textarea name="key" id="key" ng-model="key" rows="2" cols="2" hidden></textarea>
    <textarea name="hash" id="hash" ng-model="hash" rows="2" cols="2" hidden></textarea>
    <textarea name="txnid" id="txnid" ng-model="txnid" rows="2" cols="2" hidden></textarea>
    <textarea name="service_provider" id="service_provider" rows="2" cols="2" hidden></textarea>
    <button type="button" class="btn btn-default" ng-show="!showSubmitButton" ng-click="confirmPayment()">Confirm</button>
    <button type="submit" class="btn btn-danger" ng-show="showSubmitButton">Submit</button>
</form>
</div>
</body>
</html> --%>