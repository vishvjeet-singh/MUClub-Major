<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%-- <%@include file="components/allcss.jsp"%>
 --%><link rel="stylesheet" href="assignment.css" />
<link rel="icon" type="image/x-icon" href="images/Icons/mulogo.png">

<style type="text/css">
.shadow {
	box-shadow: rgb(255, 115, 5) 0px 19px 38px, rgba(0, 0, 0, 0.22) 0px 15px
		12px;
}
</style>

</head>

<body style="background-color: #FFF7F4">
	<%@include file="components/navbar.jsp"%>
	<div class="container p-5   " style="margin-top: 80px">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card shadow">
					<div class="card-body">
						<p class="fs-4 text-center">User Register</p>

						<c:if test="${not empty sucMsg }">
							<p class="text-center text-success fs-5 ">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errMsg }">
							<p class="text-center text-danger fs-5 ">${errMsg}</p>
							<c:remove var="errMsg" scope="session" />
						</c:if>

						<form action="user_register" method="post">

							<div class="mb-3">
								<label class="form-label">Email address</label> <input required
									name="email" type="email" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input required
									name="fullname" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Dipartment</label> <input required
									name="dipartment" type="text" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>
							<button type="submit" class="btn  text-black col-md-12"
								style="border: #FF5300; border-radius:6px; border-style: inset;">Register</button>
						</form>
						<br>
						<p class="text-center"> Already have an account ?
						 <a href="studentLogin.jsp"
								class="  link-info text-decoration-none">Login</a>
						</p>

					</div>
				</div>
			</div>
		</div>
	</div>


	<%@include file="/components/footer.jsp"%>


</body>
</html>