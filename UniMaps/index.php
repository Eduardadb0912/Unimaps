<!DOCTYPE html>
<html lang="pt-br">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	<link href="style.css" rel="stylesheet">

	<title>Unimar</title>
</head>

<body>

	<!-- SIDEBAR -->
	<section id="sidebar">
		<a href="#" class="brand"><img src="assets/profile pic.png" alt="" width="55px" height="55px"></i> Unimar</a>
		<ul class="side-menu">
			<li><a href="#" class="active"><i class='bx bxs-dashboard icon'></i> Dashboard</a></li>
			<li class="divider" data-text="Menu"> </li>
			<li>
				<a href="#"><i class='bx bxs-inbox icon'></i> Eventos <i class='bx bx-chevron-right icon-right'></i></a>
				<ul class="side-dropdown">
					<li><a href="#">Todos os Eventos</a></li>
					<li><a href="#">Eventos proximos</a></li>
				</ul>
			</li>
			<li>
				<a href="#"><i class='bx bxs-notepad icon'></i> Horarios <i class='bx bx-chevron-right icon-right'></i></a>
				<ul class="side-dropdown">
					<li><a href="#">Aulas</a></li>
					<li><a href="#">Ônibus</a></li>
				</ul>
			</li>
		</ul>

	</section>

	<section id="content">
		<!-- NAVBAR -->
		<nav>
			
				<i class='bx bx-menu toggle-sidebar'></i>

				<div class="form-group">
					<form method="POST" action="pesquisar.php">
						<input class="pesquisa_local" type="text" name="LOCAL">
					</form>

					<i class='bx bx-search icon'></i>
				</div>

				<a href="#" class="nav-link">
					<i class='bx bxs-bell icon'></i>
					<span class="badge">5</span>
				</a>
				<a href="#" class="nav-link">
					<i class='bx bxs-message-square-dots icon'></i>
					<span class="badge">8</span>
				</a>
				<span class="divider"></span>
				<div class="profile">
					<img src="https://images.unsplash.com/photo-1517841905240-472988babdf9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVvcGxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60" alt="">
					<ul class="profile-link">
						<li><a href="#"><i class='bx bxs-user-circle icon'></i> Profile</a></li>
						<li><a href="#"><i class='bx bxs-cog'></i> Settings</a></li>
						<li><a href="#"><i class='bx bxs-log-out-circle'></i> Logout</a></li>
					</ul>
				</div>
			
		</nav>
		<!-- NAVBAR -->

		<!-- MAIN -->
		<main>

			<div class="data">
				<div class="content-data">
					<div class="head">
						<h3>Mapa</h3>
					</div>
					<div class="chart">
						<div id="map-container">
							<iframe width="100%" height="100%" frameborder="0" style="border:0" src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d2411.5766356562767!2d-49.968728534000704!3d-22.236193041475325!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sunimar!5e1!3m2!1spt-BR!2sbr!4v1700740174883!5m2!1spt-BR!2sbr" loading="lazy" referrerpolicy="no-referrer-when-downgrade" allowfullscreen>
							</iframe>
						</div>
					</div>
				</div>
				<div class="content-data">
					<div class="head">
						<h3>Chat</h3>
					</div>
					<div class="chat-box">
						<p class="day"><span>Hoje</span></p>
						<div class="msg">
							<img src="./assets/profile pic.png" alt="">
							<div class="chat">
								<div class="profile">
									<span class="username">Unimar</span>
									<span class="time">12:30</span>
								</div>
								<p>Olá, Boa Tarde!</br>Bem-Vindo a Unimar!</p></br>
								</br>
								<p>Qual seria a sua dúvida?</p>
							</div>
						</div>
						<div class="msg me">
							<div class="chat">
								<div class="profile">
									<span class="time">12:30</span>
								</div>
								<p>Olá, Boa tarde!
							</div>
						</div>
						<div class="msg me">
							<div class="chat">
								<div class="profile">
									<span class="time">12:31</span>
								</div>
								<p>Eu sou aluno que ingressou recentemente na universidade e tenho que ir até a secretária geral, mas não sei chegar até lá. Poderia me ajudar por favor?</p>
							</div>
						</div>
						<div class="msg me">
							<div class="chat">
								<div class="profile">
									<span class="time"></span>
								</div>

							</div>
						</div>
					</div>
					<form action="#">
						<div class="form-group">
							<input type="text" placeholder="Mensagem">
							<button type="submit" class="btn-send"><i class='bx bxs-send'></i></button>
						</div>
					</form>
				</div>
			</div>
		</main>
		</main>
		<!-- MAIN -->
	</section>
	<!-- NAVBAR -->

	<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
	<script src="script.js"></script>
</body>

</html>