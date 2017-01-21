<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="model.university"%>
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
     <%
					
					
					university uni=(university) session.getAttribute("uni");
					//out.print(uni.getU_name()); 
				%>
				
				<form action="updateUni" method="post">
				<input type="hidden" value=<%=uni.getU_id() %> name="uid">
				<p>university:<input type="text" value=<%=uni.getU_name() %> name="uname"></p>
				<p>country:<input type="text" value=<%=uni.getCountry() %> name="country"></p>
				<p>city:<input type="text" value=<%=uni.getCity() %> name="city"></p>
				<p>major:<input type="text" value=<%=uni.getMajor() %> name="major"></p>
				<p>time:<input type="text" value=<%=uni.getTime() %> name="time"></p>
				<input type="submit" value="modify">
				
      </form>
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