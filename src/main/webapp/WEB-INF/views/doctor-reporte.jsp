<%@include file="taglibs.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inicio</title>
<!-- CSS -->
<%@include file="css-proyecto.jsp"%>
</head>
<body>
	<!-- Contenido -->
	<main>
		<!-- Sidebar Menu -->
		<%@include file="sidebar.jsp"%>
		<section class="custom-home">
			<div class="custom-text">
				Bienvenido,
				<sec:authentication property="principal.username" />
			</div>
			<p class="custom-text">Ver Reporte</p>
		</section>
	</main>

	<!-- JavaScript Bootstrap -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
	<!-- JavaScript Sidebar  -->
	<script src="<c:url value="/res/js/sidebar.js" />"></script>
</body>
</html>