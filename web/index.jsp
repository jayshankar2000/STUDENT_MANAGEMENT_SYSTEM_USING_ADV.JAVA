<%-- 
    Document   : login
    Created on : Apr 25, 2022, 9:32:15 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
   
    <head  >
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
         <link href="bootstrap-5.1.3-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>login</title>
    </head>
    <body style='background-color: lightpink'>
        
        <h1 style="color:greenyellow">Admin Login</h1>
        <div class="row">
            <div class="row">
                <div class="col-sm-4">
                    <form method="post" action="loginv.jsp">
                        <div align="left">
                            <label class="form-label">Username</label>
                            <input type="text" id="uname" name="uname"class="form-control" placeholder="Username" size="30px" required>
                       
                        </div>
                        <div align="left">
                            <label class="form-label">Password</label>
                            <input type = "password" id="password" name = "password" class = "form-control" placeholder="Password" size="30px" required>
                       
                        </div><br><!-- comment -->
                        <div align="left">
                             <input type="submit" id="submit" name="submit" value="submit"class="btn btn-info">
                            <input type="reset" id="reset" name="reset" value="reset" class="btn btn-warning">
                       
                        </div>
                    </form>
                    
                </div>
                <div class="col-sm-8">
                    <img src="image/s1.png" alt=""/>
                    
                </div>
            
        </div>
    </body>
</html>
