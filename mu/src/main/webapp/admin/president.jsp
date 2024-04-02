<%@page import="com.entity.president"%>
<%@page import="com.dao.PresidentDao"%>
<%@page import="com.entity.Club"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnection"%>
<%@page import="com.dao.ClubDao"%>
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
<link rel="stylesheet" href="../assignment.css" />
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body style="background-color: #FFF7F4; padding: 80px 10px;">
	<%@include file="adminnavbar.jsp"%>

	<div class="container-fluid ">
		<div class="row">

			<div class="col-md-4 ">
				<div class="card paint-card">
					<div class="card-body">

						<p class="fs-3 text-center">Add Club President</p>

						<c:if test="${not empty sucMsg }">
							<p class="text-center text-success fs-5 ">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>
						<c:if test="${not empty errMsg }">
							<p class="text-center text-danger fs-5 ">${errMsg}</p>
							<c:remove var="errMsg" scope="session" />
						</c:if>

						<form action="../addPresident " method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									required name="fullname" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Dipartment</label> <input type="test"
									required name="dip" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Designation</label> <input required
									name="designation" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Club</label> <select name="club"
									required class="form-control">
									<option>--select--</option>

									<%
									ClubDao dao = new ClubDao(DBConnection.getconn());
									List<Club> list = dao.getAllClubs();
									for (Club c : list) {
									%>
									<option><%=c.getClubname()%>
									</option>
									<%
									}
									%>


								</select>
							</div>

							<div class="mb-3">
								<label class="form-label">Email</label> <input type="text"
									required name="email" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Mob No</label> <input type="text"
									required name="mobno" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>

							<button
								style="border: none; padding: 7px 7px; border-radius: 8px; border: 2px solid rgb(235, 73, 14);"
								type="submit" class="btn ">Submit</button>
						</form>
					</div>
				</div>
			</div>


			<div class="col-md-8 ">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">President Details</p>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Designation</th>
									<th scope="col">Club</th>
									<th scope="col">Email</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
														
							<tbody>
								<%
								PresidentDao dao2 = new PresidentDao(DBConnection.getconn());
								List<president> list1 = dao2.getAllPresident();
								for (president p : list1) {
								%>

								<tr>
									<td><%=p.getFullname()%></td>
									<td><%=p.getDesignation()%></td>
									<td><%=p.getClub()%></td>
									<td><%=p.getEmail()%></td>
									<td>
									
									<a href="edit_president.jsp?id=<%=p.getId() %>" class="btn btn-sm btn-primary">Edit</a>
									<a href="#" class="btn btn-sm btn-danger">Delete</a>
									
									</td>


								</tr>

								<%
								}
								%>

							</tbody>
						</table>
					</div>
				</div>
			</div>



		</div>
	</div>

</body>
</html>