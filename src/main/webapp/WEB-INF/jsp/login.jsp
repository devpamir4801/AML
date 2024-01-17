
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
<title>AML Login</title>
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f0f0f0;
	display: flex;
	align-items: center;
	justify-content: center;
	height: 70vh;
}

.login-container {
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	overflow: hidden;
	width: 300px;
}

.login-header {
	background-color: #333;
	color: white;
	text-align: center;
	padding: 1em;
}

.login-form {
	padding: 20px;
}

label {
	display: block;
	margin-bottom: 8px;
	font-weight: bold;
}

input {
	width: 100%;
	padding: 10px;
	margin-bottom: 16px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
}

.login-button {
	background-color: #4CAF50;
	color: white;
	border: none;
	padding: 10px 0;
	border-radius: 5px;
	cursor: pointer;
	width: 100%;
}

.login-button:hover {
	background-color: #45a049;
}

.signup-link {
	text-align: center;
	margin-top: 16px;
}

.signup-link a {
	color: #4CAF50;
	text-decoration: none;
	font-weight: bold;
}

.signup-link a:hover {
	text-decoration: underline;
}

.error-message {
	color: red;
	margin-top: 10px;
}
</style>
</head>
<body>

	<div class="login-container">
		<div class="login-header">
			<h2>AML Login</h2>
		</div>
		<div class="login-form">
			<form th:action="@{/adminlogin}" method="post">
				<label for="username">Username:</label> <input type="text"
					id="username" name="username" required> <label
					for="password">Password:</label> <input type="password"
					id="password" name="password" required>
					<button type="submit" class="login-button">Login</button>
					</form>
					<div class="signup-link">
				<p>
					Don't have an account? <a href="/newadmin">Sign
						up</a>
				</p>
			</div>
		</div>
	</div>
					
<!--
				<button type="button" class="login-button" onclick="validateLogin()">Login</button>
				  <div id="errorMessage" class="error-message"></div>
			</form>

			<div class="signup-link">
				<p>
					Don't have an account? <a href="/newadmin">Sign
						up</a>
				</p>
			</div>
		</div>
	</div>

	<script>
		function validateLogin() {
			var username = document.getElementById("username").value;
			var password = document.getElementById("password").value;
			var errorMessage = document.getElementById("errorMessage");

			// Simple validation for demonstration purposes
			if (username === "" || password === "") {
				errorMessage.textContent = "Username and password are required.";
			} else {
				// You can add further validation or authentication logic here
				// For simplicity, let's assume the login is successful
				window.location.href = "adminlogin";
			}
		}
	</script>
-->
</body>
</html>