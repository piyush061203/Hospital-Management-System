<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="../css.jsp" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../css.jsp" %>
</head>
<body>
<c:if test="${empty docObj }">
<c:redirect url="../doctor_login.jsp"></c:redirect>
</c:if>
<%@include file="navbar.jsp" %>

<p class="text-center fs-3">Doctor Dashboard</p>
<div class="container p-5">
<div class="row">
<div class="col-md-4 offset-md-2">
<div class="card paint-card">
<div class="card-body text-center text-success">
<i class="fas fa-user-md fa-3x"></i><br>
<p class="fs-4 text-center">Doctor <br>12</p>
</div>
</div>
</div>

<div class="col-md-4">
<div class="card paint-card">
<div class="card-body text-center text-success">
<i class="fas fa-calendar-check fa-3x"></i><br>
<p class="fs-4 text-center">Total Appointment <br>12</p>
</div>
</div>
</div>
</div>
</div>



</body>
</html>