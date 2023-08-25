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
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="alert alert-info" role="alert">
							<i class="bi bi-chat-square-dots-fill"></i>
							 A simple info
							alert—check it out!</div>
					</div>
					<div class="col-md-6 col-sm-12 col-xs-12 m-xs-2 pe-2 pb-2">
						<div class="card">
							<h5 class="card-header mx-0 bg-col-3">Featured</h5>
							<div class="card-body">
								<h5 class="card-title">Special title treatment</h5>
								<p class="card-text">With supporting text below as a natural
									lead-in to additional content.</p>
								<a href="#" class="btn btn-primary bg-col-2">Go somewhere</a>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-12 col-xs-12 m-xs-2 pe-2 pb-2">
						<div class="card ">
							<h5 class="card-header bg-col-3">Featured</h5>
							<div class="card-body">
								<h5 class="card-title">Special title treatment</h5>
								<p class="card-text">With supporting text below as a natural
									lead-in to additional content.</p>
								<a href="#" class="btn btn-primary bg-col-2">Go somewhere</a>
							</div>
						</div>
					</div>
					<div class="col-md-6  col-sm-12 col-xs-12 m-xs-2 pe-2 pb-2">
						<div class="card ">
							<h5 class="card-header bg-col-3">Featured</h5>
							<div class="card-body">
								<h5 class="card-title">Special title treatment</h5>
								<p class="card-text">With supporting text below as a natural
									lead-in to additional content.</p>
								<a href="#" class="btn btn-primary bg-col-2">Go somewhere</a>
							</div>
						</div>
					</div>
					<div class="col-md-6  col-sm-12 col-xs-12 m-xs-2 pe-2 pb-2 ">
						<div class="card">
							<h5 class="card-header bg-col-3">Featured</h5>
							<div class="card-body">
								<h5 class="card-title">Special title treatment</h5>
								<p class="card-text">With supporting text below as a natural
									lead-in to additional content.</p>
								<a href="#" class="btn btn-primary bg-col-2">Go somewhere</a>
							</div>
						</div>
					</div>
				</div>
			</div>
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