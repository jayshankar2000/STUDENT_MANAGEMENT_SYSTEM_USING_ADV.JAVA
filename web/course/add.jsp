

  <%@page import="java.sql.*" %>
 <% Class.forName("com.mysql.jdbc.Driver");%> 
   
 
 <%
  String coursename = request.getParameter("name"); 
   String duration = request.getParameter("duration"); 
   String fee = request.getParameter("fee");

Connection con;
PreparedStatement pst;
Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud","root","");
 pst =con.prepareStatement("insert into course(coursename,duration,fee)values(?,?,?)");
pst.setString(1, coursename);
pst.setString(2, duration);
pst.setString(3, fee);
pst.executeUpdate();
out.println("<h1 style='color:red'>Record Added successfully</h1>");
     %>
     