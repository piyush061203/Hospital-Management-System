  <%@include file="../css.jsp" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg bg-success navbar-dark md-2">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"><i class="fa-solid fa-hospital"></i>
			MedAxis</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse fs-5" id="navbarSupportedContent">

			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="home.jsp" class="fa-solid fa-user-tie"></i>
						Home</a></li>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="appointment.jsp"><i
						class="fa-solid fa-user-doctor"></i> Patient</a></li>
			</ul>

			<form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-light dropdown-toggle" type="button"
					
						data-bs-toggle="dropdown">${docObj.fullname }</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="pofile.jsp">Edit</a></li>
						<li><a class="dropdown-item" href="../doctor_logout">Logout</a></li>

					</ul>
				</div>
			</form>

		</div>
	</div>
</nav>

<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
		
	</script>