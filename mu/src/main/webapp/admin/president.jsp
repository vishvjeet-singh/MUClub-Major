<%@page import="com.entity.Club"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnection"%>
<%@page import="com.dao.ClubDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

	<div class="container-fluid p-3">
		<div class="row">

			<div class="col-md-5 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Add Club President</p>
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
								<label class="form-label">Club</label> 
								
								<select name="club" required class="form-control">
									<option>--select--</option>

									<%
									ClubDao dao = new ClubDao(DBConnection.getconn());
									List<Club> list = dao.getAllClubs();
									for (Club c : list) {
									%>
									<option><%=
									c.getClubname()
									 %>
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



		</div>
	</div>

</body>
</html>