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
    </head >
    <body style='background-color: linen'>
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
       
        <h1>student update</h1>
        <div class="row">
            <div class="col-sm-4">
                
                <form method="post" action="studentdata.jsp">
                    <% 
                             Connection con;
                            PreparedStatement pst;
                             ResultSet rs;
                          Class.forName("com.mysql.jdbc.Driver");
                         con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud","root","");
                           String id = request.getParameter("id");
                         pst = con.prepareStatement("select * from student where id = ?");
                            pst.setString(1,id);
                            rs = pst.executeQuery();
                            while(rs.next())
                            {
                            
                        
                             
                             %>
                    
                    <div>
                        <label class="form-label">Student Name</label>
                        <input type="text" id="id" name="id" placeholder="Studentname"
                                class="form-control" value= "<%=rs.getString("id")%>" required>
                    </div>
                    <div>
                        <label class="form-label">course</label>
                        <input type="text" id="cname" name="cname" placeholder="CourseName"
                               class="form-control" value= "<%=rs.getString("course")%>" required>
                        
                    </div>
                    <div>
                        <label class="form-label">Batch</label>
                        <input type="text" id="batch" name="batch" placeholder="Batch"
                               class="form-control" value= "<%=rs.getString("batch")%>" required>
                    </div>
                    <div>
                        <label class="form-label">Address</label>
                        <input type="text" id="address" name="batch" placeholder="Address"
                               class="form-control" value= "<%=rs.getString("address")%>" required>
                    </div><!-- comment -->
                    <div>
                        <label class="form-label">Email</label>
                        <input type="text" id="eamil" name="email" placeholder="Email"
                               class="form-control" value= "<%=rs.getString("email")%>" required>
                    </div>
                    <div>
                        <label class="form-label">phone</label>
                        <input type="text" id="phone" name="phone" placeholder="Phone"
                               class="form-control" value= "<%=rs.getString("phone")%>" required>
                    </div>
                    <br>
                    <div>
                        <input type="submit" name="submit" class="btn btn-info" value="submit">
                       <input type="reset" name="reset" class="btn btn-warning" value="reset">

                    </div>
                    <% } %>
                </form>
                    
                
        </div>
             <div class="col-sm-8">
                 
                 
                 
                 
                 
             </div>
             </div>
            
    </body>
</html>
