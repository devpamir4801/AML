<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3"
	xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<head>
<meta charset="UTF-8">
<title>DASHBOARD</title>
</head>
<body>
	<center>
		<h1>Admin details</h1>
	</center>
	<br>
	<center>
		<style>
table, th, td {
	border: 1px solid black;
	border-radius: 5px;
	border-color: #96D4D4;
}

a {
	display: inline-block;
	padding: 10px 20px;
	background-color: #4CAF50;
	color: white;
	text-decoration: none;
	border-radius: 5px;
}

a:hover {
	background-color: #333;
}
</style>
		<table style="width: 100%">
			<thead>
				<tr>
					<th scope="col">Admin id</th>
					<th scope="col">User name</th>
					<th scope="col">Password</th>
					<th scope="col">Eleminate</th>
					<th scope="col">Update</th>
				</tr>
			</thead>
			<tbody>
				<tr th:each="item:${ls}">
					<th scope="row" th:text="${item.aid}"></th>
					<td th:text="${item.name}"></td>
					<td th:text="${item.password}"></td>
					<td><a th:href="@{/delete/{aid}(aid=${item.aid})}">Delete</a></td>
					<td><a th:href="@{/edit/{aid}(aid=${item.aid})}">Update</a></td>
				</tr>
			</tbody>
		</table>
	</center>
	<br>
	<center>
		<button>
			<a href="/">Back To Login</a>
		</button>
	</center>
</body>
</html>