<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.studentTable"%>
<%@page import="controler.studentService"%>
<%@page import="model.stuInfo"%>
<%@page import="model.university"%>
<%@ page import="java.util.*"%>
<%@page import="model.choice"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css" />

</head>
<body>
	<div id="container">

		<div id="header">
			<jsp:include page="header.jsp"></jsp:include>
		</div>


		<div id="content">
			<div id="nav"></div>
			<div id="main">
				<div class="container-fluid text-center">
					<div class="row content">
						<div class="col-sm-2 sidenav">
							<p>
							<form action="queryChoiceAdmin" method="post">
								<input type="submit" value="check choice">
							</form>
							</p>
							<p>
								<form action="queryUniAdmin" method="post">
								<input type="submit" value="modify university">
							
							</form>
							</p>

						</div>
						<div class="col-sm-8 text-left">
						<p>
								
						
			<%
			 List choices=(List)session.getAttribute("choices");
				//out.print(choice.size());
				Iterator iter=choices.iterator();
				%>
				<table border="1">
				<tr><td>id</td><td>name</td><td>choice1</td><td>choice2</td><td>choice3</td></tr>
				<%
				int i=0;
				while(iter.hasNext()){
					choice cho=(choice)iter.next();
					%>
					<tr><td><%=cho.getStu_id() %></td>
					<td><%=cho.getName() %></td>
					<td><%=cho.getChoice1() %></td>
					<td><%=cho.getChoice2() %></td>
					<td><%=cho.getChoice3() %></td></tr>
					<% 
					i++;
				}
				%>
				</table>
						  
							
						</div>
						
						</p>
						</div>
						<div>
						
						
						</div>
					<div class="col-sm-2 sidenav"></div>
				</div>
			</div>
		</div>

		<div id="footer"><jsp:include page="footer.jsp"></jsp:include></div>



	</div>



</body>
</html>