<%
  String username = request.getParameter("uname");  
  String password = request.getParameter("password");  
   if(username.equals("jayshankar")&& password.equals("123"))
   {
       String redirect = "main.jsp";
       response.sendRedirect(redirect);
  }
  else
  {
  out.println("<h1 style='color:red'>username or password do notmatch</h1> ");
}



    %>