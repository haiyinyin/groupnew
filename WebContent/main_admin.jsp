<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />

</head>
<body>
	<div id="container">
	

		<div id="header">
			<jsp:include page="header.jsp"></jsp:include>
		</div>


		<div id="content">
			<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
        <p><form action="queryChoiceAdmin" method="post" ><input type="submit" value="check choice"></form></p>
        
     <p>
								<form action="queryUniAdmin" method="post">
								<input type="submit" value="modify university">
							</form>
							</p>
     
     
    </div>
    <div class="col-sm-8 text-left"> 
       <%  String name = (String) session.getAttribute("name");%>
      <h3>welcome,<%=name %></h3>
     
      
      <p></p>
    </div>
    <div class="col-sm-2 sidenav">
      
    </div>
  </div>
</div>

			
		</div>

		<div id="footer">
		<jsp:include page="footer.jsp"></jsp:include>
		</div>



	</div>

</body>
</html>