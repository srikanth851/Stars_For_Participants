<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home Page</title>
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
</head>
<body>

	<div class="topnav">
		 <a href="/login"><i class="fas fa-sign-out-alt"></i>Logout</a>
		</div>
	</div>
	<script>
		function search_animal() {
			let
			input = document.getElementById('searchbar').value
			input = input.toLowerCase();
			let
			x = document.getElementsByClassName('animals');

			for (i = 0; i < x.length; i++) {
				if (!x[i].innerHTML.toLowerCase().includes(input)) {
					x[i].style.display = "none";
				} else {
					x[i].style.display = "list-item";
				}
			}
		}
	</script>



	<div class="w3-container" id="register" style="margin-top: 75px">
		<div class="container mt-3">
			<div class="mb-3 mt-3">
				<h1>Admin Login Page</h1>

				<!--Radio for search-->
				<h3>Search Based on:</h3>
				<h5><input type="radio" id="Trainer" name="role" value="Trainer">
				<label for="Trainer">Skill set</label><br> <input type="radio"
					id="Trainer" name="role" value="Trainer"> <label
					for="Trainer">Location</label><br> <input type="radio"
					id="Trainer" name="role" value="Trainer"> <label
					for="Trainer">Availability</label></h5><br><br>
					
					
				<!--search  bar-->
				<div class="container">
					<div class="row height d-flex justify-content-center align-items-center">
						<div class="col-md-8">
							<div class="search">
								<i class="fa fa-search"></i> <input type="text" name="search"
									id="searchbar" class="form-control" onkeyup="search_animal()"
									placeholder="Search...">
							</div>
						</div>
					</div>
				</div><br>
				
				<!-- Trainer details Table -->
				<h3>Trainer details</h3>
				<table class="table">
					<thead>
						<tr>
							<th>Trainer Name</th>
							<th>Skills</th>
							<th>Location</th>
							<th>Availability</th>
						</tr>
					</thead>
					<tbody>
						<tr class="animals">
							<td><a href="Trainerdetails">Abdul</a></td>
							<td>HTML</td>
							<td>Bangalore</td>
							<td>04/oct/2022</td>
						</tr>
						<tr class="animals">
							<td><a href="Trainerdetails">Ravi</a></td>
							<td>SQL,PYTHON</td>
							<td>chennai</td>
							<td>05/jan/2022</td>
						</tr>
						<tr class="animals">
							<td><a href="Trainerdetails">Ganic</a></td>
							<td>PHP,CSS</td>
							<td>Hyderbad</td>
							<td>31/july/2022</td>
						</tr>
					</tbody>
				</table>
				<div class="mb-3 mt-3">
				
				<!-- Requester details Table -->
					<h3>Requester details</h3>
					<table class="table">
						<thead>
							<tr>
								<th>Subject</th>
								<th>Time</th>
								<th>Venue</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><a href="Requestdetails">HTML</a></td>
								<td>04/oct/2022</td>
								<td>Pune</td>
							</tr>
							<tr>
								<td><a href="Requestdetails">SQL</a></td>
								<td>05/jan/2022</td>
								<td>Bangalore</td>
							</tr>
							<tr>
								<td><a href="Requestdetails">CSS</a></td>
								<td>31/july/2022</td>
								<td>Chennai</td>
							</tr>
						</tbody>
					</table>

				</div>
			</div>
		</div>
	</div>
</body>
</html>