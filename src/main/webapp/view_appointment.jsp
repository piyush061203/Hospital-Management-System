<%@page import="com.entity.User"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.AppointmentDao"%>
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
<style type="text/css">
.paint-card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-9">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 fw-bold text-center text-success">Appointment
							List</p>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appointment Date</th>
									<th scope="col">Diseases</th>
									<th scope="col">Doctor Name</th>
									<th scope="col">Status</th>
								</tr>
							</thead>
							<tbody>
							<%
							User user=(User)session.getAttribute("userObj");
							AppointmentDao dao=new AppointmentDao(DBconnect.getConn());
							DoctorDao dao2=new DoctorDao(DBconnect.getConn());
							
							List<Appointment> list=dao.getAllAppointmentByLoginUser(user.getId());
							for(Appointment ap:list){
							Doctor d=dao2.getDoctorById(ap.getDoctorid());
							%>
								
								<tr>
									<td><%=ap.getFullname() %></td>
									<td><%=ap.getGender() %></td>
									<td><%=ap.getAge() %></td>
									<td><%=ap.getAppointment() %></td>
									<td><%=ap.getDiseases() %></td>
									<td><%=d.getFullname() %></td>
									<td><%
									if ("pending".equals(ap.getStatus())){%>
									<a href="#" class="btn btn-sm btn-warning"></a>
									<%}else{ %>	
									<%=ap.getStatus() %>
									<%} %>	
							
							
										</td>
								</tr>
								<%} %>
								
							
							
								
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col=md-3 p-3">
			<img alt="" src="img.doct2.jpg">
			</div>
		</div>

	</div>



</body>
</html>