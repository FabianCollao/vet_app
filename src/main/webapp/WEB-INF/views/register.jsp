<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="h-100 translated-ltr">
<head>
<meta charset="UTF-8">
<title>Iniciar Sesión</title>
<!-- CSS del proyecto -->
<%@ include file='css-proyecto.jsp'%>
</head>
<body class="bg-gradiente">
	<main class="">
		<div class="container ">
			<!-- Formulario de registro -->
			<div
				class="d-flex justify-content-center align-items-center hgt-100 p-2">
				<div class="card shadow-lg">
					<h1 class="card-title text-center bg-col-3 p-2 rounded-top color-1">Registrarse</h1>
					<div class="card-body">
						<form action="register" method="POST">
							<!-- Cambio en el atributo "action" -->
							<div class="form-floating mb-3">
								<input type="text" class="form-control" id="floatingInput"
									name="user" placeholder="nombre usuario"> <label
									for="floatingInput">Usuario</label>
							</div>
							<div class="form-floating mb-3">
								<input type="password" class="form-control"
									id="floatingPassword" name="password" placeholder="Contraseña">
								<label for="floatingPassword">Contraseña</label>
							</div>
							<div class="form-floating mb-3">
								<input type="password" class="form-control"
									id="floatingConfirmPassword" name="confirmPassword"
									placeholder="Confirmar Contraseña"> <label
									for="floatingConfirmPassword">Confirmar Contraseña</label>
							</div>
							<div class="text-center">
								<button type="submit" class="btn bg-col-3 w-75">Registrarse</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</main>

	<!-- JavaScript Bootstrap -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>