<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="mipk.beanDB"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es-ES">
<head>
<title>projectdb - Inicio</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet" href="css/linea-icon.css" />
<link rel="stylesheet" href="css/fancy-buttons.css" />

<!--=== Google Fonts ===-->
<link href='http://fonts.googleapis.com/css?family=Bangers'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Slab:300,700,400'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:600,400,300'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700'
	rel='stylesheet' type='text/css'>
<!--=== Other CSS files ===-->
<link rel="stylesheet" href="css/animate.css" />
<link rel="stylesheet" href="css/jquery.vegas.css" />
<link rel="stylesheet" href="css/baraja.css" />
<link rel="stylesheet" href="css/jquery.bxslider.css" />

<!--=== Main Stylesheets ===-->
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/responsive.css" />

<!--=== Color Scheme, three colors are available red.css, orange.css and gray.css ===-->
<link rel="stylesheet" id="scheme-source" href="css/schemes/gray.css" />

<!--=== Internet explorer fix ===-->
<!-- [if lt IE 9]>
		<script src="http://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="http://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif] -->
</head>
<body>
	<!--=== Preloader section starts ===-->
	<section id="preloader">
	<div class="loading-circle fa-spin"></div>
	</section>
	<!--=== Preloader section Ends ===-->
	
	<!--=== Header section Starts ===-->
	<div id="header" class="header-section">
		<!-- sticky-bar Starts-->
		<div class="sticky-bar-wrap">
			<div class="sticky-section">
				<div id="topbar-hold" class="nav-hold container">
					<nav class="navbar" role="navigation">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target=".navbar-responsive-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<!--=== Site Name ===-->
						<a class="site-name navbar-brand" href="#"><img
							src="images/logo.png" alt="" class="main-image" /></a>
					</div>

					<!-- Main Navigation menu Starts -->
					<div class="collapse navbar-collapse navbar-responsive-collapse">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="index.jsp">Inicio</a></li>
							<li><a href="viajes.jsp">Viajes</a></li>
							<li><a href="viajes.jsp">Camioneros</a></li>
							<li class="current"><a href="viajes.jsp">Cargas</a></li>
						</ul>
					</div>
					<!-- Main Navigation menu ends--> </nav>
				</div>
			</div>
		</div>
		<!-- sticky-bar Ends-->
		<!--=== Header section Ends ===-->

		<!--=== Home Section Starts ===-->
		<div id="section-home" class="home-section-wrap center">
			<div class="section-overlay"></div>
			<div class="container home">
				<div class="row">
					<h1 class="well-come">Cargas</h1>

					<div class="col-md-8 col-md-offset-2">
						<p class="intro-message">Queries sobre información de la carga, de donde ha salido y de donde a vuelto
						junto con quien ha dado esa carga y quien la ha llevado</p>

					</div>
				</div>
			</div>
		</div>
		<!--=== Home Section Ends ===-->
	</div>


	<!--=== Features section Starts ===-->
	<section id="section-feature" class="feature-wrap">
	<div class="container features center">
		<div class="row">
			<div class="col-lg-12">	
			<!-- El ul lo coloco debido a que se necesita para cambiar las propiedades del menú --!>
				<ul id="card-ul" class="features-hold">
				</ul>
					<%
						String query = "select grupos.nombre, count(idAlumno ) from alumnos join grupos on (alumnos.idGrupo=grupos.idGrupo) group by grupos.idGrupo order by count(idAlumno) DESC";
						beanDB basededatos = new beanDB();
						String[][] tablares = basededatos.resConsultaSelectA3(query);
					%>
				
				
					<table class="table">
						<thead class="thead inverse">
							<tr>
								<th>#</th>
								<th style="text-align: center;">Grupo</th>
								<th style="text-align: center;">Faltas de Asistencia</th>
							</tr>
						</thead>
						<tbody>
								<%
									for (int i = 0; i < tablares.length; i++) {
								%>
							
							<tr>
								<th scope="row" style="border-top: none;"><%=i + 1%></th>
								<%
									for (int j = 0; j < tablares[i].length; j++) {
								%>

								<td style="border-top: none;"><%=tablares[i][j]%></td>
								<%
									}
								%>
							</tr>
							<% } %>
						</tbody>
					</table>
				
				<br>
				<h3><a href=#section-feature>Volver arriba</a><h3>
				</div>
				</div>
			</div>
		</div>
	</section>
	<!--=== Features section Ends ===-->

	<!--=== Footer section Starts ===-->
	<div id="section-footer" class="footer-wrap">
		<div class="container footer center">
			<div class="row">
				<div class="col-lg-12">
					<h4 class="footer-title">
						<!-- Footer Title -->
						<a class="site-name" href="#"><span>E</span>gret</a>
					</h4>

					<!-- Social Links -->
					<div class="social-icons">
						<ul>
							<li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus-square"></i></a></li>
							<li><a href="#"><i class="fa fa-pinterest-square"></i></a></li>
							<li><a href="#"><i class="fa fa-flickr"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
						</ul>
					</div>

					<p class="copyright">All rights reserved &copy; 2015</p>
				</div>
			</div>
		</div>
	</div>
	<!--=== Footer section Ends ===-->

	<!--==== Js files ====-->
	<!--==== Essential files ====-->
	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrapValidator.min.js"></script>
	<script type="text/javascript" src="js/modernizr.js"></script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>

	<!--==== Slider and Card style plugin ====-->
	<script type="text/javascript" src="js/jquery.baraja.js"></script>
	<script type="text/javascript" src="js/jquery.vegas.min.js"></script>
	<script type="text/javascript" src="js/jquery.bxslider.min.js"></script>

	<!--==== MailChimp Widget plugin ====-->
	<script type="text/javascript" src="js/jquery.ajaxchimp.min.js"></script>

	<!--==== Scroll and navigation plugins ====-->
	<script type="text/javascript" src="js/jquery.nicescroll.min.js"></script>
	<script type="text/javascript" src="js/jquery.nav.js"></script>
	<script type="text/javascript" src="js/jquery.appear.js"></script>
	<script type="text/javascript" src="js/jquery.fitvids.js"></script>

	<!--==== Custom Script files ====-->
	<script type="text/javascript" src="js/db-images.js"></script>
	<script type="text/javascript" src="js/custom.js"></script>

</body>
</html>