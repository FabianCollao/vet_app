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

<!-- CSS DataTables -->
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.5.0/css/responsive.bootstrap5.min.css">
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
							<h5 class="card-header bg-col-3">Ver Pacientes</h5>
							<div class="card-body table-responsive ">
								<table class="table table-responsive table-striped dataTable" id="t_pacientes">
									<thead>
										<tr>
											<th>ID</th>
											<th>Nombre</th>
											<th>Especie</th>
											<th>Raza</th>
											<th>Edad</th>
											<th>Género</th>
											<th>Dueño</th>
											<th>Acciones</th>
										</tr>
									</thead>
									<tbody >
										<!-- Ciclo forEach con JSTL para imprimir datos de la lista -->
										<c:forEach var="pac" items="${listaPacientes}">
											<tr>
												<td><c:out value="${pac.getId()}"></c:out></td>
												<td><c:out value="${pac.getNombre()}"></c:out></td>
												<td><c:out value="${pac.getEspecie()}"></c:out></td>
												<td><c:out value="${pac.getRaza()}"></c:out></td>
												<td><c:out value="${pac.getEdad()}"></c:out></td>
												<td><c:out value="${pac.getGenero()}"></c:out></td>
												<td><c:out value="${pac.getDueño().getNombres()}"></c:out></td>
												<td>
													<!-- Ver -->
													<button type="submit" class="btn btn-info btn-sm">
														<i class="bi bi-eye"></i>
													</button> <!-- Vacuna-->
													<button type="submit" class="btn btn-success btn-sm">
														<i class='bx bx-injection'></i>
													</button> <!-- Editar -->
													<button type="submit" class="btn btn-primary btn-sm">
														<i class="bi bi-pencil-square"></i>
													</button> <!-- Eliminar -->
													<button type="button"
														class="btn btn-danger btn-sm eliminar-usuario-btn"
														data-user-id="${pac.getId()}" data-bs-toggle="modal"
														data-bs-target="#eliminarModal">
														<i class="bi bi-trash"></i>
													</button>
												</td>
											</tr>
										</c:forEach>
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
	<!-- JavasCript Jquery -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js"
		integrity="sha512-3gJwYpMe3QewGELv8k/BX9vcqhryRdzRMxVfq6ngyWXwo03GFEzjsUm8Q7RZcHPHksttq7/GFoxjCVUjkjvPdw=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<!-- JavaScript Datatable -->
	<script type="text/javascript"
		src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
	<!-- Responsive DataTable -->
	<script src="https://cdn.datatables.net/responsive/2.5.0/js/dataTables.responsive.min.js"></script>
	<script src="https://cdn.datatables.net/responsive/2.5.0/js/responsive.bootstrap5.min.js"></script>
	<!-- JavaScript Custom Datatable  -->
	<script type="text/javascript"
		src="<c:url value="/res/js/datatables.js" />"></script>
</body>
</html>