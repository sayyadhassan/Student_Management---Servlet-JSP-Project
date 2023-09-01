<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@page import="com.dao.Student_DAO" %>
<%@page import="com.connection.DB_Connection" %>
<%@page import="com.entity.Student" %>


<!-- To include other .jsp file in current .jsp file  -->

<!-- here include CSS of Navbar which is in 'navbar.jsp' file  -->
<%@include file="navbar.jsp"%>

<!-- here include CDN link of all CSS and JavaSript from Bootstrap which is in 'all_css.jsp' file  -->
<%@include file="all_css.jsp"%>

<body>

	<!-- use the classes of Bootstrap  -->

	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3  text-center">Edit Student</p>


						<%
						int id = Integer.parseInt(request.getParameter("id"));
						Student_DAO dao = new Student_DAO(DB_Connection.getConnection());
						Student s = dao.getStudentById(id);
						%>


						<!-- Form  -->

						<form action="Update" method="post">

							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text" value="<%= s.getFullName() %>"
									id="fullName_input" class="form-control" name="name"
									placeholder="Enter you full name">

								<div id="fullName_error" class="form-text"></div>
							</div>


							<div class="mb-3">
								<label class="form-label">Date Of Birth</label> <input
									type="date" value="<%= s.getDob() %>" id="dateOfBirth_input" class="form-control"
									name="dob">
								<!-- If input type is date then no place holder will visible -->

								<div id="dateOfBirth_error" class="form-text"></div>
							</div>


							<div class="mb-3">
								<label class="form-label">Address</label> <input type="text" value="<%=s.getAddress() %>"
									id="address_input" class="form-control" name="address"
									placeholder="Enter your address">

								<div id="address_error" class="form-text"></div>
							</div>



							<div class="mb-3">
								<label class="form-label">Qualification</label> <input
									type="text" value="<%= s.getQualification() %>" id="qualification_input" class="form-control"
									name="qualification" placeholder="Enter your qualification">

								<div id="qualification_error" class="form-text"></div>
							</div>


							<div class="mb-3">
								<label class="form-label">Email Address</label> <input
									type="email" value="<%= s.getEmail() %>" id="email_input" class="form-control" name="email"
									placeholder="Enter your email">

								<div id="email_error" class="form-text"></div>
							</div>
							
							<input type="hidden" name="id" value="<%= s.getId() %>">
							
							<button type="submit" class="btn btn-primary">Update</button>

						</form>

					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>