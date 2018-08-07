<%@ page import="java.util.*" %>
<%@ page import="com.luv2code.web.jdbc.*" %>
<!DOCTYPE html>
<html>
<head>
	<title> Student Tracker App </title>
	<link type="text/css" rel="stylesheet" href="css/style.css"/>
</head>
<%
 //get the students from the request object (sent by servlet)
 	List<Student> theStudents = (List<Student>) request.getAttribute("STUDENT_LIST");
%>

<body>

	<div id="wrapper">
		<div id="header">
			<h2> University Name </h2>
		</div>
	</div>

	<div id="wrapper">
		<div id="content">
			<table>
				<tr> 
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				</tr>
				
				<% for(Student tempStudent: theStudents){%>
					<tr>
						<td> <%= tempStudent.getFirstName() %> </td>
						<td> <%= tempStudent.getLastName() %> </td>
						<td> <%= tempStudent.getEmail() %> </td>
					</tr>
			<%	} %>
				
			</table>
		</div>
	</div>
</body>

</html>