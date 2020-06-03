<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
The Detail are :${param.firstname } ${param.lastname}
<br/><br/>
 country is ${param.Country}
 <br/><br/>
 The Language you want to Learn
 <ul>
 <%
 	String[] langs=request.getParameterValues("languagePro");
 
 	
 for(String templan:langs){
 		out.println("<li>"+ templan+"</li>");
 	}
 %>
 </ul>
</body>
</body>
</html>