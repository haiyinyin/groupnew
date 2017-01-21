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
								List unis=(List)session.getAttribute("unis");
									Iterator iter = unis.iterator();
								%>
							
							<table>
								<tr>
									<td>number</td>
									<td>name</td>
								</tr>
										<%
											int i = 0;
											while (iter.hasNext()) {
												university univ = (university) iter.next();
										%>
										<tr>
											<td><%=univ.getU_id()%></td>
											
										   <td><%=univ.getU_name()%></td>
										   
										   <form action="modify" method="post"><td><input type="submit" value="modify">
										   <input type="hidden" value=<%=univ.getU_id() %> name="uid"></td></form>
										<form action="delete" method="post"><td><input type="submit" value="delete">
										<input type="hidden" value=<%=univ.getU_id() %> name="uid"></td></form>	
                                                
											
										</tr>

										<%
											i++;

											}
										%>
									
							</table>
							</br>
							<p><form action="addUni.jsp" method="post"><input type="submit" value="add"></form></p>
						  
							
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