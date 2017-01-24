<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.studentTable"%>
<%@page import="controler.studentService"%>
<%@page import="model.stuInfo"%>
<%@page import="model.university"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Log in</title>
<link rel="stylesheet" type="text/css" href="style.css" />

</head>
<body>
	<div id="container">

		<div id="header">
			<jsp:include page="header.jsp"></jsp:include>
		</div>


<br /><br />
						
						
<!-- Connexion -->


      <div class="col-md-12">
        <div class="well well-sm">
          <form class="form-horizontal" action="loginServlet" method="post">
          <fieldset>
            <legend class="text-center">Log in</legend>

            <!-- Name input-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="name">Nom d'utilisateur</label>
              <div class="col-md-9">
                <input id="name" name="name" type="text" placeholder="Login" class="form-control">
              </div>
            </div>

            <!-- Password input-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="pass">Mot de passe</label>
              <div class="col-md-9">
                <input id="pass" name="password" type="password" placeholder="Password" class="form-control">
              </div>
            </div>
            
  
            <!-- Password input-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="identity">Identity</label>
              <div class="col-md-9">
                <input type="radio" name="identity" checked value="stu">&nbsp;&nbsp;&nbsp;&nbsp;Student&nbsp;&nbsp; &nbsp;&nbsp;
        <input type="radio" name="identity" value="admin">&nbsp;&nbsp;&nbsp;&nbsp;Administrator<br/>
              </div>
            </div>  
            

            <!-- Form actions -->
            <div class="form-group">
              <div class="col-md-12 text-right">
                <button type="submit" class="btn btn-primary btn-lg">Connexion</button>
              </div>
            </div>
          </fieldset>
          </form>








						</div>
						
						</div>

</div>

<br /><br />

		<jsp:include page="footer.jsp"></jsp:include>



	



</body>
</html>
