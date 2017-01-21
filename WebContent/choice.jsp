<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="controler.studentService" %>
    
    <%@ page import="java.util.*" %>
        <%@page import="model.choice" %>
         
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
          <p><form action="queryStu" method="post" ><input type="submit" value="profile"></form></p>
     <p>
								<form action="queryAllUni" method="post">
								<input type="submit" value="university">
							</form>
							</p>
      <p>
								<form action="queryChoice" method="post">
								<input type="submit" value="choice">
							</form>
							</p>
     
      
    </div>
    <div class="col-sm-8 text-left"> 
   
     
 <%
 
 choice cho=(choice)session.getAttribute("choice");


 %>

id:<%=cho.getStu_id()%></br> 
name:<%=cho.getName()%></br> 
choice1:<%=cho.getChoice1()%></br> 
choice2:<%=cho.getChoice2()%></br> 
choice3:<%=cho.getChoice3()%></br>
  

</p>
    </div>
    <div class="col-sm-2 sidenav">
      
    </div>
  </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>