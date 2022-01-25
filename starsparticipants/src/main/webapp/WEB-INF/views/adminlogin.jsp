<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminLogin</title>
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

	<div id="login">
		<div class="container">
			<div id="login-row"
				class="row justify-content-center align-items-center">
				<div id="login-column" class="col-md-6">
					<div id="login-box" class="col-md-12 shadow-lg">

						<!-- Admin Login Form -->

						<form:form id="login-form" modelAttribute="user" class="form"
							action="/adminhomepage" method="post">
							<h3 class="text-center text-info">Admin Login</h3>

							<!-- Admin Id: -->

							<div class="form-group">
								<label for="username" class="text-info">Admin Id:</label>
								<form:errors path="username" class="text-danger"></form:errors>
								<br>
								<form:input type="text" path="username" name="username"
									id="username" class="form-control" required="required" />
							</div>

							<!-- Password: -->
							<div class="form-group">
								<label for="password" class="text-info">Password:</label>
								<form:errors path="password" class="text-danger"></form:errors>
								<br>
								<form:input type="password" path="password" name="password"
									id="password" class="form-control" required="required" />
							</div>

							<div class="form-group">
								<input type="submit" name="submit" id="submit"
									class="btn btn-success center" value="Login">
							</div>
						</form:form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>