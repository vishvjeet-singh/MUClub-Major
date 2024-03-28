<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
.shadow{
  box-shadow: rgb(255,115,5) 0px 19px 38px, rgba(0, 0, 0, 0.22) 0px 15px 12px;
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
						<p class="fs-4 text-center">Club President Login</p>

						<form action="adminLogin" method="post">
							<div class="mb-3">
								<label class="form-label">Email address</label> <input required
									name="email" type="email" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>

							<button type="submit" class="btn  text-black col-md-12"
								style="border: #FF5300; border-radius: 6px; border-style: inset;">Login</button>
						</form>
						
					</div>
				</div>
			</div>
		</div>
	</div>


	<%@include file="/components/footer.jsp"%>


</body>
</html>