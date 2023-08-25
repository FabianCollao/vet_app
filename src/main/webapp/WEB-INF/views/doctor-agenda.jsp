<%@include file="taglibs.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>Agenda</title>
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
			<div class="container my-4">
				<div class="row">
					<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
						<div class="card ">
							<h5 class="card-header bg-col-3">Ver Agenda</h5>
							<div class="card-body table-responsive ">
								<table class="table table-striped"
									id="t_pacientes">
									<thead>
										<tr>
											<th>Lunes</th>
											<th>Martes</th>
											<th>Miércoles</th>
											<th>Jueves</th>
											<th>Viernes</th>
											<th>Sábado</th>
											<th>Domingo</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td></td>
											<td></td>
											<td></td>
										</tr>
									</tbody>
								</table>
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