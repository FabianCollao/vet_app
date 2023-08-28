<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<body class="bg-gradiente">
	<!-- Navbar menu -->
	<%@include file="navbar.jsp"%>
	<!-- Carrusel -->
	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="https://nupec.com/wp-content/uploads/2021/12/visiting-vet-2021-09-24-03-30-14-utc.jpg" class="d-block w-100" alt="...">
				<div class="carousel-caption">
					<h5>Sabemos lo importantes que son.</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Maxime, nulla, tempore. Deserunt excepturi quas vero.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="https://escuelafarmacia.com/wp-content/uploads/cl%C3%ADnica-veterinaria.jpg" class="d-block w-100" alt="...">
				<div class="carousel-caption">
					<h5>Su salud es nuestra prioridad.</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Maxime, nulla, tempore. Deserunt excepturi quas vero.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="https://ateuves.es/wp-content/uploads/2022/10/close-up-on-veterinarian-taking-care-of-cat-6_pv.jpg" class="d-block w-100" alt="...">
				<div class="carousel-caption">
					<h5>AmiVet</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Maxime, nulla, tempore. Deserunt excepturi quas vero.</p>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	<!-- Sobre nosotros -->
      <section id="about" class="about section-padding ">
          <div class="container my-5 pt-5">
              <div class="row">
                  <div class="col-lg-4 col-md-12 col-12">
                      <div class="about-img ">
                          <img src="https://www.nuserga.com/wp-content/uploads/2020/04/trabajar-como-enfermero-veterinario-en-reino-unido.jpg" alt="" class="img-fluid rounded">
                      </div>
                  </div>
                  <div class="col-lg-8 col-md-12 col-12 ps-lg-5 mt-md-5">
                      <div class="about-text">
                            <h2>Ofrecemos la mejor atención <br/> y servicios</h2>
                            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Totam, labore reiciendis. Assumenda eos quod animi! Soluta nesciunt inventore dolores excepturi provident, culpa beatae tempora, explicabo corporis quibusdam corrupti. Autem, quaerat. Assumenda quo aliquam vel, nostrum explicabo ipsum dolor, ipsa perferendis porro doloribus obcaecati placeat natus iste odio est non earum?</p>
                            
                      </div>
                  </div>
              </div>
          </div>
      </section>
      <!-- Servicios -->
      <section class="services section-padding" id="servicio">
          <div class="container">
              <div class="row">
                  <div class="col-md-12">
                      <div class="section-header text-center pb-5">
                          <h2>Nuestros servicios</h2>
                          <p>Lorem ipsum dolor sit amet, consectetur <br>adipisicing elit. Non, quo.</p>
                      </div>
                  </div>
              </div>
              <div class="row">
                <div class="col-12 col-md-12 col-lg-4">
                    <div class="card text-white text-center bg-dark pb-2">
                        <div class="card-body">
                            <i class="bi bi-clipboard2-pulse"></i>	
                            <h3 class="card-title">Consultas</h3>
                            <p class="lead">Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci eligendi modi temporibus alias iste. Accusantium?</p>
                            <button class="btn bg-col-3 text-dark">Leer más</button>
                        </div>
                    </div>
                </div>
                  <div class="col-12 col-md-12 col-lg-4">
                      <div class="card text-white text-center bg-dark pb-2">
                          <div class="card-body">
                            <i class="bi bi-heart-pulse"></i>
                              <h3 class="card-title">Radiografías</h3>
                              <p class="lead">Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci eligendi modi temporibus alias iste. Accusantium?</p>
                              <button class="btn bg-col-3 text-dark">Leer más</button>
                          </div>
                      </div>
                  </div>
                  <div class="col-12 col-md-12 col-lg-4">
                      <div class="card text-white text-center bg-dark pb-2">
                          <div class="card-body">
                            <i class='bx bxs-injection my-2' ></i>
                              <h3 class="card-title">Vacunas</h3>
                              <p class="lead">Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci eligendi modi temporibus alias iste. Accusantium?</p>
                              <button class="btn bg-col-3 text-dark">Leer más</button>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </section>
      <!-- Contacto -->
      
      <section id="contacto" class="contact section-padding">
        <div class="container mt-5 mb-5">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-header text-center color-4 pb-5">
                        <h2>Contáctanos</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur <br>adipisicing elit. Non, quo.</p>
                    </div>
                </div>
            </div>
			<div class="row m-0">
				<div class="col-md-12 p-0 pt-4 pb-4">
					<form action="#" class="bg-light p-4 m-auto">
						<div class="row">
							<div class="col-md-12">
								<div class="mb-3">
									<input class="form-control" placeholder="Nombre Completo" required="" type="text">
								</div>
							</div>
							<div class="col-md-12">
								<div class="mb-3">
									<input class="form-control" placeholder="Correo Electrónico" required="" type="email">
								</div>
							</div>
							<div class="col-md-12">
								<div class="mb-3">
									<textarea class="form-control" placeholder="Mensaje" required="" rows="3"></textarea>
								</div>
							</div><button class="btn bg-col-3 btn-lg btn-block mt-3" type="button">Enviar</button>
						</div>
					</form>
				</div>
			</div>
		</div>
      </section>
      <!-- Footer -->
      <footer class="bg-dark p-2 text-center">
          <div class="container text-white">
          	<img src="<c:url value="/res/img/logo-dark.svg"/>" alt="Logo" width="25" height="30" class="d-inline-block align-text-top">
    			Amivet
              <p class="text-white"> Copyright © 2023 Fabián Collao</p>
          </div>
      </footer>
	<!-- JavaScript Bootstrap -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>