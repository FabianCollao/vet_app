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
			<!-- Fomulario de login -->
			<div class="d-flex justify-content-center align-items-center hgt-100 p-2"
				>
				<div class="card shadow-lg ">
					<h1 class="card-title text-center bg-col-3 p-2 rounded-top color-1">Iniciar Sesión</h1>
					<div class="card-body ">
						<c:choose>
							<c:when test="${error}">
								<div class="alert alert-danger text-center" role="alert">
									Error al iniciar sesión.</div>
							</c:when>
							<c:when test="${logoutt}">
								<div class="alert alert-warning text-center" role="alert">
									Se cerró la sesión correctamente.</div>
							</c:when>
						</c:choose>
						<div class="row justify-content-center">
							<span
								class="txt-grad d-flex justify-content-center align-items-center">
								<i class="bi bi-person-circle lg-icon"></i>
							</span>
						</div>
						<form action="login" method="POST">
							<div class="form-floating mb-3">
								<input type="text" class="form-control" id="floatingInput"
									name="user" placeholder="name@example.com"> <label
									for="floatingInput">Usuario</label>
							</div>
							<div class="form-floating mb-3">
								<input type="password" class="form-control"
									id="floatingPassword" name="password" placeholder="Password">
								<label for="floatingPassword">Contraseña</label>
							</div>
							<div class="mb-3 form-check">
								<input type="checkbox" class="form-check-input" id="rememberMe"
									name="rememberMe"> <label class="form-check-label"
									for="rememberMe">Recordarme</label>
							</div>
							<div class="text-center">
								<button type="submit" class="btn bg-col-3 w-75">Iniciar
									Sesión</button>
							</div>
						</form>
							<div class="text-center">
								<a href="register" class="btn bg-col-2 w-75 mt-2">Registrarme</a>
							</div>
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