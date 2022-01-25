<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link href="css/register.css" rel="stylesheet">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="javascript/register.js"></script>
<script>
	function check() {
		var x = document.getElementById('myP');
		x.style.display = 'inline-table';
		if (document.getElementById("Trainer").checked = true) {
			document.getElementById("box").value = "Trainer";
		}
	}
	function uncheck() {
		var x = document.getElementById('myP');
		x.style.display = 'none';
		if (document.getElementById("Trainee").checked = true) {
			document.getElementById("box").value = "Trainee";
		}
	}
</script>
<script type="text/javascript">
	onlyOneCheckBox()
</script>

<script type="text/javascript">
	function onlyOneCheckBox() {
		var checkboxgroup = document.getElementById('checkboxgroup')
				.getElementsByTagName("input");
		var min = 1, limit = 5;
		for (var i = 0; i < checkboxgroup.length; i++) {
			checkboxgroup[i].onclick = function() {
				var checkedcount = 0;
				for (var i = 0; i < checkboxgroup.length; i++) {
					checkedcount += (checkboxgroup[i].checked) ? 1 : 0;
				}
				if (checkedcount > limit) {
					console.log("You can select maximum of " + limit
							+ " checkbox.");
					alert("You can select maximum of " + limit + " checkbox.");
					this.checked = false;
				}
			}
		}
	}
</script>
</head>

<!------ Include the above in your HEAD tag ---------->

<body>
	<div id="login">
		<div class="container">
			<div id="login-row"
				class="row justify-content-center align-items-center">
				<div id="login-column" class="col-md-6">
					<div id="login-box" class="col-md-12">

						<form:form id="login-form" modelAttribute="user" class="form" action="/register" method="post">
							<h3 class="text-center text-info">Sign up</h3>
							<p>Please select your role:</p>
							
							
							<!--select your role and displays skills when trainer is checked and viceversa-->
							<div class="form-group">
							<input type="radio" id="Trainer" onclick="check()" name="role" value="Trainer"> 
							<label for="Trainer">Trainer</label><br>
							<input type="radio" id="Trainee" name="role" onclick="uncheck()" value="Trainee"> 
							<label for="Trainee">Trainee</label><br>
							</div>
							
							<!--First Name-->
							<div class="form-group ">
								<label for="firstname" class="text-info">First Name:</label>
								<form:errors path="firstname" class="text-danger"></form:errors><br>
								<form:input type="text" path="firstname" name="firstname" id="firstname"
									class="form-control" required="true" />
							</div>
							<!--Last Name-->
							<div class="form-group">
								<label for="lastname" class="text-info">Last Name:</label>
								<form:errors path="lastname" class="text-danger"></form:errors><br>
								<form:input type="text" path="lastname" name="lastname" id="lastname"
									class="form-control" required="required" />
							</div>
							<!--DOB-->
							<div class="form-group">
								<label for="dateOfBirth" class="text-info">DOB:</label>
								<form:errors path="dateOfBirth" class="text-danger"></form:errors><br>
								<form:input type="date" path="dateOfBirth" name="dateOfBirth" id="dateOfBirth"
									class="form-control" required="required" />
							</div>
								<!--Gender-->
							<div class="form-group">
								<label for="gender" class="text-info">Gender:</label>
								<form:errors path="gender" class="text-danger"></form:errors><br>
								<form:select type="text" path="gender" name="gender" id="gender"
									class="form-control" required="required">
									<option value="Male">Male</option>
									<option value="Female">Female</option>
								</form:select>
							</div>
							<!--Contact No-->
							<div class="form-group">
								<label for="contactNo" class="text-info">Contact No:</label>
								<form:errors path="contactNo" class="text-danger"></form:errors><br>
								<form:input type="text" path="contactNo" name="contactNo" id="contactNo"
									class="form-control" required="required" pattern="[7-9][0-9]{9}"/>
							</div>
							<!--Username-->
							<div class="form-group">
								<label for="username" class="text-info">Username:</label>
								<form:errors path="username" class="text-danger"></form:errors><br>
								<form:input type="text" path="username" name="username" id="username"
									class="form-control" required="required" />
							</div>
								<!--Password-->
							<div class="form-group">
								<label for="password" class="text-info">Password:</label>
								<form:errors path="password" class="text-danger"></form:errors><br>
								<form:input type="text" path="password" name="password" id="password"
									class="form-control" required="required" />
							</div>
								<!--UserCat-->
							<div class="form-group">
								<label for="usercat" class="text-info">UserCat:</label>
								<form:errors path="usercat" class="text-danger"></form:errors><br>
								<form:input type="text" path="usercat" name="usercat" id="box"
									class="form-control" required="required" />
							</div>
							
										<!--SKILL TYPE and calls myP function script-->
				<div class="form-group" >
				<div id="myP">
					<p>Select the skills:</p>
					<div id="checkboxgroup">
						<input type="checkbox" id="html" name="check[]" value="HTML" /> <label
							for="html">HTML</label><br> <input type="checkbox" id="css"
							name="check[]" value="CSS" /> <label for="css">CSS</label><br>
						<input type="checkbox" id="JavaScript" name="check[]"
							value="JAVASCRIPT" /> <label for="JavaScript">JAVASCRIPT</label><br>
						<input type="checkbox" id="python" name="check[]" value="PYTHON" />
						<label for="python">PYTHON</label><br> <input type="checkbox"
							id="SQL" name="check[]" value="SQL" /> <label for="SQL">SQL</label><br>
						<input type="checkbox" id="php" name="check[]" value="PHP" /> <label
							for="php">PHP</label><br> <input type="checkbox" id="jquery"
							name="check[]" value="JQUERY" /> <label for="jquery">JQUERY</label><br>
					</div>
					</div>
				</div>
				
							<!--submit button-->
							<div class="form-group">
								<input type="submit" name="submit" id="submit"
									class="btn btn-success center" value="Register">
							</div>
				
							<!--Displays registrationStatusMessage after registration-->
							<div class="text-danger"><center>${registrationStatusMessage}</center></div>
						</form:form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>