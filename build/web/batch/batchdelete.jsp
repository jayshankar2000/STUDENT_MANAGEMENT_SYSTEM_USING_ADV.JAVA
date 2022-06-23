

  <%@page import="java.sql.*" %>
 <% Class.forName("com.mysql.jdbc.Driver");%> 
   
 
 <%
  String batchid = request.getParameter("id");
   

Connection con;
PreparedStatement pst;
Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud","root","");
 pst =con.prepareStatement("delete from batch where id = ?");

  pst.setString(1, batchid);
pst.executeUpdate();
out.println("<h1>record deleted successfully</h1>");
     %>
