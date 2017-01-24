<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="controler.studentService" %>
    
    <%@ page import="java.util.*" %>
        <%@page import="model.choice" %>
        <%@page import="model.university" %>
         
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
								 List unis=(List)session.getAttribute("unis");
									Iterator iter = unis.iterator();
								%>
							
							<table class="table table-bordered table-striped" style="width:100%;">
								<tr>
									<td>number</td>
									<td>name</td>
									<td>first</td>
									<td>second</td>
									<td>third</td>
									<form action="upadateCho" method="post">
										<%
											int i = 0;
											while (iter.hasNext()) {
												university univ = (university) iter.next();
										%>
										<tr>
											<td><%=univ.getU_id()%></td>
											
											
               
											<td>
												<%=univ.getU_name()%></td>
                                                
											<td><input type="radio" value="<%=univ.getU_name()%>"
												name="choice1"></td>
											<td><input type="radio" value="<%=univ.getU_name()%>"
												name="choice2"></td>
											<td><input type="radio" value="<%=univ.getU_name()%>"
												name="choice3"></td>
										</tr>

										<%
											i++;

											}
										%>
									
							</table>
							<input type="submit">
							</form>
						  
							
	
    
   </br>
   </br>
     
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
