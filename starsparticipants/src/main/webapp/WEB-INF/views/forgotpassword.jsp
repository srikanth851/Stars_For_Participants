<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link href="css/loginpage.css" rel="stylesheet">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<!------ Include the above in your HEAD tag ---------->

<body>
	<div class="float-right md-10"
		style="margin-right: 20px; margin-top: 10px;"></div>
	<div id="login">
		<div class="container">
			<div id="login-row"
				class="row justify-content-center align-items-center">
				<div id="login-column" class="col-md-6">
					<div id="login-box" class="col-md-12 shadow-lg">

						<form:form id="login-form" class="form"
							modelAttribute="getpassword" action="recoverpassword"
							method="post">
							<h3 class="text-center text-info">Recover Password</h3>

							<div class="form-group">
								<label for="contactNo" class="text-info">Enter Your
									Contact No:</label>
								<form:input type="text" path="contactNo" name="contactNo"
									id="contactNo" class="form-control" required="required" />
							</div>

							<div class="form-group">
								<label for="email" class="text-info">Enter Your Email Id:</label>

								<form:input type="text" path="email" name="email" id="email"
									class="form-control" required="required" />
							</div>

							<div class="form-group">
								<label for="username" class="text-info">Enter Your
									Username:</label>

								<form:input type="text" path="username" name="username"
									id="emusernameail" class="form-control" required="required" />
							</div>




							<div class="form-group">
								<br> <input type="submit" name="submit" id="submit"
									class="btn btn-success center" value="Submit">
							</div>

							<div class="text-danger text-center">
								<span>${error}</span>
							</div>

						</form:form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>