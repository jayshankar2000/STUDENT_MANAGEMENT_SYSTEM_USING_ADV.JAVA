<%-- 
    Document   : course
    Created on : Apr 25, 2022, 11:38:31 PM
    Author     : DELL
--%>
<%@page import="java.sql.*" %>
 <% Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%
                                 Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
  
 %>
<!DOCTYPE html>
<html>
    <head >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../bootstrap-5.1.3-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
       
        <link href="../bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
     <title>JSP Page</title>
    </head>
    <body style='background-color: lightgoldenrodyellow'>
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
        
        
        <h1>Student Registration</h1>
        <div class="row">
            <div class="col-sm-4">
                <form method="post" align = "left" action="add.jsp">
                    <div>
                        <label class="form-label">Student Name</label>
                        <input type="text" id="sname" name="sname" placeholder="Student Name"
                               class="form-control"required>
                    </div>
                    <div>
                        <label class="form-label">Course</label>
                        <select name="course" id="course" class="form-control">
                            <%
                               
                                 Class.forName("com.mysql.jdbc.Driver");
                                  con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud","root",""); 
                                  String query="select*from course";
                                  Statement st = con.createStatement();
                                   rs = st. executeQuery(query);
                                   while(rs.next())
                                   {
                                           String id = rs.getString("id");
                                           String coursename = rs.getString("coursename");
                                            %>
                                   
                                             <option value="<%=id %>"><%= coursename %> </option>
                     
                                           <%
                                   
                                        }            

                                   %>
                            
                            
                            
                            
                            <option>course</option>                       
                        </select>
                    </div>
                    <div>
                        <label class="form-label">Batch</label>
                        <select name="batch" id="batch" class="form-control">
                            <%
                               
                                 Class.forName("com.mysql.jdbc.Driver");
                                  con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud","root",""); 
                                  String query1="select*from batch";
                                  Statement st1 = con.createStatement();
                                   rs = st. executeQuery(query1);
                                   while(rs.next())
                                   {
                                           String id = rs.getString("id");
                                           String batchname = rs.getString("batchname");
                                            %>
                                   
                                             <option value="<%=id %>"><%= batchname %> </option>
                     
                                           <%
                                   
                                        }            

                                   %>
                   
                                                   
                        
                        </select>
                    </div>
                    <div>
                        <label class="form-label">Address</label>
                        <input type="text" id="address" name="address" placeholder="Address"
                               class="form-control"required>
                    </div>
                    <div>
                        <label class="form-label">Email</label>
                        <input type="text" id="email" name="email" placeholder="Email"
                               class="form-control"required>
                    </div>
                    <div>
                        <label class="form-label">Phone</label>
                        <input type="text" id="phone" name="phone" placeholder="Phone"
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
                         <thead>  
                             <tr>
                                 <th>Student Name</th>
                                 <th>Course</th><!-- comment -->
                                 <th>Batch</th><!-- comment -->
                                  <th>Address</th>
                                  <th>email</th>
                                   <th>phone</th>
                                   <th>Edit</th>
                                   <th>Delete</th>
                                  
                                  
                             </tr>
                         <tbody>
                             <% 
                             
                          Class.forName("com.mysql.jdbc.Driver");
                         con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud","root","");
                            String query2 = "select s.id,s.studname,c.coursename,b.batchname,s.address,s.email,s.phone from student s JOIN course c on s.course = c.id JOIN batch b ON s.batch = b.id";
                            Statement st2 = con.createStatement();
                            rs=st.executeQuery(query2);
                            while(rs.next())
                            {
                              String id = rs.getString("s.id");
                             
                            
                             %>
                            
                             <tr>
                                 <td><%=rs.getString("s.studname")%></td> 
                                 <td><%=rs.getString("c.coursename")%></td> 
                                 <td><%=rs.getString("b.batchname")%></td> 
                                 <td><%=rs.getString("s.address")%></td>
                                 <td><%=rs.getString("s.email")%></td> 
                                 <td><%=rs.getString("s.phone")%></td> 
                                 <td><a href="studentupdate.jsp?id=<%=id %>">Edit</a></td>
                                 <td><a href="studentdelete.jsp?id=<%=id %>">Delete</a></td>
                             </tr
                             
                                        <% } %>
                             
                         </tbody>
                      
                         </table>
                    
                     
                     
                 </div>  
                 
                 
                 
                 
                 
             </div>
             </div>
            
    </body>
</html>
