<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@page import="java.util.List"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.connection.DB_Connection"%>
<%@page import="com.dao.Student_DAO"%>
<%@page import="com.entity.Student"%>

</head>

<!-- To include other .jsp file in current .jsp file  -->

<!-- here include CSS of Navbar which is in 'navbar.jsp' file  -->
<%@include file="navbar.jsp"%>

<!-- here include CDN link of all CSS and JavaSript from Bootstrap which is in 'all_css.jsp' file  -->
<%@include file="all_css.jsp"%>


<body>

	<div class="container p-4">
		<div class="card">
			<div class="card-body">
				<p class="text-center fs-4" style="color: Orange">All Student
					Details</p>


				<table class="table table-striped">
					<thead>
						<tr>
							<th scope="col">Full Name</th>
							<th scope="col">DOB</th>
							<th scope="col">Address</th>
							<th scope="col">Qualificationt</th>
							<th scope="col">Email Address</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>


                        <!-- Here call the method of Student_DAO servlet which will have all the data of databse -->
						<%
						Student_DAO dao = new Student_DAO(DB_Connection.getConnection());
						List<Student> list = dao.getAllStudents();
						for (Student s : list) {
						%>

						<tr>
							<!-- <th scope="row">Hassan</th> -->
							<td><%=s.getFullName()%></td>
							<td><%=s.getDob()%></td>
							<td><%=s.getAddress()%></td>
							<td><%=s.getQualification()%></td>
							<td><%=s.getEmail()%></td>
							<td><a href="edit_student.jsp?id=<%= s.getId() %>"
								class="btn btn-sm btn-primary">Edit</a>
							<td><a href="" class="btn btn-sm btn-danger ms-1">Delete</a>
							</td>
						</tr>

						<%
						}
						%>


						
					</tbody>
				</table>
			</div>
		</div>
	</div>

</body>



</html>