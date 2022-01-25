<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trainer Home</title>
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
</head>
<body>

<!--Nav Bar-->

	<div class="topnav">
		<a class="active " href="/login"><i class="fas fa-home"></i> Stars</a>
		<a href="#about">Profile</a>
		<div class="float-right">
			<a href="/TraineeRatingPage">Rate Trainee</a> <a href="/login"><i
				class="fas fa-sign-out-alt"></i>Logout</a>
		</div>
	</div>



<!--Trainer Home Page-->

	<div class="w3-container" id="register" style="margin-top: 75px">
		<div class="container mt-3">
			<div class="mb-3 mt-3">
				<h1>Trainer Home Page</h1>

				<!--search  bar-->
				<div class="container">
					<div
						class="row height d-flex justify-content-center align-items-center">
						<div class="col-md-8">
							<div class="search">
								<i class="fa fa-search"></i> <input type="text" name="search"
									id="searchbar" class="form-control" onkeyup="search_animal()"
									placeholder="Search...">
							</div>
						</div>
					</div>
				</div>
				<br>
				<!-- ordered list -->

				<div class="w3-container" id="register" style="margin-top: 75px">
					<div class="container mt-3">
					
<!--List of requests from Admin-->

						<div class="mb-3 mt-3">
							<p>List of requests from Admin :</p>

							<table class="table">
								<thead>
									<tr>
										<th>Requestor</th>
										<th>Subject</th>
										<th>Time</th>
										<th>Venue</th>
										<th>Nominate</th>
									</tr>
								</thead>
								<tbody>
									<tr class="animals">
										<td>Cognizant</td>
										<td><a href="List of requests from Admin">HTML</a></td>
										<td>04/oct/2022</td>
										<td>Pune</td>
										<td><input type="checkbox" id="a" name="a" value="a"><label
											for="a"> </label></td>
									</tr>
									<tr class="animals">
										<td>Autoliv</td>
										<td><a href="List of requests from Admin">SQL</a></td>
										<td>05/jan/2022</td>
										<td>Bangalore</td>
										<td><input type="checkbox" id="b" name="b" value="b"><label
											for="b"> </label></td>
									</tr>
									<tr class="animals">
										<td>TCS</td>
										<td><a href="List of requests from Admin">CSS</a></td>
										<td>31/july/2022</td>
										<td>Chennai</td>
										<td><input type="checkbox" id="c" name="c" value="c"><label
											for="c"> </label></td>
									</tr>
								</tbody>
							</table>

						</div>
					</div>
				</div>
			</div>

			<div class="w3-container" id="register" style="margin-top: 75px">
				<div class="container mt-3">
					<div class="mb-3 mt-3">


<!--Trainer Availability Details-->

						<form>
							<h3>Trainer Availability Details</h3>
							<div class="form-group">
								<label>Requestor Name:</label> <input type="text"
									class="form-control" id="fname"
									placeholder="Enter Requestor Name" name="fname" required>
							</div>
							<div class="form-group">
								<label>Subject:</label> <input type="text" class="form-control"
									id="fname" placeholder="Enter Subject" name="fname" required>
							</div>
							<div class="form-group">
								<label>Venue:</label> <input type="text" class="form-control"
									id="fname" placeholder="Enter Venue" name="fname" required>
							</div>
							<div class="form-group">
								<label>Time:</label> <input type="time" class="form-control"
									id="fname" placeholder="Enter Time" name="fname" required>
							</div>
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
</body>
</html>