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
		<div class="container">
			<div
				class="d-flex justify-content-center align-items-center hgt-100 p-2 row">
				<div class="col-lg-3"></div>
				<div class="card shadow-lg col-lg-6">
					<h1
						class="card-title text-center bg-col-3 rounded-top color-1 w-100 py-3">Registrarse</h1>
					<div class="card-body py-4">
						<form action="register" method="POST" class="row g-3">
							<div class="col-lg-6">
								<label for="floatingNombres" class="form-label">Nombres</label>
								<input type="text" class="form-control" id="floatingNombres"
									name="nombres" placeholder="Nombres">
							</div>
							<div class="col-lg-6">
								<label for="floatingApellidoPaterno" class="form-label">Apellido
									Paterno</label> <input type="text" class="form-control"
									id="floatingApellidoPaterno" name="apellidoPaterno"
									placeholder="Apellido Paterno">
							</div>
							<div class="col-lg-6">
								<label for="floatingDireccion" class="form-label">Dirección</label>
								<input type="text" class="form-control" id="floatingDireccion"
									name="direccion" placeholder="Dirección">
							</div>
							<div class="col-lg-6">
								<label for="floatingTelefono" class="form-label">Teléfono</label>
								<input type="tel" class="form-control" id="floatingTelefono"
									name="telefono" placeholder="Teléfono">
							</div>
							<div class="col-lg-6">
								<label for="floatingInput" class="form-label">Correo</label> <input
									type="email" class="form-control" id="floatingInput"
									name="correo" placeholder="name@example.com">
							</div>
							<div class="col-lg-6">
								<label for="floatingInput" class="form-label">Usuario</label> <input
									type="text" class="form-control" id="floatingInput" name="user"
									placeholder="Usuario">
							</div>
							<div class="col-lg-6">
								<label for="floatingPassword" class="form-label">Contraseña</label>
								<input type="password" class="form-control"
									id="floatingPassword" name="password" placeholder="Contraseña">
							</div>
							<div class="col-lg-6">
								<label for="floatingConfirmPassword" class="form-label">Confirmar
									Contraseña</label> <input type="password" class="form-control"
									id="floatingConfirmPassword" name="confirmPassword"
									placeholder="Confirmar Contraseña">
							</div>
							<div class="col-12 text-center">
								<button type="submit" class="btn bg-col-3 w-75">Registrarse</button>
							</div>
						</form>
					</div>
				</div>
				<div class="col-lg-3"></div>
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