<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="css.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<div class="container-fluid p-3">
		<div class="row">

			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center ">Add Doctor</p>
						<c:if test="${not empty errMsg }">
							<p class="fs-3 text- center text-danger">${errMsg }</p>
							<c:remove var="errMsg" scope="session" />
						</c:if>

						<c:if test="${not empty succMsg }">
							<p class="fs-3 text- center text-success" role="alert">${succMsg }</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<form action="../add_doctor" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									required="required" name="fullname" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">DOB</label> <input type="date"
									required="required" name="dob" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Qualification</label> <input
									type="text" required="required" name="qualification"
									class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Specialist</label> <select
									name="specialist" class="form-control">
									<option>--Select--</option>
									<%
								SpecialistDao dao=new SpecialistDao(DBconnect.getConn());
								List<specialist> list  =dao.getAllSpecialist();
								
								for(specialist s:list){	%>
									<option><%=s.getSpecialistName() %></option>

									<% 
								}
								%>



								</select>
							</div>
							<div class="mb-3">
								<label class="form-label">email</label> <input type="email"
									required="required" name="email" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Mob No</label> <input type="text"
									required="required" name="mobile" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">password</label> <input type="text"
									required="required" name="password" class="form-control">
							</div>
							<button type="submit" class="btn btn-primary">Submit</button>


						</form>


					</div>
				</div>
			</div>

			<div class="col-md-8">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Doctor Details</p>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">DOB</th>
									<th scope="col">Qualification</th>
									<th scope="col">Specialist</th>
									<th scope="col">Email</th>
									<th scope="col">Mob No</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<%
							DoctorDao dao2=new DoctorDao(DBconnect.getConn());
							List<Doctor> list2=dao2.getAllDoctor();
							
							for(Doctor d:list2){%>

								<tr>
									<td><%=d.getFullname() %></td>
									<td><%=d.getDob() %></td>
									<td><%=d.getQualification() %></td>
									<td><%=d.getSpecialist() %></td>
									<td><%=d.getEmail() %></td>
									<td><%=d.getMobile() %></td>
									<td>
									<a href="edit_doctor.jsp?id=<%=d.getId() %>" class="btn btn-small btn-primary">Edit</a>
									<a href="../delete_doctor?id=<%=d.getId() %>" class="btn btn-small btn-danger">Delete</a>
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
<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
		
	</script>
</body>
</html>