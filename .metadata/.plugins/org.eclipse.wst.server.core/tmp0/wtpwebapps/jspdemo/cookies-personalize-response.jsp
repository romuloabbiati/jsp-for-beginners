<%@ page import="java.net.URLEncoder" %>

<html>

<head>
	<title>Confirmation</title>
</head>

	<%
	
		String favLang = request.getParameter("favouriteLanguage");
	
		favLang = URLEncoder.encode(favLang, "UTF-8");
		
		Cookie cookie = new Cookie("myApp.favouriteLanguage", favLang);
		
		cookie.setMaxAge(60 * 60 * 24 * 365);
		
		response.addCookie(cookie);
	%>
	
<body>

	Thanks! We set your favourite language to: ${param.favouriteLanguage}
	
	<br/>
	
	<a href="cookies-homepage.jsp">Return to the homepage</a>

</body>
</html>