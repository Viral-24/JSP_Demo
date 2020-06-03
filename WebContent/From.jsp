<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body align="center">
<form action="Page-Response.jsp">
<br/><br/>
First Name:<input type="text" name="firstname" placeholder="Enter First Name">
<br/><br/>
Last Name:<input type="text" name="lastname" placeholder="Enter Last Name">
<br/><br/>

Select the Country:<select name="Country">
<option>American</option>
<option>Brazil</option>
<option>France</option>
<option>Germany</option>
<option>Indian</option>
<option>Turkey</option>
</select>
	<br/><br/>
	
The Programming Language You want to Learn:
<br>
<input type="checkbox" name="languagePro" value="C"> C
<input type="checkbox" name="languagePro" value="C++"> C++
<input type="checkbox" name="languagePro" value="Java"> Java
<input type="checkbox" name="languagePro" value="PHP"> PHp

<br/><br/>
	<input type="Submit" value="Submit">
</form>
</body>
</body>
</html>