<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

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
						<p class="fs-3  text-center">Add Student</p>


						<!-- Form  -->

						<form action="register" method="post">

							<div class="mb-3">
								<label class="form-label">Full Name</label>
								 <input type="text"
									id="fullName_input" class="form-control" name="name"
									placeholder="Enter you full name">

								<div id="fullName_error" class="form-text"></div>
							</div>


							<div class="mb-3">
								<label class="form-label">Date Of Birth</label> <input
									type="date" id="dateOfBirth_input" class="form-control"
									name="dob">
								<!-- If input type is date then no place holder will visible -->

								<div id="dateOfBirth_error" class="form-text"></div>
							</div>


							<div class="mb-3">
								<label class="form-label">Address</label> <input type="text"
									id="address_input" class="form-control" name="address"
									placeholder="Enter your address">

								<div id="address_error" class="form-text"></div>
							</div>



							<div class="mb-3">
								<label class="form-label">Qualification</label> <input
									type="text" id="qualification_input" class="form-control"
									name="qualification" placeholder="Enter your qualification">

								<div id="qualification_error" class="form-text"></div>
							</div>


							<div class="mb-3">
								<label class="form-label">Email Address</label> <input
									type="email" id="email_input" class="form-control" name="email"
									placeholder="Enter your email">

								<div id="email_error" class="form-text"></div>
							</div>


							<button type="submit" class="btn btn-primary">Submit</button>

						</form>

					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>