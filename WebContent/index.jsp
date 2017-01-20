<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel ="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<form action="loginServlet" method="post" >
user name:<input type="text" name="name"><br/>
password:<input type="password" name="password"><br/>
identity:<input type="radio" name="identity" checked value="stu">student&nbsp;&nbsp; 
        <input type="radio" name="identity" value="admin">administrator<br/>


<input type="submit" ><br/>
</form>
</body>
</html>