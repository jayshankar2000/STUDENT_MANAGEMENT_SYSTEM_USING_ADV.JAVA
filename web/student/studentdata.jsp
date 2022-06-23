

  <%@page import="java.sql.*" %>
 <% Class.forName("com.mysql.jdbc.Driver");%> 
   
 
 <%
  String studentid = request.getParameter("id");
  String studname = request.getParameter("sname"); 
   String course = request.getParameter("course"); 
   String batch = request.getParameter("batch"); 
   String address= request.getParameter("address"); 
   String email = request.getParameter("email"); 
   String phone = request.getParameter("phone"); 

Connection con;
PreparedStatement pst;
Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud","root","");
 pst =con.prepareStatement("update student set  studname=?,course=?,batch=?,address=?,email=?,phone=? where id=?");
pst.setString(1, studentid );
pst.setString(2, studname );
pst.setString(3, course);
pst.setString(4, batch);
pst.setString(5, address);
pst.setString(6, email);
pst.setString(7, phone);
pst.executeUpdate();
out.println("<h1>record updated successfully</h1>");
     %>