<html>
<head><title>Home Page</title></head>
<body>
<h3>Training Portal</h3>
<%
	String favlang="Java";
	Cookie[] thecookies=request.getCookies();
	if(thecookies!=null){
		for(Cookie tempCookies :thecookies){
			if("myApp.favoritelanguage".equals(tempCookies.getName())){
				favlang=tempCookies.getValue();
			}
		}
	}
%>

<h2> New Books <%= favlang %></h2>
<ol>
<li>Hello</li>
<li>World</li>
</ol>
<h2> New News <%= favlang %></h2>
<ol>
<li>Hello</li>
<li>World</li>
</ol>
<h2> New Report <%= favlang %></h2>
<ol>
<li>Hello</li>
<li>World</li>
</ol>

<hr>
<a href="cookies_personazile.html">Personalize this page </a>
 </body>
</html>