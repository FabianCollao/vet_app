<%@include file="taglibs.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inicio</title>
<!-- CSS -->
<%@include file="css-proyecto.jsp" %>
</head>
<body>
<!-- Sidebar Menu -->
<%@include file="sidebar.jsp" %>
<!-- Contenido -->
<main>
    <section class="custom-home">
        <div class="custom-text">Bienvenido, <sec:authentication property="principal.username" /></div>
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