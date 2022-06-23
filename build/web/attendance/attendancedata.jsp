

  <%@page import="java.sql.*" %>
 <% Class.forName("com.mysql.jdbc.Driver");%> 
   
 
 <%
  String studentid = request.getParameter("id");
  String studentname = request.getParameter("studentname"); 
   String attendance = request.getParameter("attendane"); 

Connection con;
PreparedStatement pst;
Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud","root","");
 pst =con.prepareStatement("update attendance set studentname=?,attendance=? where id=?");
pst.setString(1, studentid);
pst.setString(2, studentname );
pst.setString(3, attendance);
pst.executeUpdate();
out.println("<h1>record updated successfully</h1>");
     %>