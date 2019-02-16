<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->	<html> <!--<![endif]-->
	<head>
		<meta charset="utf-8" />
		<title>Buy - Sell - Design</title>
		<meta name="keywords" content="HTML5,CSS3,Template" />
		<meta name="description" content="" />
		<meta name="Author" content="Ashutosh" />

		<!-- mobile settings -->
		<meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
		<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->

		<!-- WEB FONTS : use %7C instead of | (pipe) -->
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400%7CRaleway:300,400,500,600,700%7CLato:300,400,400italic,600,700" rel="stylesheet" type="text/css" />

		<!-- CORE CSS -->
		<link href="${pageContext.request.contextPath}/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

		<!-- THEME CSS -->
		<link href="${pageContext.request.contextPath}/assets/css/essentials.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/assets/css/layout.css" rel="stylesheet" type="text/css" />

		<!-- PAGE LEVEL SCRIPTS -->
		<link href="${pageContext.request.contextPath}/assets/css/header-1.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/assets/css/color_scheme/green.css" rel="stylesheet" type="text/css" id="color_scheme" />
		
		<style>
		.modal
		</style>
	</head>

	<!--
		AVAILABLE BODY CLASSES:
		
		smoothscroll 			= create a browser smooth scroll
		enable-animation		= enable WOW animations

		bg-grey					= grey background
		grain-grey				= grey grain background
		grain-blue				= blue grain background
		grain-green				= green grain background
		grain-blue				= blue grain background
		grain-orange			= orange grain background
		grain-yellow			= yellow grain background
		
		boxed 					= boxed layout
		pattern1 ... patern11	= pattern background
		menu-vertical-hide		= hidden, open on click
		
		BACKGROUND IMAGE [together with .boxed class]
		data-background="${pageContext.request.contextPath}/assets/images/boxed_background/1.jpg"
	-->
	<body class="smoothscroll enable-animation">

		<!-- wrapper -->
		<div id="wrapper">

			<!-- 
				AVAILABLE HEADER CLASSES

				Default nav height: 96px
				.header-md 		= 70px nav height
				.header-sm 		= 60px nav height

				.noborder 		= remove bottom border (only with transparent use)
				.transparent	= transparent header
				.translucent	= translucent header
				.sticky			= sticky header
				.static			= static header
				.dark			= dark header
				.bottom			= header on bottom
				
				shadow-before-1 = shadow 1 header top
				shadow-after-1 	= shadow 1 header bottom
				shadow-before-2 = shadow 2 header top
				shadow-after-2 	= shadow 2 header bottom
				shadow-before-3 = shadow 3 header top
				shadow-after-3 	= shadow 3 header bottom

				.clearfix		= required for mobile menu, do not remove!

				Example Usage:  class="clearfix sticky header-sm transparent noborder"
			-->
			<div id="header" class="sticky transparent header-md clearfix">

				<!-- TOP NAV -->
				<header id="topNav">
					<div class="container">

						<!-- Mobile Menu Button -->
						<button class="btn btn-mobile" data-toggle="collapse" data-target=".nav-main-collapse">
							<i class="fa fa-bars"></i>
						</button>

						<!-- Logo -->
						<a class="logo pull-left scrollTo" href="#top">
							<img src="${pageContext.request.contextPath}/assets/images/logo_light.png" alt="" />
							<img src="${pageContext.request.contextPath}/assets/images/logo_dark.png" alt="" />
						</a>

						<!-- 
							Top Nav 
							
							AVAILABLE CLASSES:
							submenu-dark = dark sub menu
						-->
						<div class="navbar-collapse pull-right nav-main-collapse collapse">
							<nav class="nav-main">

								<!-- 
									.nav-onepage
									Required for onepage navigation links
									
									Add .external for an external link!
								-->
								<ul id="topMain" class="nav nav-pills nav-main external">
									<li class="active"><!-- HOME -->
										<a href="<c:url value="user/account" /> ">
											My Profile
										</a>
									</li>
									<li class="dropdown"><!-- ABOUT -->
										<a class="dropdown-toggle" href="#">
											ABOUT
										</a>
										<ul class="dropdown-menu">
											<li><a href="#about">ABOUT SMARTY</a></li>
											<li><a href="#skills">OUR SKILLS</a></li>
										</ul>
									</li>
									<li>
									<a  class="" data-toggle="modal" data-target="#loginModal">
									  Login
									</a>
									<li>
									<!-- Modal -->
								
								<!-- <li>TEAM
										<a href="#team">
											TEAM
										</a>
									</li>
									<li>SERVICES
										<a href="#services">
											SERVICES
										</a>
									</li>
									<li>PRICING
										<a href="#pricing">
											PRICING
										</a>
									</li>
									<li>TESTIMONIALS
										<a href="#testimonials">
											TESTIMONIALS
										</a>
									</li>
									<li>BLOG
										<a class="external" href="blog-default-aside-left.html">
											BLOG
										</a>
									</li>
									<li>CONTACT
										<a href="#contact">
											CONTACT
										</a>
									</li> -->
								</ul>

							</nav>
						</div>

					</div>
				</header>
				<!-- /Top Nav -->

			</div>


			<!-- SLIDER -->
			<section id="slider" class="fullheight parallax parallax-4" style="background-image:url('${pageContext.request.contextPath}/assets/images/background-test/7-min.jpg');">
				<div class="overlay dark-5"><!-- dark overlay [0 to 9 opacity] --></div>

				<div class="display-table">
					<div class="display-table-cell vertical-align-middle">
						<div class="container">

							<div class="slider-featured-text text-center">
								<h1 class="text-white wow fadeInUp" data-wow-delay="0.4s">
									Buy - Sell - Design
								</h1>
								<h2 class="weight-300 text-white wow fadeInUp" data-wow-delay="0.8s">Everything at Fashion</h2>
								<!-- <a class="btn btn-primary btn-lg wow fadeInUp" data-wow-delay="1s" href="#">PURCHASE SMARTY</a> -->
							</div>
				
						</div>
					</div>
				</div>

			</section>
			<!-- /SLIDER -->



			<!-- CALLOUT -->
			<section class="callout-dark heading-title heading-arrow-bottom" style="z-index:100;">
				<div class="container">

					<div class="text-center">
						<h3 class="size-30">Everything is designed, but some things are designed well.</h3>
						<p>We can't solve problems by using the same kind of thinking we used when we created them.</p>
					</div>

				</div>
			</section>
			<!-- /CALLOUT -->



			<!-- ABOUT -->
<!-- 			<section id="about">
				<div class="container">

					<header class="text-center margin-bottom-60">
						<h2>We Are Smarty</h2>
						<p class="lead font-lato">Lorem ipsum dolor sit amet adipiscium elit</p>
						<hr />
					</header>


					<div class="row">

						<div class="col-sm-6">
							<img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/demo/laptop.png" alt="" />
						</div>

						<div class="col-sm-6">
							<p class="dropcap">Lorem ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen.Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>

							<hr />

							<div class="row countTo-sm text-center">

								<div class="col-xs-6 col-sm-4">
									<i class="fa fa-users size-20"></i> &nbsp; 
									<span class="countTo" data-speed="3000" style="color:#59BA41">1303</span>
									<h6>HAPPY CLIENTS</h6>
								</div>

								<div class="col-xs-6 col-sm-4">
									<i class="fa fa-briefcase size-20"></i> &nbsp; 
									<span class="countTo" data-speed="3000" style="color:#774F38">56000</span>
									<h6>FINISHED PROJECTS</h6>
								</div>

								<div class="col-xs-6 col-sm-4">
									<i class="fa fa-twitter size-20"></i> &nbsp; 
									<span class="countTo" data-speed="3000" style="color:#C02942">4897</span>
									<h6>TWITTER FOLLOWERS</h6>
								</div>

							</div>

						</div>

					</div>


				</div>
			</section> -->
			<!-- /ABOUT -->

			
			
			<!-- VISION/SKILL/SPECIAL -->
			<!-- <section id="skills" class="alternate">
				<div class="container">

					<div class="row">
					
						<div class="col-lg-4">

							<div class="heading-title heading-border-bottom">
								<h3>Smarty Vision</h3>
							</div>

							<div class="toggle toggle-transparent-body toggle-accordion">

								<div class="toggle active">
									<label>Who we are?</label>
									<div class="toggle-content">
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
									</div>
								</div>

								<div class="toggle">
									<label>Our long-term vison</label>
									<div class="toggle-content">
										<p>Maecenas metus nulla, commodo a sodales sed, dignissim pretium nunc.</p>
									</div>
								</div>

								<div class="toggle">
									<label>How can we help you?</label>
									<div class="toggle-content">
										<p>Ut enim massa, sodales tempor convallis et, iaculis ac massa.</p>
									</div>
								</div>

							</div>

						</div>

						<div class="col-lg-4">

							<div class="heading-title heading-border-bottom">
								<h3>Smarty Skills</h3>
							</div>

							<div class="progress progress-lg">progress bar
								<div class="progress-bar progress-bar-warning progress-bar-striped active text-left" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%; min-width: 2em;">
									<span>WEB DESIGN 90%</span>
								</div>
							</div>/progress bar

							<div class="progress progress-lg">progress bar
								<div class="progress-bar progress-bar-danger progress-bar-striped active text-left" role="progressbar" aria-valuenow="98" aria-valuemin="0" aria-valuemax="100" style="width: 98%; min-width: 2em;">
									<span>HTML/CSS 98%</span>
								</div>
							</div>/progress bar

							<div class="progress progress-lg">progress bar
								<div class="progress-bar progress-bar-success progress-bar-striped active text-left" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%; min-width: 2em;">
									<span>JAVASCRIPT 60%</span>
								</div>
							</div>/progress bar

							<div class="progress progress-lg">progress bar
								<div class="progress-bar progress-bar-info progress-bar-striped active text-left" role="progressbar" aria-valuenow="88" aria-valuemin="0" aria-valuemax="100" style="width: 88%; min-width: 2em;">
									<span>PHP/MYSQL 88%</span>
								</div>
							</div>/progress bar

						</div>

						<div class="col-lg-4">

							<div class="heading-title heading-border-bottom">
								<h3>Smarty Special</h3>
							</div>
							
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis aliquam id pariatur accusantium perspiciatis deserunt officiis similique nihil dolor blanditiis dignissimos iure praesentium vero suscipit doloribus aperiam unde hic non sint neque molestiae consectetur voluptatum beatae ratione corporis.</p>
							
							<a href="#" class="btn btn-default btn-block btn-lg">Join Us Now</a>
							
						</div>

					</div>


				</div>
			</section> -->
			<!-- /VISION/SKILL/SPECIAL -->



			<!-- WORK -->
			<section id="work">
				<div class="container">

					<header class="text-center margin-bottom-60">
						<h2>Our Work</h2>
						<p class="lead font-lato">Lorem ipsum dolor sit amet adipiscium elit</p>
						<hr />
					</header>


					<!-- PORTFOLIO -->
					<div id="portfolio" class="portfolio-nogutter">

						<ul class="nav nav-pills mix-filter margin-bottom-60">
							<li data-filter="all" class="filter active"><a href="#">All</a></li>
							<li data-filter="development" class="filter"><a href="#">Development</a></li>
							<li data-filter="photography" class="filter"><a href="#">Photography</a></li>
							<li data-filter="design" class="filter"><a href="#">Design</a></li>
						</ul>


						<div class="row mix-grid">

							<div class="col-md-3 col-sm-3 mix design"><!-- item -->

								<div class="item-box">
									<figure>
										<span class="item-hover">
											<span class="overlay dark-5"></span>
											<span class="inner">

												<!-- lightbox -->
												<a class="ico-rounded lightbox" href="${pageContext.request.contextPath}/assets/images/background-test/8-min.jpg" data-plugin-options='{"type":"image"}'>
													<span class="fa fa-plus size-20"></span>
												</a>

												<!-- details -->
												<a class="ico-rounded" href="portfolio-single-slider.html">
													<span class="glyphicon glyphicon-option-horizontal size-20"></span>
												</a>

											</span>
										</span>

										<!-- carousel -->
										<div class="owl-carousel buttons-autohide controlls-over nomargin" data-plugin-options='{"singleItem": true, "autoPlay": 4000, "navigation": false, "pagination": true, "transitionStyle":"goDown"}'>
											<div>
												<img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/background-test/test1.jpg" width="600" height="399" alt="">
											</div>
											<div>
												<img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/background-test/9-min.jpg" width="600" height="399" alt="">
											</div>
											<div>
												<img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/background-test/10-min.jpg" width="600" height="399" alt="">
											</div>
										</div>
										<!-- /carousel -->


									</figure>

									<div class="item-box-desc">
										<h3>Street Photography</h3>
										<ul class="list-inline categories nomargin">
											<li><a href="#">Photography</a></li>
											<li><a href="#">Design</a></li>
										</ul>
									</div>

								</div>

							</div><!-- /item -->


							<!-- <div class="col-md-3 col-sm-3 mix development">item

								<div class="item-box">
									<figure>
										<span class="item-hover">
											<span class="overlay dark-5"></span>
											<span class="inner">

												lightbox
												<a class="ico-rounded lightbox" href="${pageContext.request.contextPath}/assets/images/demo/mockups/1200x800/9-min.jpg" data-plugin-options='{"type":"image"}'>
													<span class="fa fa-plus size-20"></span>
												</a>

												details
												<a class="ico-rounded" href="portfolio-single-slider.html">
													<span class="glyphicon glyphicon-option-horizontal size-20"></span>
												</a>

											</span>
										</span>

										<img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/demo/mockups/600x399/9-min.jpg" width="600" height="399" alt="">
									</figure>

									<div class="item-box-desc">
										<h3>Nature Photography</h3>
										<ul class="list-inline categories nomargin">
											<li><a href="#">Photography</a></li>
											<li><a href="#">Design</a></li>
										</ul>
									</div>

								</div>

							</div>/item


							<div class="col-md-3 col-sm-3 mix photography">item

								<div class="item-box">
									<figure>
										<span class="item-hover">
											<span class="overlay dark-5"></span>
											<span class="inner">

												lightbox
												<a class="ico-rounded lightbox" href="${pageContext.request.contextPath}/assets/images/demo/mockups/1200x800/10-min.jpg" data-plugin-options='{"type":"image"}'>
													<span class="fa fa-plus size-20"></span>
												</a>

												details
												<a class="ico-rounded" href="portfolio-single-slider.html">
													<span class="glyphicon glyphicon-option-horizontal size-20"></span>
												</a>

											</span>
										</span>

										<img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/demo/mockups/600x399/10-min.jpg" width="600" height="399" alt="">
									</figure>

									<div class="item-box-desc">
										<h3>Fashion Design</h3>
										<ul class="list-inline categories nomargin">
											<li><a href="#">Photography</a></li>
											<li><a href="#">Design</a></li>
										</ul>
									</div>

								</div>

							</div>/item


							<div class="col-md-3 col-sm-3 mix design">item

								<div class="item-box">
									<figure>
										<span class="item-hover">
											<span class="overlay dark-5"></span>
											<span class="inner">

												lightbox
												<a class="ico-rounded lightbox" href="${pageContext.request.contextPath}/assets/images/demo/mockups/1200x800/11-min.jpg" data-plugin-options='{"type":"image"}'>
													<span class="fa fa-plus size-20"></span>
												</a>

												details
												<a class="ico-rounded" href="portfolio-single-slider.html">
													<span class="glyphicon glyphicon-option-horizontal size-20"></span>
												</a>

											</span>
										</span>

										<img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/demo/mockups/600x399/11-min.jpg" width="600" height="399" alt="">
									</figure>

									<div class="item-box-desc">
										<h3>Ocean Project</h3>
										<ul class="list-inline categories nomargin">
											<li><a href="#">Photography</a></li>
											<li><a href="#">Design</a></li>
										</ul>
									</div>

								</div>

							</div>/item


							<div class="col-md-3 col-sm-3 mix design">item

								<div class="item-box">
									<figure>
										<span class="item-hover">
											<span class="overlay dark-5"></span>
											<span class="inner">

												lightbox
												<a class="ico-rounded lightbox" href="${pageContext.request.contextPath}/assets/images/demo/mockups/1200x800/12-min.jpg" data-plugin-options='{"type":"image"}'>
													<span class="fa fa-plus size-20"></span>
												</a>

												details
												<a class="ico-rounded" href="portfolio-single-slider.html">
													<span class="glyphicon glyphicon-option-horizontal size-20"></span>
												</a>

											</span>
										</span>

										<img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/demo/mockups/600x399/12-min.jpg" width="600" height="399" alt="">
									</figure>

									<div class="item-box-desc">
										<h3>Architect Project</h3>
										<ul class="list-inline categories nomargin">
											<li><a href="#">Architecture</a></li>
											<li><a href="#">Design</a></li>
										</ul>
									</div>

								</div>

							</div>/item


							<div class="col-md-3 col-sm-3 mix development">item

								<div class="item-box">
									<figure>
										<span class="item-hover">
											<span class="overlay dark-5"></span>
											<span class="inner">

												lightbox
												<a class="ico-rounded lightbox" href="${pageContext.request.contextPath}/assets/images/demo/mockups/1200x800/13-min.jpg" data-plugin-options='{"type":"image"}'>
													<span class="fa fa-plus size-20"></span>
												</a>

												details
												<a class="ico-rounded" href="portfolio-single-slider.html">
													<span class="glyphicon glyphicon-option-horizontal size-20"></span>
												</a>

											</span>
										</span>

										<img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/demo/mockups/600x399/13-min.jpg" width="600" height="399" alt="">
									</figure>

									<div class="item-box-desc">
										<h3>Speaker Design</h3>
										<ul class="list-inline categories nomargin">
											<li><a href="#">Audio</a></li>
											<li><a href="#">Design</a></li>
										</ul>
									</div>

								</div>

							</div>/item


							<div class="col-md-3 col-sm-3 mix photography">item

								<div class="item-box">
									<figure>
										<span class="item-hover">
											<span class="overlay dark-5"></span>
											<span class="inner">

												lightbox
												<a class="ico-rounded lightbox" href="${pageContext.request.contextPath}/assets/images/demo/mockups/1200x800/14-min.jpg" data-plugin-options='{"type":"image"}'>
													<span class="fa fa-plus size-20"></span>
												</a>

												details
												<a class="ico-rounded" href="portfolio-single-slider.html">
													<span class="glyphicon glyphicon-option-horizontal size-20"></span>
												</a>

											</span>
										</span>

										<img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/demo/mockups/600x399/14-min.jpg" width="600" height="399" alt="">
									</figure>

									<div class="item-box-desc">
										<h3>Mobile Development</h3>
										<ul class="list-inline categories nomargin">
											<li><a href="#">Development</a></li>
											<li><a href="#">Design</a></li>
										</ul>
									</div>

								</div>

							</div>/item


							<div class="col-md-3 col-sm-3 mix design">item

								<div class="item-box">
									<figure>
										<span class="item-hover">
											<span class="overlay dark-5"></span>
											<span class="inner">

												lightbox
												<a class="ico-rounded lightbox" href="${pageContext.request.contextPath}/assets/images/demo/mockups/1200x800/15-min.jpg" data-plugin-options='{"type":"image"}'>
													<span class="fa fa-plus size-20"></span>
												</a>

												details
												<a class="ico-rounded" href="portfolio-single-slider.html">
													<span class="glyphicon glyphicon-option-horizontal size-20"></span>
												</a>

											</span>
										</span>

										<img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/demo/mockups/600x399/15-min.jpg" width="600" height="399" alt="">
									</figure>

									<div class="item-box-desc">
										<h3>Nature Art</h3>
										<ul class="list-inline categories nomargin">
											<li><a href="#">Nature</a></li>
											<li><a href="#">Art</a></li>
										</ul>
									</div>

								</div>

							</div>/item


							<div class="col-md-3 col-sm-3 mix design">item

								<div class="item-box">
									<figure>
										<span class="item-hover">
											<span class="overlay dark-5"></span>
											<span class="inner">

												lightbox
												<a class="ico-rounded lightbox" href="${pageContext.request.contextPath}/assets/images/demo/mockups/1200x800/16-min.jpg" data-plugin-options='{"type":"image"}'>
													<span class="fa fa-plus size-20"></span>
												</a>

												details
												<a class="ico-rounded" href="portfolio-single-slider.html">
													<span class="glyphicon glyphicon-option-horizontal size-20"></span>
												</a>

											</span>
										</span>

										<img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/demo/mockups/600x399/16-min.jpg" width="600" height="399" alt="">
									</figure>

									<div class="item-box-desc">
										<h3>Nature Art</h3>
										<ul class="list-inline categories nomargin">
											<li><a href="#">Nature</a></li>
											<li><a href="#">Art</a></li>
										</ul>
									</div>

								</div>

							</div>/item


							<div class="col-md-3 col-sm-3 mix photography">item

								<div class="item-box">
									<figure>
										<span class="item-hover">
											<span class="overlay dark-5"></span>
											<span class="inner">

												lightbox
												<a class="ico-rounded lightbox" href="${pageContext.request.contextPath}/assets/images/demo/mockups/1200x800/1-min.jpg" data-plugin-options='{"type":"image"}'>
													<span class="fa fa-plus size-20"></span>
												</a>

												details
												<a class="ico-rounded" href="portfolio-single-slider.html">
													<span class="glyphicon glyphicon-option-horizontal size-20"></span>
												</a>

											</span>
										</span>

										<img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/demo/mockups/600x399/1-min.jpg" width="600" height="399" alt="">
									</figure>

									<div class="item-box-desc">
										<h3>Mobile Development</h3>
										<ul class="list-inline categories nomargin">
											<li><a href="#">Development</a></li>
											<li><a href="#">Design</a></li>
										</ul>
									</div>

								</div>

							</div>/item


							<div class="col-md-3 col-sm-3 mix design">item

								<div class="item-box">
									<figure>
										<span class="item-hover">
											<span class="overlay dark-5"></span>
											<span class="inner">

												lightbox
												<a class="ico-rounded lightbox" href="${pageContext.request.contextPath}/assets/images/demo/mockups/1200x800/2-min.jpg" data-plugin-options='{"type":"image"}'>
													<span class="fa fa-plus size-20"></span>
												</a>

												details
												<a class="ico-rounded" href="portfolio-single-slider.html">
													<span class="glyphicon glyphicon-option-horizontal size-20"></span>
												</a>

											</span>
										</span>

										<img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/demo/mockups/600x399/2-min.jpg" width="600" height="399" alt="">
									</figure>

									<div class="item-box-desc">
										<h3>Nature Art</h3>
										<ul class="list-inline categories nomargin">
											<li><a href="#">Nature</a></li>
											<li><a href="#">Art</a></li>
										</ul>
									</div>

								</div>

							</div>/item


							<div class="col-md-3 col-sm-3 mix design">item

								<div class="item-box">
									<figure>
										<span class="item-hover">
											<span class="overlay dark-5"></span>
											<span class="inner">

												lightbox
												<a class="ico-rounded lightbox" href="${pageContext.request.contextPath}/assets/images/demo/mockups/1200x800/3-min.jpg" data-plugin-options='{"type":"image"}'>
													<span class="fa fa-plus size-20"></span>
												</a>

												details
												<a class="ico-rounded" href="portfolio-single-slider.html">
													<span class="glyphicon glyphicon-option-horizontal size-20"></span>
												</a>

											</span>
										</span>

										<img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/demo/mockups/600x399/3-min.jpg" width="600" height="399" alt="">
									</figure>

									<div class="item-box-desc">
										<h3>Nature Art</h3>
										<ul class="list-inline categories nomargin">
											<li><a href="#">Nature</a></li>
											<li><a href="#">Art</a></li>
										</ul>
									</div>

								</div>

							</div>/item -->


						</div>

					</div>
					<!-- /PORTFOLIO -->

					<!-- CONTACT US -->
					<div class="callout alert alert-transparent noborder margin-top-60 margin-bottom-60">

						<div class="text-center">

							<h3>Call now at <strong>+800-565-2390</strong> and get 15% discount!</h3>
							<p class="font-lato size-20">
								We truly care about our users and our product.
							</p>
							
							<a href="#contact" class="scrollTo btn btn-default btn-lg margin-top-30">CONTACT US</a>

						</div>

					</div>
					<!-- /CONTACT US -->

				</div>
			</section>
			<!-- /WORK -->



			<!-- TEAM -->
			<!-- <section id="team">
				<div class="container">

					<header class="text-center margin-bottom-60">
						<h2>Our Team</h2>
						<p class="lead font-lato">Lorem ipsum dolor sit amet adipiscium elit</p>
						<hr />
					</header>

					<p class="lead">Lorem ipsum dolor sit amet. Etharums your template rerum facilis dolores nemis omnis fugats vitaes you need this.</p>
					<p>Lorem ipsum dolor sit amet. Etharums your template rerum facilis dolores nemis omnis fugats vitaes you need this totam rem aperiam, eaque ipsa qu ab illo inventore veritatis et quasi architectos beatae vitae dicta sunt explicabo. Nemo enim sadips ipsums dolores sit.Nemo enims sadips ipsums un inventore veritatis et quasi.</p>

					<div class="row">
					
						item
						<div class="col-md-3 col-sm-6">

							<div class="box-flip box-color box-icon box-icon-center box-icon-round box-icon-large text-center">
								<div class="front">
									<div class="box1 box-default">
										<span class="box-icon-title">
											<img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/demo/people/460x700/7-min.jpg" alt="" />
											<h2>Felica Doe</h2>
											<small>CEO</small>
										</span>
									</div>
								</div>

								<div class="back">
									<div class="box2 box-default">
										<h4 class="nomargin">Felica Doe</h4>
										<small>CEO</small>

										<hr />

										<p>Nullam id dolor id nibh ultricies vehicula ut id elit. Integer posuere erat a ante venenatis dapibus posuere</p>

										<hr />

										<a href="#" class="social-icon social-icon-sm social-facebook">
											<i class="fa fa-facebook"></i>
											<i class="fa fa-facebook"></i>
										</a>
										<a href="#" class="social-icon social-icon-sm social-twitter">
											<i class="fa fa-twitter"></i>
											<i class="fa fa-twitter"></i>
										</a>
										<a href="#" class="social-icon social-icon-sm social-linkedin">
											<i class="fa fa-linkedin"></i>
											<i class="fa fa-linkedin"></i>
										</a>
									</div>
								</div>
							</div>

						</div>
						/item

						item
						<div class="col-md-3 col-sm-6">

							<div class="box-flip box-color box-icon box-icon-center box-icon-round box-icon-large text-center">
								<div class="front">
									<div class="box1 box-default">
										<span class="box-icon-title">
											<img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/demo/people/460x700/12-min.jpg" alt="" />
											<h2>Joana Doe</h2>
											<small>Art Director</small>
										</span>
									</div>
								</div>

								<div class="back">
									<div class="box2 box-default">
										<h4 class="nomargin">Joana Doe</h4>
										<small>Art Director</small>

										<hr />

										<p>Nullam id dolor id nibh ultricies vehicula ut id elit. Integer posuere erat a ante venenatis dapibus posuere</p>

										<hr />

										<a href="#" class="social-icon social-icon-sm social-facebook">
											<i class="fa fa-facebook"></i>
											<i class="fa fa-facebook"></i>
										</a>
										<a href="#" class="social-icon social-icon-sm social-twitter">
											<i class="fa fa-twitter"></i>
											<i class="fa fa-twitter"></i>
										</a>
										<a href="#" class="social-icon social-icon-sm social-linkedin">
											<i class="fa fa-linkedin"></i>
											<i class="fa fa-linkedin"></i>
										</a>
									</div>
								</div>
							</div>

						</div>
						/item

						item
						<div class="col-md-3 col-sm-6">

							<div class="box-flip box-color box-icon box-icon-center box-icon-round box-icon-large text-center">
								<div class="front">
									<div class="box1 box-default">
										<span class="box-icon-title">
											<img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/demo/people/460x700/10-min.jpg" alt="" />
											<h2>Melissa Doe</h2>
											<small>Web Developer</small>
										</span>
									</div>
								</div>

								<div class="back">
									<div class="box2 box-default">
										<h4 class="nomargin">Melissa Doe</h4>
										<small>Web Developer</small>

										<hr />

										<p>Nullam id dolor id nibh ultricies vehicula ut id elit. Integer posuere erat a ante venenatis dapibus posuere</p>

										<hr />

										<a href="#" class="social-icon social-icon-sm social-facebook">
											<i class="fa fa-facebook"></i>
											<i class="fa fa-facebook"></i>
										</a>
										<a href="#" class="social-icon social-icon-sm social-twitter">
											<i class="fa fa-twitter"></i>
											<i class="fa fa-twitter"></i>
										</a>
										<a href="#" class="social-icon social-icon-sm social-linkedin">
											<i class="fa fa-linkedin"></i>
											<i class="fa fa-linkedin"></i>
										</a>
									</div>
								</div>
							</div>

						</div>
						/item

						item
						<div class="col-md-3 col-sm-6">

							<div class="box-flip box-color box-icon box-icon-center box-icon-round box-icon-large text-center">
								<div class="front">
									<div class="box1 box-default">
										<span class="box-icon-title">
											<img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/demo/people/460x700/8-min.jpg" alt="" />
											<h2>Jessica Doe</h2>
											<small>Manager</small>
										</span>
									</div>
								</div>

								<div class="back">
									<div class="box2 box-default">
										<h4 class="nomargin">Jessica Doe</h4>
										<small>Manager</small>

										<hr />

										<p>Nullam id dolor id nibh ultricies vehicula ut id elit. Integer posuere erat a ante venenatis dapibus posuere</p>

										<hr />

										<a href="#" class="social-icon social-icon-sm social-facebook">
											<i class="fa fa-facebook"></i>
											<i class="fa fa-facebook"></i>
										</a>
										<a href="#" class="social-icon social-icon-sm social-twitter">
											<i class="fa fa-twitter"></i>
											<i class="fa fa-twitter"></i>
										</a>
										<a href="#" class="social-icon social-icon-sm social-linkedin">
											<i class="fa fa-linkedin"></i>
											<i class="fa fa-linkedin"></i>
										</a>
									</div>
								</div>
							</div>

						</div>
						/item

					</div>

				</div>
			</section> -->
			<!-- /TEAM -->



			<!-- CALLOUT -->
			<!-- <div class="callout callout-theme-color">
				<div class="container">

					<div class="row">

						<div class="col-md-9">title + shortdesc
							<h3>Want to be part of our team?</h3>
							<p>If so, click to join now, and be part of our dynamic team!</p>
						</div>

						<div class="col-md-3">button
							<a href="page-careers.html" class="btn btn-primary btn-lg">Join Our Team</a>
						</div>

					</div>

				</div>
			</div> -->
			<!-- /CALLOUT -->



			<!-- SERVICES -->
			<!-- <section id="services">
				<div class="container">

					<header class="text-center margin-bottom-60">
						<h2>Our Services</h2>
						<p class="lead font-lato">Lorem ipsum dolor sit amet adipiscium elit</p>
						<hr />
					</header>

					<p class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet.</p>
					
					<div class="divider divider-center divider-color">divider
						<i class="fa fa-chevron-down"></i>
					</div>

					FEATURED BOXES 3
					<div class="row">

						<div class="col-md-4 col-xs-6">
							<div class="text-center">
								<i class="ico-color ico-lg ico-rounded ico-hover et-circle-compass"></i>
								<h4>Web Design</h4>
								<p class="font-lato size-20">Donec id elit non mi porta gravida.</p>
							</div>
						</div>
						<div class="col-md-4 col-xs-6">
							<div class="text-center">
								<i class="ico-color ico-lg ico-rounded ico-hover et-piechart"></i>
								<h4>Web Analytics</h4>
								<p class="font-lato size-20">Donec id elit non mi porta gravida.</p>
							</div>
						</div>
						<div class="col-md-4 col-xs-6">
							<div class="text-center">
								<i class="ico-color ico-lg ico-rounded ico-hover et-strategy"></i>
								<h4>Development</h4>
								<p class="font-lato size-20">Donec id elit non mi porta gravida.</p>
							</div>
						</div>
						<div class="col-md-4 col-xs-6">
							<div class="text-center">
								<i class="ico-color ico-lg ico-rounded ico-hover et-streetsign"></i>
								<h4>Marketing</h4>
								<p class="font-lato size-20">Donec id elit non mi porta gravida.</p>
								</div>
						</div>

						<div class="col-md-4 col-xs-6">
							<div class="text-center">
								<i class="ico-color ico-lg ico-rounded ico-hover et-trophy"></i>
								<h4>Sales Booster</h4>
								<p class="font-lato size-20">Donec id elit non mi porta gravida.</p>
							</div>
						</div>
						<div class="col-md-4 col-xs-6">
							<div class="text-center">
								<i class="ico-color ico-lg ico-rounded ico-hover et-tools"></i>
								<h4>Design</h4>
								<p class="font-lato size-20">Donec id elit non mi porta gravida.</p>
							</div>
						</div>

					</div>
					/FEATURED BOXES 3

				</div>
			</section> -->
			<!-- /SERVICES -->



			<!-- PRICING -->
			<!-- <section id="pricing">
				<div class="container">

					<header class="text-center margin-bottom-60">
						<h2>Our Pricing</h2>
						<p class="lead font-lato">Lorem ipsum dolor sit amet adipiscium elit</p>
						<hr />
					</header>

					<div class="row">

						<div class="col-md-3 col-sm-3">
							
							<div class="price-clean">                                
								<h4>
									<sup>$</sup>15<em>/month</em>
								</h4>
								<h5> Starter </h5>
								<hr />
								<p>For individuals looking for something simple to get started.</p>
								<hr />
								<a href="#" class="btn btn-3d btn-teal">Learn More</a>
							</div>
						
						</div>

						<div class="col-md-3 col-sm-3">
							
							<div class="price-clean">                                
								<h4>
									<sup>$</sup>25<em>/month</em>
								</h4>
								<h5> BUSINESS </h5>
								<hr />
								<p>For individuals looking for something simple to get started.</p>
								<hr />
								<a href="#" class="btn btn-3d btn-teal">Learn More</a>
							</div>
						
						</div>

						<div class="col-md-3 col-sm-3">
							
							<div class="price-clean price-clean-popular"> 
								<div class="ribbon"> 
									<div class="ribbon-inner">POPULAR</div>
								</div>
								
								<h4>
									<sup>$</sup>35<em>/month</em>
								</h4>
								<h5> DEVELOPER </h5>
								<hr />
								<p>For individuals looking for something simple to get started.</p>
								<hr />
								<a href="#" class="btn btn-3d btn-primary">Learn More</a>
							</div>
						
						</div>

						<div class="col-md-3 col-sm-3">
							
							<div class="price-clean">                                
								<h4>
									<sup>$</sup>50<em>/month</em>
								</h4>
								<h5> VIP </h5>
								<hr />
								<p>For individuals looking for something simple to get started.</p>
								<hr />
								<a href="#" class="btn btn-3d btn-teal">Learn More</a>
							</div>
						
						</div>

					</div>

				</div>
			</section> -->
			<!-- /PRICING -->



			<!-- PARALLAX -->
			<section class="parallax parallax-2" style="background-image: url('${pageContext.request.contextPath}/assets/images/demo/wall3-min.jpg');">
				<div class="overlay dark-6"><!-- dark overlay [1 to 9 opacity] --></div>

				<div class="container">

					<div class="text-center">
						<h3 class="nomargin">Share Your Thoughts</h3>
						<p class="font-lato weight-300 lead nomargin-top">We can't solve problems by using the same kind of thinking we used when we created them.</p>
					</div>

					<ul class="margin-top-80 social-icons list-unstyled list-inline">
						<li>
							<a target="_blank" href="#">
								<i class="fa fa-facebook"></i>
								<h4>Facebook</h4>
								<span>Be Our Friend</span>
							</a>
						</li>
						<li>
							<a target="_blank" href="#">
								<i class="fa fa-twitter"></i>
								<h4>Twitter</h4>
								<span>Follow Us</span>
							</a>
						</li>
						<li>
							<a target="_blank" href="#">
								<i class="fa fa-youtube"></i>
								<h4>Youtube</h4>
								<span>Our Videos</span>
							</a>
						</li>
						<li>
							<a target="_blank" href="#">
								<i class="fa fa-instagram"></i>
								<h4>Instagram</h4>
								<span>See Our Images</span>
							</a>
						</li>
						<li>
							<a target="_blank" href="#">
								<i class="fa fa-linkedin"></i>
								<h4>Linkedin</h4>
								<span>Check Our Identity</span>
							</a>
						</li>
						<li>
							<a target="_blank" href="#">
								<i class="fa fa-pinterest"></i>
								<h4>Pinterest</h4>
								<span>Visual Discovery</span>
							</a>
						</li>
					</ul>

				</div>

			</section>
			<!-- /PARALLAX -->



			<!-- TESTIMONIALS -->
			<section id="testimonials" class="alternate">
				<div class="container">

					<header class="text-center margin-bottom-60">
						<h2>Testimonials</h2>
						<p class="lead font-lato">Lorem ipsum dolor sit amet adipiscium elit</p>
						<hr />
					</header>

					<!-- 
						Note: remove class="rounded" from the img for squared image!
					-->
					<div class="row margin-bottom-60">
						<div class="col-md-4">
							<div class="testimonial testimonial-bordered padding-15">
								<figure class="pull-left">
									<img class="rounded" src="${pageContext.request.contextPath}/assets/images/demo/people/300x300/2-min.jpg" alt="" />
								</figure>
								<div class="testimonial-content">
									<p>Incidunt deleniti blanditiis quas aperiam recusandae consequatur ullam quibusdam cum libero!</p>
									<cite>
										Felicia Doe
										<span>Company Ltd.</span>
									</cite>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="testimonial testimonial-bordered padding-15">
								<figure class="pull-left">
									<img class="rounded" src="${pageContext.request.contextPath}/assets/images/demo/people/300x300/1-min.jpg" alt="" />
								</figure>
								<div class="testimonial-content">
									<p>Incidunt deleniti blanditiis quas aperiam recusandae consequatur ullam quibusdam cum libero!</p>
									<cite>
										Joana Doe
										<span>Company Ltd.</span>
									</cite>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="testimonial testimonial-bordered padding-15">
								<figure class="pull-left">
									<img class="rounded" src="${pageContext.request.contextPath}/assets/images/demo/people/300x300/6-min.jpg" alt="" />
								</figure>
								<div class="testimonial-content">
									<p>Incidunt deleniti blanditiis quas aperiam recusandae consequatur ullam quibusdam cum libero!</p>
									<cite>
										Melissa Doe
										<span>Company Ltd.</span>
									</cite>
								</div>
							</div>
						</div>
					</div>

					<!-- 
						Note: remove class="rounded" from the img for squared image!
					-->
					<ul class="row clearfix testimonial-dotted list-unstyled">
						<li class="col-md-4">
							<div class="testimonial">
								<figure class="pull-left">
									<img class="rounded" src="${pageContext.request.contextPath}/assets/images/demo/people/300x300/2-min.jpg" alt="" />
								</figure>
								<div class="testimonial-content">
									<p>Incidunt deleniti blanditiis quas aperiam recusandae consequatur ullam quibusdam cum libero illo rerum!</p>
									<cite>
										Joana Doe
										<span>Company Ltd.</span>
									</cite>
								</div>
							</div>
						</li>
						<li class="col-md-4">
							<div class="testimonial">
								<figure class="pull-left">
									<img class="rounded" src="${pageContext.request.contextPath}/assets/images/demo/people/300x300/6-min.jpg" alt="" />
								</figure>
								<div class="testimonial-content">
									<p>Incidunt deleniti blanditiis quas aperiam recusandae consequatur ullam quibusdam cum libero illo rerum!</p>
									<cite>
										Melissa Doe
										<span>Company Ltd.</span>
									</cite>
								</div>
							</div>
						</li>
						<li class="col-md-4">
							<div class="testimonial">
								<figure class="pull-left">
									<img class="rounded" src="${pageContext.request.contextPath}/assets/images/demo/people/300x300/7-min.jpg" alt="" />
								</figure>
								<div class="testimonial-content">
									<p>Incidunt deleniti blanditiis quas aperiam recusandae consequatur ullam quibusdam cum libero illo rerum!</p>
									<cite>
										Stephany Doe
										<span>Company Ltd.</span>
									</cite>
								</div>
							</div>
						</li>
						<li class="col-md-4">
							<div class="testimonial">
								<figure class="pull-left">
									<img class="rounded" src="${pageContext.request.contextPath}/assets/images/demo/people/300x300/8-min.jpg" alt="" />
								</figure>
								<div class="testimonial-content">
									<p>Incidunt deleniti blanditiis quas aperiam recusandae consequatur ullam quibusdam cum libero illo rerum!</p>
									<cite>
										Pamela Doe
										<span>Company Ltd.</span>
									</cite>
								</div>
							</div>
						</li>
						<li class="col-md-4">
							<div class="testimonial">
								<figure class="pull-left">
									<img class="rounded" src="${pageContext.request.contextPath}/assets/images/demo/people/300x300/11-min.jpg" alt="" />
								</figure>
								<div class="testimonial-content">
									<p>Incidunt deleniti blanditiis quas aperiam recusandae consequatur ullam quibusdam cum libero illo rerum!</p>
									<cite>
										Simina Doe
										<span>Company Ltd.</span>
									</cite>
								</div>
							</div>
						</li>
						<li class="col-md-4">
							<div class="testimonial">
								<figure class="pull-left">
									<img class="rounded" src="${pageContext.request.contextPath}/assets/images/demo/people/300x300/12-min.jpg" alt="" />
								</figure>
								<div class="testimonial-content">
									<p>Incidunt deleniti blanditiis quas aperiam recusandae consequatur ullam quibusdam cum libero illo rerum!</p>
									<cite>
										Mihaela Doe
										<span>Company Ltd.</span>
									</cite>
								</div>
							</div>
						</li>
					</ul> 

				</div>
			</section>
			<!-- /TESTIMONIALS -->



			<!-- CONTACT -->
			<section id="contact">
				<div class="container">

					<header class="text-center margin-bottom-60">
						<h2>Contact Us</h2>
						<p class="lead font-lato">Lorem ipsum dolor sit amet adipiscium elit</p>
						<hr />
					</header>


					<div class="row">

						<!-- FORM -->
						<div class="col-md-8 col-sm-8">

							<h3>Drop us a line or just say <strong><em>Hello!</em></strong></h3>

							
							<!--
								MESSAGES
								
									How it works?
									The form data is posted to php/contact.php where the fields are verified!
									php.contact.php will redirect back here and will add a hash to the end of the URL:
										#alert_success 		= email sent
										#alert_failed		= email not sent - internal server error (404 error or SMTP problem)
										#alert_mandatory	= email not sent - required fields empty
										Hashes are handled by ${pageContext.request.contextPath}/js/contact.js

									Form data: required to be an array. Example:
										contact[email][required]  WHERE: [email] = field name, [required] = only if this field is required (PHP will check this)
										Also, add `required` to input fields if is a mandatory field. 
										Example: <input required type="email" value="" class="form-control" name="contact[email][required]">

									PLEASE NOTE: IF YOU WANT TO ADD OR REMOVE FIELDS (EXCEPT CAPTCHA), JUST EDIT THE HTML CODE, NO NEED TO EDIT php/contact.php or javascript
												 ALL FIELDS ARE DETECTED DINAMICALY BY THE PHP

									WARNING! Do not change the `email` and `name`!
												contact[name][required] 	- should stay as it is because PHP is using it for AddReplyTo (phpmailer)
												contact[email][required] 	- should stay as it is because PHP is using it for AddReplyTo (phpmailer)
							-->

							<!-- Alert Success -->
							<div id="alert_success" class="alert alert-success margin-bottom-30">
								<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
								<strong>Thank You!</strong> Your message successfully sent!
							</div><!-- /Alert Success -->


							<!-- Alert Failed -->
							<div id="alert_failed" class="alert alert-danger margin-bottom-30">
								<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
								<strong>[SMTP] Error!</strong> Internal server error!
							</div><!-- /Alert Failed -->


							<!-- Alert Mandatory -->
							<div id="alert_mandatory" class="alert alert-danger margin-bottom-30">
								<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
								<strong>Sorry!</strong> You need to complete all mandatory (*) fields!
							</div><!-- /Alert Mandatory -->


							<form action="php/contact.php" method="post" enctype="multipart/form-data">
								<fieldset>
									<input type="hidden" name="action" value="contact_send" />

									<div class="row">
										<div class="form-group">
											<div class="col-md-4">
												<label for="contact:name">Full Name *</label>
												<input required type="text" value="" class="form-control" name="contact[name][required]" id="contact:name">
											</div>
											<div class="col-md-4">
												<label for="contact:email">E-mail Address *</label>
												<input required type="email" value="" class="form-control" name="contact[email][required]" id="contact:email">
											</div>
											<div class="col-md-4">
												<label for="contact:phone">Phone</label>
												<input type="text" value="" class="form-control" name="contact[phone]" id="contact:phone">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="form-group">
											<div class="col-md-8">
												<label for="contact:subject">Subject *</label>
												<input required type="text" value="" class="form-control" name="contact[subject][required]" id="contact:subject">
											</div>
											<div class="col-md-4">
												<label for="contact_department">Department</label>
												<select class="form-control pointer" name="contact[department]">
													<option value="">--- Select ---</option>
													<option value="Marketing">Marketing</option>
													<option value="Webdesign">Webdesign</option>
													<option value="Architecture">Architecture</option>
												</select>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="form-group">
											<div class="col-md-12">
												<label for="contact:message">Message *</label>
												<textarea required maxlength="10000" rows="8" class="form-control" name="contact[message]" id="contact:message"></textarea>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="form-group">
											<div class="col-md-12">
												<label for="contact:attachment">File Attachment</label>

												<!-- custom file upload -->
												<input class="custom-file-upload" type="file" id="file" name="contact[attachment]" id="contact:attachment" data-btn-text="Select a File" />
												<small class="text-muted block">Max file size: 10Mb (zip/pdf/jpg/png)</small>

											</div>
										</div>
									</div>

								</fieldset>

								<div class="row">
									<div class="col-md-12">
										<button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> SEND MESSAGE</button>
									</div>
								</div>
							</form>

						</div>
						<!-- /FORM -->


						<!-- INFO -->
						<div class="col-md-4 col-sm-4">

							<h2>Visit Us</h2>

							<!-- 
							Available heights
								height-100
								height-150
								height-200
								height-250
								height-300
								height-350
								height-400
								height-450
								height-500
								height-550
								height-600
							-->
							<div id="map2" class="height-400 grayscale"></div>

							<hr />

							<p>
								<span class="block"><strong><i class="fa fa-map-marker"></i> Address:</strong> Street Name, City Name, Country</span>
								<span class="block"><strong><i class="fa fa-phone"></i> Phone:</strong> <a href="tel:1800-555-1234">1800-555-1234</a></span>
								<span class="block"><strong><i class="fa fa-envelope"></i> Email:</strong> <a href="mailto:mail@yourdomain.com">mail@yourdomain.com</a></span>
							</p>

						</div>
						<!-- /INFO -->

					</div>

				</div>
			</section>
			<!-- /CONTACT -->



			<!-- FOOTER -->
			<footer id="footer">
				<div class="container">

					<div class="row">
						
						<div class="col-md-3">
							<!-- Footer Logo -->
							<img class="footer-logo" src="${pageContext.request.contextPath}/assets/images/logo-footer.png" alt="" />

							<!-- Small Description -->
							<p>Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>

							<!-- Contact Address -->
							<address>
								<ul class="list-unstyled">
									<li class="footer-sprite address">
										PO Box 21132<br>
										Here Weare St, Melbourne<br>
										Vivas 2355 Australia<br>
									</li>
									<li class="footer-sprite phone">
										Phone: 1-800-565-2390
									</li>
									<li class="footer-sprite email">
										<a href="mailto:support@yourname.com">support@yourname.com</a>
									</li>
								</ul>
							</address>
							<!-- /Contact Address -->

						</div>

						<div class="col-md-3">

							<!-- Latest Blog Post -->
							<h4 class="letter-spacing-1">LATEST NEWS</h4>
							<ul class="footer-posts list-unstyled">
								<li>
									<a href="#">Donec sed odio dui. Nulla vitae elit libero, a pharetra augue</a>
									<small>29 June 2015</small>
								</li>
								<li>
									<a href="#">Nullam id dolor id nibh ultricies</a>
									<small>29 June 2015</small>
								</li>
								<li>
									<a href="#">Duis mollis, est non commodo luctus</a>
									<small>29 June 2015</small>
								</li>
							</ul>
							<!-- /Latest Blog Post -->

						</div>

						<div class="col-md-2">

							<!-- Links -->
							<h4 class="letter-spacing-1">EXPLORE SMARTY</h4>
							<ul class="footer-links list-unstyled">
								<li><a href="#">Home</a></li>
								<li><a href="#">About Us</a></li>
								<li><a href="#">Our Services</a></li>
								<li><a href="#">Our Clients</a></li>
								<li><a href="#">Our Pricing</a></li>
								<li><a href="#">Smarty Tour</a></li>
								<li><a href="#">Contact Us</a></li>
							</ul>
							<!-- /Links -->

						</div>

						<div class="col-md-4">

							<!-- Newsletter Form -->
							<h4 class="letter-spacing-1">KEEP IN TOUCH</h4>
							<p>Subscribe to Our Newsletter to get Important News &amp; Offers</p>

							<form class="validate" action="php/newsletter.php" method="post" data-success="Subscribed! Thank you!" data-toastr-position="bottom-right">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope"></i></span>
									<input type="email" id="email" name="email" class="form-control required" placeholder="Enter your Email">
									<span class="input-group-btn">
										<button class="btn btn-success" type="submit">Subscribe</button>
									</span>
								</div>
							</form>
							<!-- /Newsletter Form -->

							<!-- Social Icons -->
							<div class="margin-top-20">
								<a href="#" class="social-icon social-icon-border social-facebook pull-left" data-toggle="tooltip" data-placement="top" title="Facebook">

									<i class="icon-facebook"></i>
									<i class="icon-facebook"></i>
								</a>

								<a href="#" class="social-icon social-icon-border social-twitter pull-left" data-toggle="tooltip" data-placement="top" title="Twitter">
									<i class="icon-twitter"></i>
									<i class="icon-twitter"></i>
								</a>

								<a href="#" class="social-icon social-icon-border social-gplus pull-left" data-toggle="tooltip" data-placement="top" title="Google plus">
									<i class="icon-gplus"></i>
									<i class="icon-gplus"></i>
								</a>

								<a href="#" class="social-icon social-icon-border social-linkedin pull-left" data-toggle="tooltip" data-placement="top" title="Linkedin">
									<i class="icon-linkedin"></i>
									<i class="icon-linkedin"></i>
								</a>

								<a href="#" class="social-icon social-icon-border social-rss pull-left" data-toggle="tooltip" data-placement="top" title="Rss">
									<i class="icon-rss"></i>
									<i class="icon-rss"></i>
								</a>
					
							</div>
							<!-- /Social Icons -->

						</div>

					</div>

				</div>

				<div class="copyright">
					<div class="container">
						<ul class="pull-right nomargin list-inline mobile-block">
							<li><a href="#">Terms &amp; Conditions</a></li>
							<li>&bull;</li>
							<li><a href="#">Privacy</a></li>
						</ul>
						&copy; All Rights Reserved, Company LTD
					</div>
				</div>
			</footer>
			<!-- /FOOTER -->

		</div>
		<!-- /wrapper -->


		<!-- SCROLL TO TOP -->
		<a href="#" id="toTop"></a>


		<!-- PRELOADER -->
		<div id="preloader">
			<div class="inner">
				<span class="loader"></span>
			</div>
		</div><!-- /PRELOADER -->



	<!--Login Modal -->
							<div id="loginModal" class="modal fade in" tabindex="-1"
									role="dialog" aria-labelledby="myModalLabel">
									<div class="modal-dialog modal-lg" role="document">
										<div class="modal-content">
											
											<div class="modal-body">
												
													<div class="container-fluid">
														
														<div class="row">
									
															<!-- LOGIN -->
															<div class="col-md-6 col-sm-6">
									
																<!-- login form -->
																<form:form action="${pageContext.request.contextPath}/login" id="loginForm" modelAttribute="loginBean" method="post" class="sky-form" >
									
																	<header class="size-18 margin-bottom-20">
																		I'm a returning customer
																	</header>
																	
																	<fieldset class="nomargin">
									
																		<label class="input margin-bottom-10">
																			<i class="ico-append fa fa-envelope"></i>
																			<form:input  placeholder="Email address" path="email"></form:input>
																			<b class="tooltip tooltip-bottom-right">Needed to verify your account</b>
																		</label>
																	
																		<label class="input margin-bottom-10">
																			<i class="ico-append fa fa-lock"></i>
																			<form:password path="password"  placeholder="Password"></form:password>
																			<b class="tooltip tooltip-bottom-right">Only latin characters and numbers</b>
																		</label>
									
																		<div class="clearfix note margin-bottom-30">
																			<a class="pull-right" href="#">Forgot Password?</a>
																		</div>
																		
																		<label class="checkbox weight-300">
																			<input type="checkbox" name="checkbox-inline">
																			<i></i> Keep me logged in
																		</label>
									
																	</fieldset>
									
																	<footer>
																		<form:button type="submit" class="btn btn-primary noradius pull-right"><i class="fa fa-check"></i> OK, LOG IN</form:button>
																	</footer>
									
																</form:form>
																<!-- /login form -->
									
																<!-- ALERT -->
																<c:if test="${messageErrorLogin !='' && messageErrorLogin !=null }">
																<div class="alert alert-mini alert-danger margin-bottom-30">
																	<strong>${messageErrorLogin}
																	
																	</strong>
																</div>
																</c:if>
																<!-- /ALERT -->
									
															</div>
															<!-- /LOGIN -->
									
															<!-- SOCIAL LOGIN -->
															<div class="col-md-6 col-sm-6">
																<form action="#" method="post" class="sky-form">
									
																	<header class="size-18 margin-bottom-20">
																		Sign In using your favourite social network
																	</header>
																	
																	<fieldset class="nomargin">
									
																		<div class="row">
																		
																			<div class="col-md-8 col-md-offset-2">
									
																				<a class="btn btn-block btn-social btn-facebook margin-bottom-10">
																					<i class="fa fa-facebook"></i> Sign in with Facebook
																				</a>
									
																				<a class="btn btn-block btn-social btn-twitter margin-bottom-10">
																					<i class="fa fa-twitter"></i> Sign in with Twitter
																				</a>
									
																				<a class="btn btn-block btn-social btn-google margin-bottom-10">
																					<i class="fa fa-google-plus"></i> Sign in with Google
																				</a>
																		
																			</div>
																		</div>
									
																	</fieldset>
									
																	<footer>
																		Don't have an account yet? 
																		<a href="#" data-toggle="modal" data-target="#registerModal" data-dismiss="modal" aria-hidden="true">
																		<strong>Click to register!</strong></a>
																	</footer>
									
																</form>
									
															</div>
															<!-- /SOCIAL LOGIN -->
									
														</div>
									
														
													</div>
												
											</div>
											
										</div>
									</div>
								</div>
								
								
								<!-- Registration Modal -->
								
							<div id="registerModal" class="modal fade in" tabindex="-1"
									role="dialog" aria-labelledby="myModalLabel">
									<div class="modal-dialog modal-lg" role="document">
										<div class="modal-content">
											
											<div class="modal-body">
				<div class="container-fluid">
					
					<div class="row">

						<!-- LOGIN -->
						<div class="col-md-6 col-sm-6">

							<!-- ALERT -->
							<!--
							<div class="alert alert-mini alert-danger margin-bottom-30">
								<strong>Oh snap!</strong> Login Incorrect!
							</div>
							-->
							<!-- /ALERT -->

							<!-- register form -->
							<form class="nomargin sky-form" action="#" method="post">
								<header>
									<i class="fa fa-users"></i> Register
									</header>

								<fieldset class="nomargin">					
									<label class="input margin-bottom-10">
										<i class="ico-append fa fa-envelope"></i>
										<input type="text" placeholder="Email address">
										<b class="tooltip tooltip-bottom-right">Needed to verify your account</b>
									</label>
								
									<label class="input margin-bottom-10">
										<i class="ico-append fa fa-lock"></i>
										<input type="password" placeholder="Password">
										<b class="tooltip tooltip-bottom-right">Only latin characters and numbers</b>
									</label>
								
									<label class="input margin-bottom-10">
										<i class="ico-append fa fa-lock"></i>
										<input type="password" placeholder="Confirm password">
										<b class="tooltip tooltip-bottom-right">Only latin characters and numbers</b>
									</label>

									<div class="row margin-bottom-10">
										<div class="col-md-6">
											<label class="input">
												<input type="text" placeholder="First name">
											</label>
										</div>
										<div class="col col-md-6">
											<label class="input">
												<input type="text" placeholder="Last name">
											</label>
										</div>
									</div>

									<label class="select margin-bottom-10 margin-top-20">
										<select>
											<option value="0" selected disabled>Gender</option>
											<option value="1">Male</option>
											<option value="2">Female</option>
											<option value="3">Other</option>
										</select>
										<i></i>
									</label>
									
									<div class="margin-top-30">
										<label class="checkbox nomargin"><input class="checked-agree" type="checkbox" name="checkbox"><i></i>I agree to the <a href="#" data-toggle="modal" data-target="#termsModal">Terms of Service</a></label>
										<label class="checkbox nomargin"><input type="checkbox" name="checkbox"><i></i>I want to receive news and  special offers</label>
									</div>
								</fieldset>

								<div class="row margin-bottom-20">
									<div class="col-md-12">
										<button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> REGISTER</button>
									</div>
								</div>

							</form>
							<!-- /register form -->

						</div>
						<!-- /LOGIN -->

						<!-- SOCIAL LOGIN -->
						<div class="col-md-6 col-sm-6">
							<form action="#" method="post" class="sky-form">

								<header class="size-18 margin-bottom-20">
									Register using your social network
								</header>
								
								<fieldset class="nomargin">

									<div class="row">
									
										<div class="col-md-8 col-md-offset-2">

											<a class="btn btn-block btn-social btn-facebook margin-bottom-10">
												<i class="fa fa-facebook"></i> Sign up with Facebook
											</a>

											<a class="btn btn-block btn-social btn-twitter margin-bottom-10">
												<i class="fa fa-twitter"></i> Sign up with Twitter
											</a>

											<a class="btn btn-block btn-social btn-google margin-bottom-10">
												<i class="fa fa-google-plus"></i> Sign up with Google
											</a>
									
										</div>
									</div>

								</fieldset>

								<footer>
									Already have an account? <a href="#" data-toggle="modal" data-target="#loginModal" data-dismiss="modal" aria-hidden="true"><strong>Back to login!</strong></a>
								</footer>

							</form>

						</div>
						<!-- /SOCIAL LOGIN -->

					</div>

					
				</div>
				</div>
											
										</div>
									</div>
								</div>
			
			<!-- / -->



			<!-- MODAL -->
			<div class="modal fade" id="termsModal" tabindex="-1" role="dialog" aria-labelledby="myModal" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
								&times;
							</button>
							<h4 class="modal-title" id="myModal">Terms &amp; Conditions</h4>
						</div>

						<div class="modal-body modal-short">
							<h4><b>Introduction</b></h4>
							<p>These terms and conditions govern your use of this website; by using this website, you accept these terms and conditions in full.   If you disagree with these terms and conditions or any part of these terms and conditions, you must not use this website.</p>
							<p>[You must be at least [18] years of age to use this website.  By using this website [and by agreeing to these terms and conditions] you warrant and represent that you are at least [18] years of age.]</p>


							<h4><strong>License to use website</strong></h4>
							<p>Unless otherwise stated, [NAME] and/or its licensors own the intellectual property rights in the website and material on the website.  Subject to the license below, all these intellectual property rights are reserved.</p>
							<p>You may view, download for caching purposes only, and print pages [or [OTHER CONTENT]] from the website for your own personal use, subject to the restrictions set out below and elsewhere in these terms and conditions.</p>
							<p>You must not:</p>
							<ul>
								<li>republish material from this website (including republication on another website);</li>
								<li>sell, rent or sub-license material from the website;</li>
								<li>show any material from the website in public;</li>
								<li>reproduce, duplicate, copy or otherwise exploit material on this website for a commercial purpose;]</li>
								<li>[edit or otherwise modify any material on the website; or]</li>
								<li>[redistribute material from this website [except for content specifically and expressly made available for redistribution].]</li>
							</ul>
							<p>[Where content is specifically made available for redistribution, it may only be redistributed [within your organisation].]</p>

							<h4><strong>Acceptable use</strong></h4>
							<p>You must not use this website in any way that causes, or may cause, damage to the website or impairment of the availability or accessibility of the website; or in any way which is unlawful, illegal, fraudulent or harmful, or in connection with any unlawful, illegal, fraudulent or harmful purpose or activity.</p>
							<p>You must not use this website to copy, store, host, transmit, send, use, publish or distribute any material which consists of (or is linked to) any spyware, computer virus, Trojan horse, worm, keystroke logger, rootkit or other malicious computer software.</p>
							<p>You must not conduct any systematic or automated data collection activities (including without limitation scraping, data mining, data extraction and data harvesting) on or in relation to this website without [NAME'S] express written consent.</p>
							<p>[You must not use this website to transmit or send unsolicited commercial communications.]</p>
							<p>[You must not use this website for any purposes related to marketing without [NAME'S] express written consent.]</p>

							<h4><strong>Restricted access</strong></h4>
							<p>[Access to certain areas of this website is restricted.]  [NAME] reserves the right to restrict access to [other] areas of this website, or indeed this entire website, at [NAME'S] discretion.</p>
							<p>If [NAME] provides you with a user ID and password to enable you to access restricted areas of this website or other content or services, you must ensure that the user ID and password are kept confidential.</p>
							<p>[[NAME] may disable your user ID and password in [NAME'S] sole discretion without notice or explanation.]</p>

							<h4><strong>User content</strong></h4>
							<p>In these terms and conditions, "your user content" means material (including without limitation text, images, audio material, video material and audio-visual material) that you submit to this website, for whatever purpose.</p>
							<p>You grant to [NAME] a worldwide, irrevocable, non-exclusive, royalty-free license to use, reproduce, adapt, publish, translate and distribute your user content in any existing or future media.  You also grant to [NAME] the right to sub-license these rights, and the right to bring an action for infringement of these rights.</p>
							<p>Your user content must not be illegal or unlawful, must not infringe any third party's legal rights, and must not be capable of giving rise to legal action whether against you or [NAME] or a third party (in each case under any applicable law).</p>
							<p>You must not submit any user content to the website that is or has ever been the subject of any threatened or actual legal proceedings or other similar complaint.</p>
							<p>[NAME] reserves the right to edit or remove any material submitted to this website, or stored on [NAME'S] servers, or hosted or published upon this website.</p>
							<p>[Notwithstanding [NAME'S] rights under these terms and conditions in relation to user content, [NAME] does not undertake to monitor the submission of such content to, or the publication of such content on, this website.]</p>

							<h4><strong>No warranties</strong></h4>
							<p>This website is provided "as is" without any representations or warranties, express or implied.  [NAME] makes no representations or warranties in relation to this website or the information and materials provided on this website.</p>
							<p>Without prejudice to the generality of the foregoing paragraph, [NAME] does not warrant that:</p>
							<ul>
								<li>this website will be constantly available, or available at all; or</li>
								<li>the information on this website is complete, true, accurate or non-misleading.</li>
							</ul>
							<p>Nothing on this website constitutes, or is meant to constitute, advice of any kind.  [If you require advice in relation to any [legal, financial or medical] matter you should consult an appropriate professional.]</p>

							<h4><strong>Limitations of liability</strong></h4>
							<p>[NAME] will not be liable to you (whether under the law of contact, the law of torts or otherwise) in relation to the contents of, or use of, or otherwise in connection with, this website:</p>
							<ul>
								<li>[to the extent that the website is provided free-of-charge, for any direct loss;]</li>
								<li>for any indirect, special or consequential loss; or</li>
								<li>for any business losses, loss of revenue, income, profits or anticipated savings, loss of contracts or business relationships, loss of reputation or goodwill, or loss or corruption of information or data.</li>
							</ul>
							<p>These limitations of liability apply even if [NAME] has been expressly advised of the potential loss.</p>

							<h4><strong>Exceptions</strong></h4>
							<p>Nothing in this website disclaimer will exclude or limit any warranty implied by law that it would be unlawful to exclude or limit; and nothing in this website disclaimer will exclude or limit [NAME'S] liability in respect of any:</p>
							<ul>
								<li>death or personal injury caused by [NAME'S] negligence;</li>
								<li>fraud or fraudulent misrepresentation on the part of [NAME]; or</li>
								<li>matter which it would be illegal or unlawful for [NAME] to exclude or limit, or to attempt or purport to exclude or limit, its liability.</li>
							</ul>

							<h4><strong>Reasonableness</strong></h4>
							<p>By using this website, you agree that the exclusions and limitations of liability set out in this website disclaimer are reasonable.</p>
							<p>If you do not think they are reasonable, you must not use this website.</p>

							<h4><strong>Other parties</strong></h4>
							<p>[You accept that, as a limited liability entity, [NAME] has an interest in limiting the personal liability of its officers and employees.  You agree that you will not bring any claim personally against [NAME'S] officers or employees in respect of any losses you suffer in connection with the website.]</p>
							<p>[Without prejudice to the foregoing paragraph,] you agree that the limitations of warranties and liability set out in this website disclaimer will protect [NAME'S] officers, employees, agents, subsidiaries, successors, assigns and sub-contractors as well as [NAME].</p>

							<h4><strong>Unenforceable provisions</strong></h4>
							<p>If any provision of this website disclaimer is, or is found to be, unenforceable under applicable law, that will not affect the enforceability of the other provisions of this website disclaimer.</p>

							<h4><strong>Indemnity</strong></h4>
							<p>You hereby indemnify [NAME] and undertake to keep [NAME] indemnified against any losses, damages, costs, liabilities and expenses (including without limitation legal expenses and any amounts paid by [NAME] to a third party in settlement of a claim or dispute on the advice of [NAME'S] legal advisers) incurred or suffered by [NAME] arising out of any breach by you of any provision of these terms and conditions[, or arising out of any claim that you have breached any provision of these terms and conditions].</p>

							<h4><strong>Breaches of these terms and conditions</strong></h4>
							<p>Without prejudice to [NAME'S] other rights under these terms and conditions, if you breach these terms and conditions in any way, [NAME] may take such action as [NAME] deems appropriate to deal with the breach, including suspending your access to the website, prohibiting you from accessing the website, blocking computers using your IP address from accessing the website, contacting your internet service provider to request that they block your access to the website and/or bringing court proceedings against you.</p>

							<h4><strong>Variation</strong></h4>
							<p>[NAME] may revise these terms and conditions from time-to-time.  Revised terms and conditions will apply to the use of this website from the date of the publication of the revised terms and conditions on this website.  Please check this page regularly to ensure you are familiar with the current version.</p>

							<h4><strong>Assignment</strong></h4>
							<p>[NAME] may transfer, sub-contract or otherwise deal with [NAME'S] rights and/or obligations under these terms and conditions without notifying you or obtaining your consent.</p>
							<p>You may not transfer, sub-contract or otherwise deal with your rights and/or obligations under these terms and conditions.</p>

							<h4><strong>Severability</strong></h4>
							<p>If a provision of these terms and conditions is determined by any court or other competent authority to be unlawful and/or unenforceable, the other provisions will continue in effect.  If any unlawful and/or unenforceable provision would be lawful or enforceable if part of it were deleted, that part will be deemed to be deleted, and the rest of the provision will continue in effect.</p>

							<h4><strong>Entire agreement</strong></h4>
							<p>These terms and conditions [, together with [DOCUMENTS],] constitute the entire agreement between you and [NAME] in relation to your use of this website, and supersede all previous agreements in respect of your use of this website.</p>

							<h4><strong>Law and jurisdiction</strong></h4>
							<p>These terms and conditions will be governed by and construed in accordance with [GOVERNING LAW], and any disputes relating to these terms and conditions will be subject to the [non-]exclusive jurisdiction of the courts of [JURISDICTION].</p>

							<h4><strong>About these website terms and conditions</strong></h4>
							<p>
								We created these website terms and conditions with the help of a free website terms and conditions form developed by Contractology and available at <a href="#">www.yourwebsite.com</a>.
								Contractology supply a wide variety of commercial legal documents, such as <a href="#">template data protection statements</a>.
							</p>

							<h4><strong>Registrations and authorisations</strong></h4>
							<p>[[NAME] is registered with [TRADE REGISTER].  You can find the online version of the register at [URL].  [NAME'S] registration number is [NUMBER].]</p>
							<p>[[NAME] is subject to [AUTHORISATION SCHEME], which is supervised by [SUPERVISORY AUTHORITY].]</p>
							<p>[[NAME] is registered with [PROFESSIONAL BODY].  [NAME'S] professional title is [TITLE] and it has been granted in [JURISDICTION].  [NAME] is subject to the [RULES] which can be found at [URL].]</p>
							<p>[[NAME] subscribes to the following code[s] of conduct: [CODE(S) OF CONDUCT].  [These codes/this code] can be consulted electronically at [URL(S)].</p>
							<p>[[NAME'S] [TAX] number is [NUMBER].]]</p>

							<h4><strong>[NAME'S] details</strong></h4>
							<p>The full name of [NAME] is [FULL NAME].</p>
							<p>[[NAME] is registered in [JURISDICTION] under registration number [NUMBER].]</p>
							<p>[NAME'S] [registered] address is [ADDRESS].</p>
							<p>You can contact [NAME] by email to [EMAIL].</p>


							<p class="margin-top30">
								<strong>By using this  WEBSITE TERMS AND CONDITIONS template document, you agree to the 
								<a href="#">terms and conditions</a> set out on 
								<a href="#">yourdomain.com</a>.  You must retain the credit 
								set out in the section headed "ABOUT THESE WEBSITE TERMS AND CONDITIONS".  Subject to the licensing restrictions, you should 
								edit the document, adapting it to the requirements of your jurisdiction, your business and your 
								website.  If you are not a lawyer, we recommend that you take professional legal advice in relation to the editing and 
								use of the template.</strong>
							</p>


						</div>

						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
							<button type="button" class="btn btn-primary" id="terms-agree"><i class="fa fa-check"></i> I Agree</button>
							
							<a href="page-print-terms.html" target="_blank" rel="nofollow" class="btn btn-danger pull-left"><i class="fa fa-print"></i><span class="hidden-xs"> Print</span></a>
						</div>

					</div><!-- /.modal-content -->
				</div><!-- /.modal-dialog -->
			</div>

	<!-- JAVASCRIPT FILES -->
		<script type="text/javascript">var plugin_path = '${pageContext.request.contextPath}'+'/assets/plugins/'</script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery/jquery-2.1.4.min.js"></script>

		<script type="text/javascript" src="${pageContext.request.contextPath}/assets/javascript/scripts.js"></script>
		
		<!-- STYLESWITCHER - REMOVE -->
		<script async type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/styleswitcher/styleswitcher.js"></script>

		<!-- PAGELEVEL SCRIPTS -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/assets/javascript/contact.js"></script>

		<!-- 
			GMAP.JS 
			http://hpneo.github.io/gmaps/
		-->
		<!-- <script type="text/javascript" src="//maps.google.com/maps/api/js?sensor=true"></script> -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/gmaps.js"></script>
		<script type="text/javascript">

			jQuery(document).ready(function(){

				/**
					@BASIC GOOGLE MAP
				**/
				var map2 = new GMaps({
					div: '#map2',
					lat: -12.043333,
					lng: -77.028333,
					scrollwheel: false
				});

				var marker = map2.addMarker({
					lat: -12.043333,
					lng: -77.028333,
					title: 'Company, Inc.'
				});
				
				$('#myModal').on('shown.bs.modal', function () {
				  $('#myInput').focus()
				});
				
				    

			});
			
	$(window).load(function(){
	if('${messageErrorLogin}'!='' && '${messageErrorLogin}'!=undefined)
        $('#loginModal').modal('show');
		<c:remove var="messageErrorLogin" scope="request"/>
				
    });
    


		</script>

	</body>
</html>