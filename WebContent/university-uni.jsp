<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="controler.studentService"%>
<%@page import="model.university"%>
<%@page import="model.studentTable"%>
<%@page import="controler.studentService"%>
<%@page import="model.comment"%>

<%@ page import="java.util.*"%>
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
			<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
       <p>
							<form action="queryStu" method="post">
								<input type="submit" value="profile">
							</form>
							</p>
							<p>
								<form action="queryAllUni" method="post">
								<input type="submit" value="profile">
							</form>
							</p>
							<p>
								<form action="queryChoice" method="post">
								<input type="submit" value="choice">
							</form>
							</p>

      
    </div>
    <div class="col-sm-8 text-left"> 
      
     
      <h3></h3>
      <p>
     
      
      <%
					
					
					university uni=(university) session.getAttribute("uni");
					//out.print(uni.getU_name()); 
				%>
				
				number:<%out.print(uni.getU_id()); %> <input type="hidden" name="u_id" value=<%=uni.getU_id() %>></br>
				university:<%=uni.getU_name() %></br>
				Country:<%=uni.getCountry() %></br>
				City:<%=uni.getCity() %></br>
				Major:<%=uni.getMajor() %></br>
				Time:<%=uni.getTime() %></br>
			</p>
			<h2>comment</h2>
			<div>
			<%
								
									List coms = (List) session.getAttribute("comm");
									Iterator iter = coms.iterator();
								%>
							
							<table>
								<tr>
									
									<td>comment</td>
									<td>remarker</td>
									<td>time</td>
									<%
										int i = 0;
										while (iter.hasNext()) {
											comment comm = (comment) iter.next();
									%>
								
								<tr>
									
									<td><%=comm.getComment()%></td>
									<td><%=comm.getStu_name()%></td>
									<td><%=comm.getTime()%></td>


								</tr>
								<%
									i++;

									}
								%>
							</table>
			</div>
			
			<h2>add</h2>
			<form method="post" action="comment_result.jsp">
								comment:<input type="text" style="width: 300px; height: 80px;" name="comment">
								<input type="hidden" name="id" value=<%=uni.getU_id() %> >
								<input type="submit">
							</form>
			
    <div class="col-sm-2 sidenav">
      
    </div>
  </div>
</div>

		</div>

		<div id="footer"><jsp:include page="footer.jsp"></jsp:include></div>



	</div>
</body>
</html>