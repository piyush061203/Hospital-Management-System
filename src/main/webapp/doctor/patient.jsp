<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.entity.Doctor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="../css.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../css.jsp"%>
</head>
<body>
	<c:if test="${empty docObj }">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>
	<%@include file="navbar.jsp"%>

	<div class="container p-3">
		<div class="row">
			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-3">Patient Details</p>

						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errMsg }">
							<p class="text-center text-danger">${errMsg}</p>
							<c:remove var="errMsg" scope="session" />
						</c:if>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appointment Date</th>
									<th scope="col">Email</th>
									<th scope="col">Mobile Number</th>
									<th scope="col">Diseases</th>
									<th scope="col">Status</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
							<%
							Doctor d=(Doctor)session.getAttribute("doctObj");
							AppointmentDao dao=new AppointmentDao(DBconnect.getConn());
							
							
							List<Appointment> list=dao.getAllAppointmentByDoctorLogin(d.getId());
							for(Appointment ap:list){
							
							%>
								
								<tr>
									<td><%=ap.getFullname() %></td>
									<td><%=ap.getGender() %></td>
									<td><%=ap.getAge() %></td>
									<td><%=ap.getAppointment() %></td>
									<td><%=ap.getEmail() %></td>
									<td><%=ap.getPhone() %></td>
									<td><%=ap.getDiseases() %></td>
									<td><%=ap.getStatus() %></td>
									<td>
									<a href="#" class="btn btn-sm btn-success">Comment</a>
									
									</td>
									
								</tr>
								<%} %>
								
							
							
								
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>





</body>
</html>