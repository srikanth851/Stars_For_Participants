<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Update Your Password</title>
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
							modelAttribute="updatepasswordwrapper" action="/updatepassword"
							method="post">
							<h3 class="text-center text-info">Reset Password</h3>

							<div class="form-group">
								<label for="username" class="text-info">Enter Your
									Username:</label>
								<form:input type="text" path="username" name="username"
									id="username" class="form-control" required="true" />
							</div>

							<div class="form-group">
								<label for="newpassword" class="text-info">Enter Your
									New Password:</label>
								<form:input type="password" path="newpassword"
									name="newpassword" id="newpassword" class="form-control"
									required="true" />
							</div>

							<div class="form-group">
								<label for="confirmpassword" class="text-info">Confirmed
									Password:</label>

								<form:input type="password" path="confirmpassword"
									name="confirmpassword" id="confirmpassword"
									class="form-control" required="true" />
							</div>


							<div class="form-group">
								<br> <input type="submit" name="submit" id="submit"
									class="btn btn-success center" value="Submit">
							</div>
							<div class="text-center">
								<div class="text-danger">
									<span>${error1}</span>
								</div>
								<div class="text-danger">
									<span>${error2}</span>
								</div>
								<div class="text-danger">
									<span>${message}</span>
								</div>
							</div>

						</form:form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>