<%@ page import="java.util.*"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%!public boolean empty(String s) {
		if (s == null || s.trim().equals(""))
			return true;
		else
			return false;
	}%>

<%
	Enumeration paramNames = request.getParameterNames();
	Map<String, String> params = new HashMap<String, String>();
	while (paramNames.hasMoreElements()) {
		String paramName = (String) paramNames.nextElement();

		String paramValue = request.getParameter(paramName);
		params.put(paramName, paramValue);
	}
%>

<html>
<head>
<script>
	function submitEmailForm() {
		var emailForm = document.forms.emailForm;
		emailForm.submit();
	}
</script>
</head>
<body onload="submitEmailForm();">
	<div class="jumbotron">

		<h3 class="text-center">Please wait, your order is processing...</h3>

	</div>
	<!-- <div class="form-group row">
		<div class="col-lg-8 mx-auto pt-3">
			<div class="text-center">
				<h5>
					<b>Please wait, your order is processing...</b>
				</h5>
			</div>
		</div>
	</div> -->
	<form action="sendEmail" method="post" name="emailForm">
		<table>
			<tr>
				<!-- <td><b>Mandatory Parameters</b></td> -->
			</tr>
			<tr>
				<!-- <td>First Name:</td> -->
				<!--  <td><input type="text" name ="name" required="" placeholder="Name" class="form-control" /></td> -->
				<td><input type="hidden" name="firstname" id="firstname"
					class="form-control"
					value="<%=(empty(params.get("firstname"))) ? "" : params.get("firstname")%>" /></td>
			</tr>
			<tr>
				<!-- <td>Email:</td> -->
				<!--  <td><input type="text" name ="email" required="" placeholder="Email" class="form-control" /></td> -->
				<td><input type="hidden" name="email" id="email"
					class="form-control"
					value="<%=(empty(params.get("email"))) ? "" : params.get("email")%>" /></td>
			<tr>
			<tr>
				<!-- <td>Subject:</td> -->
				<!--  <td><input type="text" name ="subject" required="" placeholder="Subject" class="form-control" /></td> -->
				<td><input type="hidden" name="subject" id="subject"
					class="form-control"
					value="<%=(empty(params.get("subject"))) ? "" : params.get("subject")%>" /></td>
			</tr>
			<tr>
				<!-- <td>Message:</td> -->
				<!-- <td><input type="text" name ="message" required="" placeholder="Message..." class="form-control" /></td> -->
				<td><input type="hidden" name="message" id="message"
					class="form-control" cols="50" rows="10"
					value="<%=(empty(params.get("message"))) ? "" : params.get("message")%>" /></td>
			</tr>
			<td colspan="4"><input type="hidden"
				name="${_csrf.parameterName}" value="${_csrf.token}" /><input
				type="hidden" name="register" value="Submit" /></td>
			</tr>
		</table>
	</form>
</body>
</html>