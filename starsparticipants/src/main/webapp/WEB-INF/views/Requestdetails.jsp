<html>
<head>
<title>Request Details</title>
<link href="css/common.css" rel="stylesheet">
<link href="css/navbar.css" rel="stylesheet">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
.fakeimg {
	height: 200px;
	background: #aaa;
}
</style>
</head>
<body>
	<!--Nav Bar-->
	<div class="topnav">
		<a href="/login"><i class="fas fa-sign-out-alt"></i>Logout</a>
	</div>
	<div class="w3-container" id="register" style="margin-top: 75px">
		<div class="container mt-3">
			<h2>Details</h2>
			<p>Requester Name:</p>
			<p>Subject:</p>
			<p>Venue:</p>
			<p>Time:</p>
			<p>Available trainers</p>
			<select id="mySelect">
				<option value="one">1</option>
				<option value="two">2</option>
				<option value="three">3</option>
				<option value="four">4</option>
			</select>
			<button type="button" onclick="myFunction()">Select Trainer</button>
			<div class="mb-3 mt-3">
				<label for="resolution">Selected Trainer</label>
				<p id="demo"></p>
				<script>
					function myFunction() {
						var x = document.getElementById("mySelect").value;
						document.getElementById("demo").innerHTML = x;
					}
				</script>
				<!--onclicking send request takes to mapped details page-->
				<button type="submit" class="btn btn-primary">Send Request</button>
				<br> <br>
				<button type="submit" class="btn btn-primary"
					onclick="window.location.href='/mappeddetails'"">Submit</button>
			</div>
		</div>
	</div>
</body>
</html>