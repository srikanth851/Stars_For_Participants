<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trainee Home</title>
<link href="css/common.css" rel="stylesheet">
<link href="css/navbar.css" rel="stylesheet">
<link href="css/adminHome.css" rel="stylesheet">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	function Validate() {
		var objects = document.getElementById("objects");
		if (objects.value == "") {
			//If the "Please Select" option is selected display error.
			alert("Please select an option!");
			return false;
		}
		return true;
	}
</script>
</head>
<body>
			<!--Nav Bar-->
		<div class="topnav">
		<a class="active " href="/login"><i class="fas fa-home"></i> Stars</a>
		<a href="#about">Profile</a>
		<div class="float-right">
		
			<!--onclicking rate trainer takes to page-->
			<a href="/TrainerRatingPage">Rate Trainer</a> <a href="/login"><i
				class="fas fa-sign-out-alt"></i>Logout</a>
		</div>
	</div>
	
	<div class="w3-container" id="register" style="margin-top: 75px">
		<div class="container mt-3">
			<div class="mb-3 mt-3">

				<h1>Trainee Home Page</h1>
				<br /> <br />
              
              <!--Trainee Mapped Details Table-->
				<h3>Trainee Mapped Details</h3>
				<table class="table">
					<thead>
						<tr>
							<th>TrainerId</th>
							<th>TainerName</th>
							<th>Subject</th>
							<th>Venue</th>
							<th>Time</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><a href=" ">0000001</a></td>
							<td>Ravi</td>
							<td>HTML</td>
							<td>Pune</td>
							<td>04/oct/2022</td>
						</tr>
						<tr>
							<td><a href=" ">0000002 </a></td>
							<td>Ganic</td>
							<td>CSS</td>
							<td>Bangalore</td>
							<td>05/jan/2022</td>
						</tr>
						<tr>
							<td><a href=" ">0000003 </a></td>
							<td>Abdul</td>
							<td>SQL</td>
							<td>Chennai</td>
							<td>31/july/2022</td>
						</tr>
					</tbody>
				</table>

			</div>
		</div>
	</div>

 <!--Raise Request Form -->

	<button type="button" onclick="myFunction()">Raise Request</button>
	<div id=myP style="display: none;">

		<form action="/action_page.php" class="was-validated"
			onsubmit="myFunction()">

			<div class="w3-container" id="register" style="margin-top: 75px">
				<div class="container mt-3">

					<div class="mb-3 mt-3">

						<label for="subject" class="form-label">Subject :</label> <select
							class="form-control" id="objects" placeholder="Enter the subject"
							name="subject" required>
							<option value=""></option>
							<option value="1">HTML</option>

							<option value="2">SQL</option>

							<option value="3">CSS</option>

						</select> <br /> <br />

						<div class="mb-3 mt-3"></div>
						<label for="venue" class="form-label">Venue :</label> <select
							class="form-control" id="venue" placeholder="Enter the venue"
							name="venue" required>
							<option></option>
							<option>Pune</option>

							<option>Bangalore</option>

							<option>Chennai</option>
						</select> <br /> <br />

						<!--TIME-->

						<div class="mb-3 mt-3">

							<label for="dob" class="form-label">Time:</label> <input
								type="date" class="form-control" id="time"
								placeholder="Enter the time" name="time" required>
						</div>

						<input type="submit" value="submit" onclick="returnValidate()" />
					</div>
				</div>
			</div>


		</form>


		<script>
			function returnValidate() {
				alert("Request Submitted");
			}
		</script>
	</div>
	<script>
		function myFunction() {
			var x = document.getElementById('myP');
			if (x.style.display === 'none') {
				x.style.display = 'inline-table';
			} else {
				x.style.display = 'none';
			}
		}
	</script>

</body>
</html>