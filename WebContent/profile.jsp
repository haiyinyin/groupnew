<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	  <%@ page import="java.util.*"%>
	  <%@page import="model.stuInfo"%>
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
    <p> <%
     List stus=(List)session.getAttribute("stu");
     Iterator iter = stus.iterator();
    int i = 0;
    while (iter.hasNext()) {
      stuInfo stu = (stuInfo) iter.next();%>
  
  id:<%=stu.getStu_id()%></br> name:<%=stu.getName()%></br> gender:<%
    if (stu.getGender() == 1)
        out.print("female");
      else
        out.print("male");
  %></br>
  major:<%=stu.getMajor()%></br> grade:<%=stu.getGrade()%></br> mark:<%=stu.getRemark()%></br>


  <%
    }
  %>
     </p>
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