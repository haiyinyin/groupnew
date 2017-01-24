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
							<form action="queryStu" method="post">
								<input type="submit" value="profile">
							</form>
							</p>
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
						
						<h1>List of Universities</h1>
						
						<div class="col-sm-10 text-left">
						<p>
								
								<%
								List unis=(List)session.getAttribute("unis");
									Iterator iter = unis.iterator();
								%>
							
							<table class="table table-bordered table-striped" style="width:100%;">
								<tr>
									<td class="info">#</td>
									<td class="info">Name of University</td>
								</tr>
										<%
											int i = 0;
											while (iter.hasNext()) {
												university univ = (university) iter.next();
										%>
										<tr>
											<td><%=univ.getU_id()%></td>
											<td><form action="universityUni" method="post"> 
											
               
											<input type="hidden" value="<%=univ.getU_id()%>" name="id">
												<input type="submit" value=<%=univ.getU_name()%>></form></td>
                                                
											
										</tr>

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
