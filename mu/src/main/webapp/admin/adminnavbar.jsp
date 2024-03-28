<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%@include file="/components/allcss.jsp"%>
<link rel="stylesheet" href="/assignment.css" />
<title>navbar</title>
<style>
.navbar-light .navbar-nav .nav-link {
	text-transform: uppercase;
	text-align: center;
	font-size: 13px;
	text-decoration: none;
	background: white;
	color: black;
	transition: 0.3s ease;
	border-top: 2px solid #FFFFFF;
	border-radius: 8px;
	border-bottom: 2px solid #FFFFFF;
	padding: 8px 8;
	margin: 9px 25px;
}

.navbar-light .navbar-nav .nav-link.active, .navbar-light .navbar-nav .nav-link:hover
	{
	border-top: 2px solid #f78b43;
	border-bottom: 2px solid #f78b43;
	padding: 6px 7px;
	background: #FFF7F4;
}

.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>

<body>


	<nav
		class="navbar navbar-expand-lg navbar-light bg-light fixed-top paint-card"
		style="padding-right: 30px">
		<div class="navm container-fluid">
			<div>
				<img src="mulogo1.png" alt="mu-logo" class="herader_logo"
					style="height: 50px;" />
			</div>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link text-dark"
						aria-current="page" href="index1.jsp" ><i
							class="fa-solid fa-house-chimney-user"></i> Home</a></li>
					<li class="nav-item"><a class="nav-link text-dark "
						aria-current="page" href="president.jsp" ><i
							class="fa-solid fa-chalkboard-user"></i> President</a></li>
					<li class="nav-item"><a class="nav-link text-dark "
						aria-current="page" href="facultyLogin.jsp" ><i
							class="fa-solid fa-graduation-cap"></i> Students</a></li>
				</ul>
				<div class="dropdown text-center">
					<button
						style="border: none; padding: 7px 7px; border-radius: 8px; border: 2px solid rgb(235, 73, 14);"
						class="btn  dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">ADMIN</button>
					
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1"
						>
						<li><a class="dropdown-item" href="../adminLogout">Logout</a></li>
					</ul>


				</div>
				
				
			</div>



		</div>
	</nav>


</body>
</html>