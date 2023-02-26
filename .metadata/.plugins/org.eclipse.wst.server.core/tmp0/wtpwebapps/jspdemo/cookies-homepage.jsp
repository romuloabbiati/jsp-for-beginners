<%@ page import="java.net.URLDecoder" %>

<html>

<head>

<title>Coding Training Portal</title>

</head>

<body>

<h3>Training Portal</h3>

<%

	String favLang = "Java";

	Cookie[] cookies = request.getCookies();
	
	if(cookies != null) {
		for(Cookie cookie : cookies) {
			if("myApp.favouriteLanguage".equals(cookie.getName())) {
				favLang = URLDecoder.decode(cookie.getValue(), "UTL-8");
				break;
			}
		}
	}

%>

<h4>New Books for <%= favLang %></h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<h4>Latest News reports for <%= favLang %></h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<h4>Hot Jobs for <%= favLang %></h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<br/>
<hr>
<a href="cookies-personalize-form.html">Personalize this page</a>

</body>

</html>