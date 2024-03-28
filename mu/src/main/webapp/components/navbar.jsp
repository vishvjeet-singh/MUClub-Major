<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<meta charset="ISO-8859-1">

<%-- <%@include file="allcss.jsp"%>
 --%><!-- <link rel="stylesheet" href="/assignment.css" />
 --><title>navbar</title>
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
		class="navbar navbar-expand-lg navbar-light bg-light fixed-top paint-card">
		<div class="navm container-fluid">
			<div>
				<img src="images/Icons/mulogo1.png" alt="mu-logo"
					class="herader_logo" style="height: 50px;" />
			</div>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">


				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">

					<c:choose>
						<c:when test="${empty userObj}">
							<li class="nav-item "><a class="nav-link text-dark "
								aria-current="page" href="admin.jsp" target="_blank"><i
									class="fa-solid fa-building-columns"></i> admin</a></li>
							<li class="nav-item"><a class="nav-link text-dark"
								aria-current="page" href="studentLogin.jsp" target="_blank"><i
									class="fa-solid fa-graduation-cap"></i> Student</a></li>
							<li class="nav-item"><a class="nav-link text-dark"
								aria-current="page" href="facultyLogin.jsp" target="_blank"><i
									class="fa-solid fa-chalkboard-user"></i> Club President</a></li>

							<li class="nav-item"><a class="nav-link text-dark "
								aria-current="page" href="index.jsp">home</a></li>
							<li class="nav-item"><a class="nav-link text-dark"
								aria-current="page" href="index.jsp#card">clubs</a></li>
							


						</c:when>
						<c:otherwise>
							<li class="nav-item"><a class="nav-link text-dark"
								aria-current="page" href="index.jsp">Club Registration</a></li>
							<li class="nav-item"><a class="nav-link text-dark"
								aria-current="page" href="index.jsp">View Club Registration</a></li>

							<li class="nav-item dropdown "><a
								class="nav-link dropdown-toggle text-dark " href="#" id="navbarDropdown"
								role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
									class="fa-solid fa-circle-user "></i> ${userObj.fullname} </a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item" href="#">Change Password</a></li>
									<li><a class="dropdown-item" href="userLogout">Logout</a></li>

								</ul></li>
						</c:otherwise>
					</c:choose>

					
				</ul>
			</div>
		</div>
	</nav>


</body>
</html>

