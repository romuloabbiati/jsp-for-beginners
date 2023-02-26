<%@ page import="java.util.*" %>

<html>
<head>
<title>JSP Session Demo</title>
</head>

<body>
	<form action="todo-demo2.jsp">
		Add new item: <input type="text" name="theItem" />
		<input type="submit" value="Submit" />
	</form>
	
	<%
	
		List<String> items = (List<String>) session.getAttribute("myToDoList");
	
		if(items == null) {
			items = new ArrayList<String>();
			session.setAttribute("myToDoList", items);
		}
		
		String theItem = request.getParameter("theItem");
		
		boolean isItemNotEmpty = theItem != null && theItem.trim().length() > 0;
		boolean isItemNotDuplicate = theItem != null && !items.contains(theItem.trim());
		
		if(isItemNotEmpty && isItemNotDuplicate) {
			items.add(theItem.trim());
		}
	%>
	
	<hr>
	<br/>
	<b>To Do List items:</b>
	<br/>
	<ol>
		<%
			for(String temp : items) {
				out.println("<li>" + temp + "</li>");
			}
		
		%>
	</ol>
</body>
</html>