<!DOCTYPE html>
<html>
<head>
<!-- Iconos Bootstrap -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-transparent">
  <div class="container">
  <!-- Logo -->
    <a class="navbar-brand fs-4" href="#">
    	<img src="<c:url value="/res/img/logo.svg"/>" alt="Logo" width="25" height="30" class="d-inline-block align-text-top">
    	AmiVet
    </a>
    <!-- Toggle -->
    <button class="navbar-toggler shadow-none border-0" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <!-- Menu lateral -->
    <div class="sidebar offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
      <!-- Encabezado -->
      <div class="offcanvas-header text-white border-bottom">
        <h5 class="offcanvas-title align-items-center logo-txt" id="offcanvasNavbarLabel">
        <img src="<c:url value="/res/img/logo.svg"/>" alt="Logo" width="25" height="30" class="d-inline-block align-text-top">
        AmiVet</h5>
        <button type="button" class="btn-close btn-close-white shadow-none" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <!-- Cuerpo -->
      <div class="offcanvas-body d-flex flex-column flex-lg-row p-4 p-lg-0">
        <ul class="navbar-nav justify-content-center align-items-center fs-5 flex-grow-1 pe-3">
          <li class="nav-itemmx-2">
            <a class="nav-link active" aria-current="page" href="#">Inicio</a>
          </li>
          <li class="nav-item mx-2">
            <a class="nav-link" href="#">Sobre Nosotros</a>
          </li>
          <li class="nav-item mx-2">
            <a class="nav-link" href="#">Servicios</a>
          </li>
          <li class="nav-item mx-2">
            <a class="nav-link" href="#">Contacto</a>
          </li>
        </ul>
        <!-- Login / Sign Up -->
        <div class="d-flex flex-column  flex-lg-row justify-content-center align-items-center gap-3">
         <a href="#" class="text-decoration-none px-3 py-1 rounded-4 txt-p1" style="background-color: #CAF272">Login</a>
        </div>
      </div>
    </div>
  </div>
</nav>
</body>
</html>
