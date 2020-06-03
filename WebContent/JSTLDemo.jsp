<%@page import="com.learining.jstl.coretagdemo.coreDemo"%>
<%@page import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.learining.jstl.coretagdemo.coreDemo" %>

<%
	//Create sample Data ..normally done in MVC but for Demo
	String[] cities={"Munbai","United Kingdom","Philadephia"};
	pageContext.setAttribute("mycities",cities);
%>

<%
	List<coreDemo> data=new ArrayList<>();
	data.add(new coreDemo("Mayur","Surti",true));
	data.add(new coreDemo("Harsh","Poojar",false));
	data.add(new coreDemo("Rahul","Raydas",true));
	
	pageContext.setAttribute("mystudent", data);
			
%>
<html>
<body>
<h2>Welcome to JSTL</h2>
	 <c:set var="stuff" value="<%= new java.util.Date() %>"/>
	time on  server is :${stuff}<br/>
	
	<br/><br/>
	For Each Loop :<br/>
	<c:forEach var="tempcities" items="${mycities}">
	${tempcities}<br/>
	</c:forEach>
	
	<br/><br/><br/><br/>
	Display data from class useing getnas set
	<br/><br/>
	
	<table border="1">
	
	<tr align="center">
	<th>Name</th>
	<th>LastName</th>
	<th>VIP-person</th>
	</tr>
	<c:forEach var="tempstudent" items="${ mystudent}">
	<tr align="center"><td>
	${tempstudent.name}</td><td>
	${tempstudent.last}</td><td>
	<c:if test="${tempstudent.VIP_person}">VIP</c:if>
	<c:if test="${not tempstudent.VIP_person}">Normal</c:if>
	</td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>