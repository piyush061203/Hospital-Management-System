<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="css.jsp"%>
</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
					<p class="text-center fs-3">Admin Login</p>
					
					<c:if test="${not empty succMsg }">
					<p class="text-center text-success">${succMsg}</p>
					<c:remove var="succMsg" scope="session"/>
					</c:if>
					
					<c:if test="${not empty errMsg }">
					<p class="text-center text-danger">${errMsg}</p>
					<c:remove var="errMsg" scope="session"/>
					</c:if>
					
						<form action="admin_login" method="post">
							<div class="mb-3">
								<label  class="form-label">Email</label> 
									<input required="required" type="email" name="email" class="form-control">
							</div>
							<div class="mb-3">
								<label  class="form-label">Password</label> 
									<input required="required" type="password" name="password" class="form-control">
							</div>
							
							<button type="submit" class="btn bg-custom btn-success col-md-12">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>