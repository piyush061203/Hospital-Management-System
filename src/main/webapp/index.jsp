<%@page import="com.db.DBconnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>index page</title>
<%@include file="css.jsp"%>
</head>
<body>
	<%@include file="component/navbar.jsp"%>


	<div id="carouselExampleInterval" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active" data-bs-interval="10000">
				<img src="img/img1.jpg" class="d-block w-100" alt="..."
					height="600ps">
			</div>
			<div class="carousel-item active" data-bs-interval="10000">
				<img src="img/img2.jpg" class="d-block w-100" alt="..."
					height="600px">
			</div>
			<div class="carousel-item active" data-bs-interval="10000">
				<img src="img/img3.jpg" class="d-block w-100" alt="..."
					height="600px">
			</div>
			<div class="carousel-item active" data-bs-interval="10000">
				<img src="img/img4.jpg" class="d-block w-100" alt="..."
					height="600px">
			</div>
			<div class="carousel-item active" data-bs-interval="10000">
				<img src="img/img5.jpg" class="d-block w-100" alt="..."
					height="600px">
			</div>

		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleInterval" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<hr>
	<div class="container">
		<p class="text-center fs-2">Our Team</p>
		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img alt="" src="img/doct1.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Samuani Simi</p>
						<p class="fs-7">(Ceo & Chairman)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img alt="" src="img/doct2.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Samuani Simi</p>
						<p class="fs-7">(Ceo & Chairman)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img alt="" src="img/doct3.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Samuani Simi</p>
						<p class="fs-7">(Ceo & Chairman)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img alt="" src="img/doct4.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Samuani Simi</p>
						<p class="fs-7">(Ceo & Chairman)</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<br>

<%@include file="footer.jsp" %>








	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
		
	</script>
</body>
</html>