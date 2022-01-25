<head>
<title>Trainee Rating Page</title>
<link href="css/common.css" rel="stylesheet">
<link href="css/navbar.css" rel="stylesheet">
<link href="css/adminHome.css" rel="stylesheet">
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-star-rating/4.0.2/css/star-rating.min.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-star-rating/4.0.2/js/star-rating.min.js"></script>
</head>
<body>

<!--Nav Bar-->

	<div class="topnav">
		<a class="active " href="/login"><i class="fas fa-home"></i> Stars</a>
		<a href="#about">Profile</a>
		<div class="float-right">
			<a href="/login"><i class="fas fa-sign-out-alt"></i>Logout</a>
		</div>
	</div>



	<form action="/action_page.php" class="was-validated"
		onsubmit="myFunction()">


		<div class="container">

<!--Trainee Rating Page-->
			<h2>Trainee Rating Page</h2>


			<br /> <label for="input-1" class="control-label">Give a
				rating :</label> <input id="input-1" name="input-1"
				class="rating rating-loading" data-min="0" data-max="10"
				data-step="0.5" value="0">

		</div>


		<script>
			$("#input-id").rating();
		</script>

		<div class="w3-container" id="register" style="margin-top: 75px">
			<div class="container mt-3">
				<div class="mb-3 mt-3">
					<form action="/action_page.php" id="usrform">
						Remarks:<br />
						<textarea rows="4" cols="50" name="comment" form="usrform"> </textarea>
						<br /> <br /> <input type="submit">
						<button type="button">Edit</button>
					</form>
				</div>
			</div>
		</div>
		<script>
			function myFunction() {
				alert("Your Details Are Submitted Successfully");
			}
		</script>
	</form>
	<div style="padding:150px">
	
<!--Trainer details page-->

	<h1>Trainer details</h1>
	<table class="table">
		<thead>
			<tr>
				<th>Trainer Id</th>
				<th>Trainer Name</th>
				<th>Details</th>
				<th>Rating column</th>
			</tr>
		</thead>
		<tbody>
			<tr class="animals">
				<td>1</td>
				<td>Meghana</td>
				<td>Html</td>
				<td>9</td>
				<td><button type="button">Edit</button></td>
			</tr>
			<tr class="animals">
				<td>2</td>
				<td>Abdul</td>
				<td>SQL</td>
				<td>8.5</td>
				<td><button type="button">Edit</button></td>

			</tr>
			<tr class="animals">
				<td>3</td>
				<td>John</td>
				<td>CSS</td>
				<td>8</td>
				<td><button type="button">Edit</button></td>
			</tr>
		</tbody>
	</table>
	<input type="submit">
</div>
</body>
</html>