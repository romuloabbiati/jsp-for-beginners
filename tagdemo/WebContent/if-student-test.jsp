<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.util.*, com.luv2code.jsp.tagdemo.Student" %>

<% 

	List<Student> students = new ArrayList<>();
	students.add(new Student("John", "Doe", false));
	students.add(new Student("Maxwell", "Johnson", false));
	students.add(new Student("Mary", "Public", true));
	
	pageContext.setAttribute("myStudents", students);

%>

<html>

	<body>
		
		<table border="1">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Gold Customer</th>
			</tr>
			<c:forEach var="tempStudent" items="${myStudents}">
				
				<tr>
					<td>${tempStudent.firstName}</td>
					<td>${tempStudent.lastName}</td>
					<td>
						<c:if test="${tempStudent.goldCustomer}">Special Discount</c:if>
						
						<c:if test="${not tempStudent.goldCustomer}">-</c:if>
					</td>
				</tr>
			
			</c:forEach>
		</table>
	
	</body>

</html>