<%@ page import="java.util.*;"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2 align="Center"> TO  DO LIST DEMO</h2>
<form action="todolist.jsp">
Items Name : <input type="text" name="theitems">
<input type="submit" value="submit">
</form>
<br>
<%
List<String> items=(List<String>)session.getAttribute("mytodolist");
if(items==null){
	items =new ArrayList<String>();
	session.setAttribute("mytodolist",items);
	String theitems=request.getParameter("theitems");
	if(theitems!=null){
		items.add(theitems);
	}
}
%>
<h3>To do List Items are:</h3><br>
<ol>
<%
	for(String temp:items){
		out.println("<li>"+items+"</li>");
	}
%>
</ol>

</body>
</html>