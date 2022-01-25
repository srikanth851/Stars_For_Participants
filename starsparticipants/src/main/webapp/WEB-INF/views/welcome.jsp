<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
<link href="css/common.css" rel="stylesheet">
<link href="css/navbar.css" rel="stylesheet">
<link href="css/welcome.css" rel="stylesheet">
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
		<a class="active " href="/welcome"><i class="fas fa-home"></i>
			Exam Portal</a> <a href="#about">About</a>
		<div class="float-right">
			<a href="#help">Help</a> <a href="/logout"><i
				class="fas fa-sign-out-alt"></i>Logout</a>
		</div>
	</div>
	<div
		class=" mainContainer row justify-content-center align-items-center">

		<table>
			<tr>

				<td><div class="leftSide">
						<i id="adminIcon" class="fas fa-book-reader"></i>
						<h1 id="welcomeMessage" class="heading">
							Hello ${verifiedUser.firstname}<br> Welcome
						</h1>
					</div></td>
				<td>
					<div class="rightSide">
						<table>
							<tr>
								<td><a href="#"><button class="btn button shadow"
											style="border-radius: 20px;">
											<span>ASSESSMENT REPORT</span>
										</button></a></td>
							</tr>
							<tr>
								<td colspan="2"><a href="/searchexam?userId=${verifiedUser.userId}"><button
											class="btn button shadow takeexam"
											style="border-radius: 20px;" id="takeexam">
											<span id="takeexamSpan">TAKE ASSESSMENT</span>
										</button></a></td>
							</tr>
							<tr>
								<td><a href="#"><button class="btn button shadow"
											style="border-radius: 20px;">
											<span>ASSESSMENT REVIEW</span>
										</button></a></td>
							</tr>
							<tr>
								<td><div class="recentAssessmentReview"></div></td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>