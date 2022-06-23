

  <%@page import="java.sql.*" %>
 <% Class.forName("com.mysql.jdbc.Driver");%> 
   
 
 <%
  String studentname = request.getParameter("studentname"); 
   String attendance = request.getParameter("attendance"); 

Connection con;
PreparedStatement pst;
Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud","root","");
 pst =con.prepareStatement("insert into attendance(studentname,attendance)values(?,?)");
pst.setString(1,  studentname);
pst.setString(2,attendance );
pst.executeUpdate();
out.println("<h1 style='color:blue'>record Added successfully</h1>");
     %>
     