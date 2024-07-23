<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@page isELIgnored="false" %>

<nav class="navbar navbar-expand-lg bg-success navbar-dark md-2">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><i class="fa-solid fa-hospital"></i> MedAxis</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse fs-5" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
      
      <c:if test="${empty userObj }">
      <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="admin_login.jsp"><i class="fa-solid fa-user-tie"></i> Admin</a>
        </li>
       <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="doctor_login.jsp"><i class="fa-solid fa-user-doctor"></i> Doctor</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#"><i class="fa-solid fa-calendar-check"></i> Appointment</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_login.jsp"><i class="fa-solid fa-user"></i> User</a>
        </li>
      
      
      </c:if>
       
       
        
       
        <c:if test="${not empty userObj }">
            <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_appointment.jsp"><i class="fa-solid fa-user-doctor"></i> Appointment</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="doctor_login.jsp"><i class="fa-solid fa-user-doctor"></i> View Appointment</a>
        </li>
        <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
    ${userObj.fullname }
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="user_logout">Logout</a></li>
    <li><a class="dropdown-item" href="#">Password Change</a></li>
 
  </ul>
</div>
        </c:if>
        
       
      </ul>
      
    </div>
  </div>
</nav>