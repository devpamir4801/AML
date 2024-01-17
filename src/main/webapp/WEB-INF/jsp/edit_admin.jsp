<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Edit Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="#">Banking System</a>

  <!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>

  <!-- Navbar links -->
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" th:href="Alldata.jsp">Records</a>
      </li>
    </ul>
  </div>
</nav>
<br>
<br>
	<div class = "container">
		<div class = "row">
			<div class ="col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
				<h1 class = "text-center"> Update Admin </h1>
				<div class = "card-body">
					<form th:action="@{/edit/{id} (id=${item.id})}" th:object = "${Admin}" method="POST">
						<div class ="form-group">
							<label>User Name</label>
							<input
							type = "text"
							name = "name"
							th:field = "*{name}"
							class = "form-control"
							placeholder="Enter New User Name" 
							/>
						</div>
						
						<div class ="form-group">
							<label>Password</label>
							<input
							type = "text"
							name = "password"
							th:field = "*{password}"
							class = "form-control"
							placeholder="Enter New Password" 
							/>
						</div>						
						<div class = "box-footer">
							<button type="submit" class = "btn btn-primary">
								Submit
							</button>
						</div>
					</form>
				
				</div>
			</div>
		</div>
	</div>
</body>
</html>