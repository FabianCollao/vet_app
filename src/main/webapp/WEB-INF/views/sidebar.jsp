
<nav class="custom-sidebar close">
	<header>
		<div class="image-text">
			<span class="image"> 
				<img src="<c:url value="/res/img/logo.svg"/>" alt="" class="logo">
				<img src="<c:url value="/res/img/logo-dark.svg"/>" alt="" class="logo dark">
			</span>

			<div class="custom-text logo-text">
				<span class="name">AmiVet</span> <span class="profession"><sec:authentication property="principal.username" /></span>
			</div>
		</div>

		<i class='bx bx-chevron-right toggle'></i>
	</header>

	<div class="menu-bar">
		<div class="menu">

			<!-- <li class="search-box"><i class='bx bx-search icon'></i> <input
				type="text" placeholder="Search..."></li> -->

			<ul class="menu-links m-0 p-0">
				<li class="custom-nav-link"><a href="principal"> <i
						class='bx bx-home-alt-2 icon'></i> <span class="custom-text nav-text">Principal</span>
				</a></li>

				<li class="custom-nav-link"><a href="agenda"> <i
						class='bx bx-calendar icon'></i> <span
						class="custom-text nav-text">Agenda</span>
				</a></li>

				<li class="custom-nav-link"><a href="notificaciones"> <i
						class='bx bx-bell icon'></i> <span class="custom-text nav-text">Notificaciones</span>
				</a></li>

				<li class="custom-nav-link"><a href="pacientes"> <i
						class='bx bx-bone icon'></i> <span class="custom-text nav-text">Pacientes</span>
				</a></li>
			
				<li class="custom-nav-link"><a href="reporte"> <i
						class='bx bx-file icon'></i> <span class="custom-text nav-text">Reporte</span>
				</a></li>

			</ul>
		</div>

		<div class="bottom-content">
			<li class=""><a href="logout"> <i class='bx bx-log-out icon'></i>
					<span class="custom-text nav-text">Logout</span>
			</a></li>

			<!-- <li class="mode">
				<div class="sun-moon">
					<i class='bx bx-moon icon moon'></i> <i class='bx bx-sun icon sun'></i>
				</div> <span class="mode-text custom-text">Modo Oscuro</span>

				<div class="toggle-switch">
					<span class="switch"></span>
				</div>
			</li> -->

		</div>
	</div>

</nav>