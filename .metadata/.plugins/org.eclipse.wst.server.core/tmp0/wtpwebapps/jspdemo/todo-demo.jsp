<%@ page import="java.util.*" %>

<html>

<head>
<title>JSP Session Lecture</title>
</head>

<body>
	<form action="todo-demo.jsp">
		
		Add new item: <input type="text" name="theItem" />
		
		<input type="submit" value="Submit" />
	
	</form>
	
	<%
		
		List<String> items = (List<String>) session.getAttribute("toDoListItems");
	
		if(items == null) {
			items = new ArrayList<String>();
			session.setAttribute("toDoListItems", items);
		}
	
		String theItem = request.getParameter("theItem");
		
		boolean isItemNotEmpty = theItem != null && theItem.trim().length() > 0;
		boolean isItemNotDuplicate = theItem != null && !items.contains(theItem.trim());
	
		if(isItemNotEmpty && isItemNotDuplicate) {
			items.add(theItem);
		}
	%>
	
	<hr>
	<br/>
	
	<b>To Do List items:</b>
	<ol>
		<%
		
			for(String temp : items) {
				out.println("<li>" + temp + "</li>");
			}
		
		%>
	</ol>
	
</body>
</html>