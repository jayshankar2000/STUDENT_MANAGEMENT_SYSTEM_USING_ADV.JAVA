<%-- 
    Document   : course
    Created on : Apr 25, 2022, 11:38:31 PM
    Author     : DELL
--%>
<%@page import="java.sql.*" %>
 <% Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../bootstrap-5.1.3-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
       
        <link href="../bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
     <title>JSP Page</title>
    </head>
    <body style='background-color:lightsteelblue'>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#" style="color:brown">student Management system </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
     <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="http://localhost:8080/jspstud/main.jsp" style="color:lightcoral">Home <span class="sr-only"></span></a>
        
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="http://localhost:8080/jspstud/course/course.jsp" style="color:lawngreen">Course</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="http://localhost:8080/jspstud/batch/batch.jsp" style="color:lightsalmon">Batch</a>
        
        
        
      </li>
      <li class="nav-item">
        <a class="nav-link" href="http://localhost:8080/jspstud/student/student.jsp" style="color:lightskyblue">Student</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="http://localhost:8080/jspstud/attendance/attendance.jsp" style="color:lightpink">Attendance</a>
      </li>
      
    </ul>
  </div>
</nav>
        
        
        <h1 style='color:lime'>Course</h1>
        <div class="row">
            <div class="col-sm-4" style='color:black'>
                <form method="post" align="left" action="add.jsp">
                    <div>
                        <label class="form-label">Course Name</label>
                        <input type="text" id="name" name="name" placeholder="CourseNmae"
                               class="form-control"required>
                    </div>
                    <div>
                        <label class="form-label">Duration</label>
                        <input type="text" id="duration" name="duration" placeholder="Duration"
                               class="form-control"required>
                    </div>
                    <div>
                        <label class="form-label">Fee</label>
                        <input type="text" id="fee" name="fee" placeholder="Fee"
                               class="form-control"required>
                    </div>
                    <br>
                    <div>
                        <input type="submit" name="submit" class="btn btn-info" value="submit">
                        <input type="reset" name="reset" class="btn btn-warning" value="reset">
                               
                    </div>
                </form>
                    
                
        </div>
            <div class="col-sm-8">
                 <div class="panel-body">
                     <table id="tbl-course" class="table-response table-bordered" callpadding="0" width="80%">
                         <thead style="color:green">  
                             <tr>
                                 <th>Course Name</th>
                                 <th>Duration</th><!-- comment -->
                                 <th>Fee</th>
                                  <th>Edit</th><!-- comment -->
                                  <th>Delete</th>
                                  
                             </tr>
                         <tbody>
                             <% 
                             Connection con;
                            PreparedStatement pst;
                             ResultSet rs;
                          Class.forName("com.mysql.jdbc.Driver");
                         con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud","root","");
                            String query = "select * from course";
                            Statement st = con.createStatement();
                            rs=st.executeQuery(query);
                            while(rs.next())
                            {
                              String id = rs.getString("id");
                             
                             
                             %>
                             <tr>
                                 <td><%=rs.getString("coursename")%></td> 
                                 <td><%=rs.getString("duration")%></td> 
                                  <td><%=rs.getString("fee")%></td> 
                                 <td><a href="courseupdate.jsp?id=<%=id %>">Edit</a></td>
                                 <td><a href="coursedelete.jsp?id=<%=id %>">Delete</a></td>
                             </tr
                             
                             <% } %>
                             
                         </tbody>
                      
                         </table>
                    
                     
                     
                 </div>  
                 
                 
                 
                 
                 
             </div>
             </div>
            
    </body>
</html>