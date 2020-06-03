<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body align="center">
	<c:set var="data" value="Hello to JSP Demo"></c:set>
		The String is "${data }"<br>
		<p> There are 16 Function is JSP fn</p><hr><br>
		Length of the String is <b>${data }</b>:${fn:length(data) }<br> <br><br>
		UpperCase String ${fn:toUpperCase(data) }<br><br>
		LowerCase String ${fn:toLowerCase(data) }<br><br>
		
		Is the String startswith the word Hello : ${data } answer=
		${fn:startsWith(data,"Hello") }<br><br>
		
		<c:if test="${fn:contains(data,'JSP') }">
			<p>Found the Word JSP</p>
		</c:if>
		
		<c:if test="${not fn:contains(data,'JP') }">
			<p>The Word JP not Found</p>
		</c:if><br>
		
		<c:if test="${fn:containsIgnoreCase(data,'JSP') }">
			<p>Found in UpperCase JSP: ${data }</p>
			<p>containsIgnoreCase(data,'JSP')</p>
		</c:if>
		<c:if test="${fn:containsIgnoreCase(data,'jsp') }">
			<p>Found in Lowercase jsp: ${data }</p>
				<p>containsIgnoreCase(data,'jsp')</p>
		</c:if>
		
		<c:set var="data1" value="${fn:replace(data,'Hello','Welcome') }"/>
		<p>Before replace :${data }</p>
		<p>After replace :${data1 }</p>
		
		 <c:set var="data2" value="${fn:trim(data) }"/>
		<p>After trim :${data2}</p> 
		
		<c:set var="data3" value="${ fn:substring(data,5,17)}"> </c:set>
		<p>data is:${data3 }</p>
		</body>
</html>