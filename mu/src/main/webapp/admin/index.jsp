<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%-- <%@include file="/components/allcss.jsp" %>
 --%>
 <link rel="stylesheet" href="../assignment.css" />
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

</head>
<body style="background-color: #FFF7F4; padding: 40px 15px;">
	<%@include file="adminnavbar.jsp"%>
	
	<c:if test="${ empty adminObj}">
		<c:redirect url="../admin.jsp"></c:redirect>
	</c:if>
	

	<div class="container p-5">
		<p class="text-center fs-4">Admin Dashboard</p>

		<div class="row">
			<div class="col-md-4 " >
				<div class="card paint-card">
					<div class="card-body text-center text-secondry">
						<i class="fas fa-chalkboard-user fa-3x"></i><br>
						<p class="fs-4 text-center">
							Club President <br>6
						</p>
					</div>
				</div>
			</div>



			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-secondry">
						<i class="fas fa-user-circle fa-3x"></i><br>
						<p class="fs-4 text-center">
							Students <br>4
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-secondry">
						<i class="far fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
							Total Club Register <br>4
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-4 mt-2">

				<div class="card paint-card " data-bs-toggle="modal"
					data-bs-target="#exampleModal">
					<div class="card-body text-center text-secondry">
						<i class="far fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
							Specialist <br>4
						</p>
					</div>
				</div>

			</div>

		</div>
	</div>


</body>
</html>