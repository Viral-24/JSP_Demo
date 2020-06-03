<html>
<head><title> Confirmatiom</title></head>

<%
 String favlangu=request.getParameter("favoritelanguage");
Cookie theCookies=new Cookie("myApp.favoritelanguage",favlangu);
theCookies.setMaxAge(60*60*24*365);
response.addCookie(theCookies);

%>
<body>
	Thank you language:${param.favoritelanguage}
	<br/><br/>
	<a href="cookies_homepage.jsp">Back to home page </a>
</body>
</html>