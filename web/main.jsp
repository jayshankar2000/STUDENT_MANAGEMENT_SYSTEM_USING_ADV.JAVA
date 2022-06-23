<%-- 
    Document   : main
    Created on : Apr 25, 2022, 11:09:45 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
       <link href="bootstrap-5.1.3-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
       <link href="bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
       <title>JSP Page</title>
    </head>
    <body style='background-color:lightcyan'>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#" style="color:brown">student Management system </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="main.jsp" style="color:lightcoral">Home <span class="sr-only"></span></a>
        
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="course/course.jsp" style="color:lawngreen">Course</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="batch/batch.jsp" style="color:lightsalmon">Batch</a>
        
        
        
      </li>
      <li class="nav-item">
        <a class="nav-link" href="student/student.jsp" style="color:lightskyblue">Student</a>
      </li>
     
      <li class="nav-item">
        <a class="nav-link" href="attendance/attendance.jsp" style="color:lightpink">Attendance</a>
      </li>
      
      
    </ul>
  </div>
</nav>
        <h1 style="color:lawngreen">Welcome To Student management System</h1>
        <img src="image/s1.png" alt=""/>
    </body>
</html>
