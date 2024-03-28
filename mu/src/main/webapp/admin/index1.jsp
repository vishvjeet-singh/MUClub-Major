<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
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


	<c:choose>
		<c:when test="${empty adminObj}">
			<c:redirect url="../admin.jsp"></c:redirect>
		</c:when>
		<c:otherwise>


			<br>
			<br>
			<br>

			<p class="text-center fs-4">Admin Dashboard</p>
			<c:if test="${not empty sucMsg}">
				<div class="text-center text-success fs-5 ">${sucMsg}</div>
				<c:remove var="sucMsg" scope="session" />
			</c:if>
			<c:if test="${not empty errMsg}">
				<p class="fs-5 text-center text-danger">${errMsg}</p>
				<c:remove var="errMsg" scope="session" />
			</c:if>

			<div class="container p-5">
				<div class="row">
					<div class="col-md-4 mt-4">
						<div class="card paint-card">
							<div class="card-body text-center text-secondry">
								<i class="fas fa-chalkboard-user fa-3x"></i><br>
								<p class="fs-4 text-center">
									Club President <br>6
								</p>
							</div>
						</div>
					</div>



					<div class="col-md-4 mt-4">
						<div class="card paint-card">
							<div class="card-body text-center text-secondry">
								<i class="fas fa-user-circle fa-3x"></i><br>
								<p class="fs-4 text-center">
									Students <br>4
							</div>
						</div>
					</div>

					<div class="col-md-4 mt-4">
						<div class="card paint-card">
							<div class="card-body text-center text-secondry">
								<i class="far fa-calendar-check fa-3x"></i><br>
								<p class="fs-4 text-center">
									Total Club Register <br>4
								</p>
							</div>
						</div>
					</div>

					<div class="col-md-4 mt-4">

						<div class="card paint-card " data-bs-toggle="modal"
							data-bs-target="#exampleModal">
							<div class="card-body text-center text-secondry">
								<i class="far fa-calendar-check fa-3x"></i><br>
								<p class="fs-4 text-center">
								Add	Club <br>4
								</p>
							</div>
						</div>

					</div>

				</div>


				<!-- Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">Add Club</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<form action="../addClub" method="post">
									<div class="form-group">

										<label>Enter Club Name</label><br> <br> <input
											required type="text" name="clubName" class="form-control">
									</div>
									<br>
									<div class="text-center">
										<button
											style="border-radius: 8px; border: 2px solid rgb(235, 73, 14);"
											type="submit" class="btn btn-secondry ">Add</button>
									</div>

								</form>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>


			</div>


		</c:otherwise>
	</c:choose>



</body>
</html>