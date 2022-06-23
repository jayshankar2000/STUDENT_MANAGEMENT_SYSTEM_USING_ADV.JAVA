

  <%@page import="java.sql.*" %>
 <% Class.forName("com.mysql.jdbc.Driver");%> 
   
 
 <%
  String studentname = request.getParameter("sname"); 
   String course = request.getParameter("course");
   String batch = request.getParameter("batch");
   String address = request.getParameter("address");
   String email = request.getParameter("email");
   String phone = request.getParameter("phone");

Connection con;
PreparedStatement pst;
Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud","root","");
 pst =con.prepareStatement("insert into student(studname,course,batch,address,email,phone)values(?,?,?,?,?,?)");
pst.setString(1, studentname);
pst.setString(2, course);
pst.setString(3, batch );
pst.setString(4, address);
pst.setString(5, email);
pst.setString(6, phone);


pst.executeUpdate();
out.println("<h1 style='color:red'>record Added successfully</h1>");
 

     %>
     