
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3"
	xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout">
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<meta charset="UTF-8">

<title>Register Admin</title>
</head>
<style>
.container {
	max-width: 400px;
	margin: 0 auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
.login-header {
	background-color: #AFE1AF ;
	color: white;
	text-align: center;
	padding: 1em;
}
.input-container {
      position: relative;
    }

    input[type="text"],
    input[type="password"] {
      width: 100%;
      padding: 12px 20px;
      margin: 8px 0;
      box-sizing: border-box;
      border: 1px solid #ccc;
      border-radius: 4px;
    }
</style>
<body>
	<div class="login-header">
			<h2>AML Sign up</h2>
		</div>
	<form th:action="@{/addadmin}" method="POST">
		<div class="container">
			<label for="exampleInputEmail1" class="form-label">Name</label> <input
				type="text" name="name" class="form-control"
				id="exampleInputPassword3">
		</div>
		<div class="container">
			<label for="exampleInputPassword1" class="form-label">password</label>
			<input type="text" name="password" class="form-control"
				id="exampleInputPassword3">
		</div>
		<center><button type="submit" class="btn btn-primary">Submit</button></center>
	</form>
</body>
</html>