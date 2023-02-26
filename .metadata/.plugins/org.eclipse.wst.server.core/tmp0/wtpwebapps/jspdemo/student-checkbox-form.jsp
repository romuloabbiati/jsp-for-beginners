<html>

<head>
	<title>Student Registration Form</title>
</head>

<body>

	The student is confirmed: ${ param.firstName } ${ param.lastName }
	
	<br/><br/>
	
	The student's favourite programming languages:
	
	<ul>
	
		<%
		
			String[] langs = request.getParameterValues("favouriteLanguage");
			
			if(langs != null) {
				for(String tempLang : langs) {
					out.println("<li>" + tempLang + "</li>");
				}				
			}
		
		%>
	
	</ul>

</body>

</html>