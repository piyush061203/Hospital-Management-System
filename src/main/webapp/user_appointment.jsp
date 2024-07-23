<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

.backImg {
	background: linear-gradient(rgba(0, 0, 0, 0.4) rgba(0, 0, 0, 0.4)),
		url("img/hospital.jpg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<div class="container-fluid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>

	<div class="container p-3">
		<div class="row">
		<div class="col-md-6 p-5">
		<img alt="" src="img/doct1.jpg" height="60%" width="80%" >
		</div>
		
			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-3">User Appointment</p>


						<c:if test="${not empty succMsg }">
							<p class="text-center text-success fs-3">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errMsg }">
							<p class="text-center text-danger">${errMsg}</p>
							<c:remove var="errMsg" scope="session" />
						</c:if>
                         <form action="" class="row g-3" method="post">
                          <input type="hidden" name="userid" value="${userObj.id }">
                          
                          <div class="col-md-6">
                          <label class="form-label">Full Name</label>
                          <input type="text" class="form-control" name="fullname">
                          </div>
                          <div class="col-md-6">
                          <label class="form-label">Gender</label>
                          <select class="form-control" name="gender">
                          <option>Male</option>
                          <option>Female</option>
                          </select>
                          </div>
                          <div class="col-md-6">
                          <label class="form-label">Age</label>
                          <input type="number" class="form-control" name="age">
                          </div>
                          <div class="col-md-6">
                          <label class="form-label">Appointment Date</label>
                          <input type="date" class="form-control" name="appointmentdate">
                          </div>
                          <div class="col-md-6">
                          <label class="form-label">Email</label>
                          <input type="email" class="form-control" name="email">
                          </div>
                          <div class="col-md-6">
                          <label class="form-label">Phone Number</label>
                          <input type="number" class="form-control" name="phone">
                          </div>
                          <div class="col-md-6">
                          <label class="form-label">Diseases</label>
                          <input type="text" class="form-control" name="diseases">
                          </div>
                          <div class="col-md-6">
                          <label class="form-label">Doctor</label>
                          <select class="form-control" name="doctorid">
                          <option value="">--select--</option>
                          <%
                          DoctorDao dao=new DoctorDao(DBconnect.getConn());
                          List<Doctor> list=dao.getAllDoctor();
                          
                          for(Doctor d:list){ %>
                        	   <option value="<%=d.getId()%>"><%=d.getFullname() %> (<%=d.getSpecialist() %>)</option>
                         <% }
                          %> 
                         
                         
                          </select>
                          </div>
                          
                          <div class="col=md-12">
                          <label>Full Address</label>
                          <textarea class="form-control" name="address" rows="3" cols=""></textarea>
                          </div>
                          
                          <c:if test="${empty userObj }">
                          <a href="user_login.jsp" class="col-md-6 oddset-md-3 btn btn-success">Submit</a>
                          </c:if>
                          
                          <c:if test="${not empty userObj}">
                          <button class="col-md-6 offset-md-3 btn btn-success">Submit</button>
                          </c:if>
                         </form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>