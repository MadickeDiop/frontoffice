<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
	<link rel="icon" type="image/png" href="./assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>
		Services.Poste.sn
	</title>
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
	<!--     Fonts and icons     -->
	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
	<!-- CSS Files -->
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'css/material-kit.css?v=2.0.6')}" type="text/css">

	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'demo/demo.css')}" type="text/css">


</head>
<body class="index-page sidebar-collapse">
<nav class="navbar navbar-transparent navbar-color-on-scroll fixed-top navbar-expand-lg" color-on-scroll="100" id="sectionsNav">
	<div class="container">
		<div class="navbar-translate">
			<a class="navbar-brand" href="">
				<img src="http://www.laposte.sn/wp-content/uploads/2019/08/logo-poste-1.jpg" alt="La Poste" id="logo" data-height-percentage="54" width="120px" height="54px" />
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false" aria-label="Toggle navigation">
				<span class="sr-only">Toggle navigation</span>
				<span class="navbar-toggler-icon"></span>
				<span class="navbar-toggler-icon"></span>
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="navbar-nav ml-auto">
				<li class="dropdown nav-item">
					<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
						<i class="material-icons">apps</i> Nos Services
					</a>
					<div class="dropdown-menu dropdown-with-icons">
						<g:link action="index" controller="demande" class="dropdown-item">
							<i class="material-icons">layers</i> Sama Keuyit
						</g:link>
						<g:link action="index" controller="demande" class="dropdown-item">
							<i class="material-icons">layers</i> Sama Keuyit
						</g:link>
						<a href="https://demos.creative-tim.com/material-kit/docs/2.1/getting-started/introduction.html" class="dropdown-item">
							<i class="material-icons">content_paste</i> Simulateur Prix
						</a>
					</div>
				</li>

				<li class="nav-item">
					<a class="nav-link" rel="tooltip" title="" data-placement="bottom" href="" target="_blank" data-original-title="Follow us on Twitter">
						<i class="fa fa-twitter"></i>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" rel="tooltip" title="" data-placement="bottom" href="https://www.facebook.com/" target="_blank" data-original-title="Like us on Facebook">
						<i class="fa fa-facebook-square"></i>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" rel="tooltip" title="" data-placement="bottom" href="" target="_blank" data-original-title="Follow us on Instagram">
						<i class="fa fa-instagram"></i>
					</a>
				</li>
			</ul>
		</div>
	</div>
</nav>
<g:layoutBody/>
<footer class="footer">
	<div class="container">
		<nav class="float-left">
			<ul>
				<li>
					<a href="">
						LaPoste.sn
					</a>
				</li>
				<li>
					<a href="">
						Contactez-nous
					</a>
				</li>

			</ul>
		</nav>
		<div class="copyright float-right">
			&copy;
			<script>
				document.write(new Date().getFullYear())
			</script>, copyright <i class="material-icons"></i> by
			<a href="" target="_blank">GroupeLaPoste</a> .
		</div>
	</div>
</footer>
<g:javascript src="../js/angular.min.js"/>
<g:javascript src="../js/core/jquery.min.js" />
<g:javascript src="../js/core/popper.min.js" />
<g:javascript src="../js/core/bootstrap-material-design.min.js" />
<g:javascript src="../js/plugins/moment.min.js" />
<!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
<g:javascript src="../js/plugins/bootstrap-datetimepicker.js" />
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<g:javascript src="../js/plugins/nouislider.min.js" />
<!--  Google Maps Plugin    -->
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!-- Control Center for Material Kit: parallax effects, scripts for the example pages etc -->
<script src="../js/material-kit.js?v=2.0.6" type="text/javascript"></script>
<script>
	$(document).ready(function() {
		//init DateTimePickers
		materialKit.initFormExtendedDatetimepickers();

		// Sliders Init
		materialKit.initSliders();
	});


	function scrollToDownload() {
		if ($('.section-download').length != 0) {
			$("html, body").animate({
				scrollTop: $('.section-download').offset().top
			}, 1000);
		}
	}

</script>
</body>
</html>
