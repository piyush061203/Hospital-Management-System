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
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 3);
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<c:if test="${not empty succMsg }">
		<p class="text-center text-success fs-3">${succMsg}</p>
		<c:remove var="succMsg" scope="session" />
	</c:if>

	<c:if test="${not empty errMsg }">
		<p class="text-center text-danger">${errMsg}</p>
		<c:remove var="errMsg" scope="session" />
	</c:if>

	<c:if test="${empty adminobj }">
		<c:redirect url="../admin_login.jsp"></c:redirect>
	</c:if>

	<div class="container p-4">
		<p class="text-center fs-3">Admin DashBoard</p>
		<div class="row ">
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-md fa-3x"></i><br>
						<p class="fs-4 text-center">
							Docter <br>5
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-circle fa-3x"></i><br>
						<p class="fs-4 text-center">
							User <br>5
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-4 ">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="far fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
							Total Appointment <br>5
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-4 mt-2 ">
				<div class="card paint-card" data-bs-toggle="modal"
					data-bs-target="#exampleModal">
					<div class="card-body text-center text-success ">
						<i class="fas fa-user-md fa-3x"></i><br>
						<p class="fs-4 text-center">
							specialist <br>5
						</p>
					</div>
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
					<h1 class="modal-title fs-5" id="exampleModalLabel">Modal
						title</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="../add_specialist" method="post">
						<div class="form-group">
							<label>Enter Specialist Name</label> <input type="text"
								name="specname" class="form-control">
						</div>
						<button type="submit" class=" text-center btn btn-success mt-2">Add</button>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>

				</div>
			</div>
		</div>
	</div>



	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
		
	</script>
</body>
</html>