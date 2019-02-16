<%@include file="../include.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- Login -->
<%@include file="login.jsp"%>
<!-- Login  -->
<!-- Registraion-->
<%@include file="registration.jsp"%>
<!-- Registraion-->
<!-- Apparal Selection Modal -->
<%@include file="../design/apparelList.jsp"%>
<!-- wrapper -->
<div id="wrapper">

	<!-- Top Bar -->
	<div id="topBar">
		<div class="container">
			

			<!-- right -->
			<div class="social-icons pull-right hidden-xs">
						<a href="#" class="social-icon social-icon-sm social-icon-transparent social-facebook" data-toggle="tooltip" data-placement="bottom" title="Facebook">
							<i class="icon-facebook"></i>
							<i class="icon-facebook"></i>
						</a>
						<a href="#" class="social-icon social-icon-sm social-icon-transparent social-twitter" data-toggle="tooltip" data-placement="bottom" title="Twitter">
							<i class="icon-twitter"></i>
							<i class="icon-twitter"></i>
						</a>
						<a href="#" class="social-icon social-icon-sm social-icon-transparent social-gplus" data-toggle="tooltip" data-placement="bottom" title="Google Plus">
							<i class="icon-gplus"></i>
							<i class="icon-gplus"></i>
						</a>
						<a href="#" class="social-icon social-icon-sm social-icon-transparent social-linkedin" data-toggle="tooltip" data-placement="bottom" title="Linkedin">
							<i class="icon-linkedin"></i>
							<i class="icon-linkedin"></i>
						</a>
						<a href="#" class="social-icon social-icon-sm social-icon-transparent social-flickr" data-toggle="tooltip" data-placement="bottom" title="Flickr">
							<i class="icon-flickr"></i>
							<i class="icon-flickr"></i>
						</a>
					</div>
			
			<ul class="top-links list-inline pull-right">
				<li class="text-welcome hidden-xs">Welcome to the Story of Silk</li>
				<c:choose>
					<c:when test="${userAccountForm.isLoggedIn}">
						<li><a class="dropdown-toggle no-text-underline"
							data-toggle="dropdown" href="#"><i
								class="fa fa-user hidden-xs"></i>Hi <strong><c:out
										value=" ${userAccountForm.firstName} "></c:out></strong><i
								class="glyphicon glyphicon-menu-down"></i></a>
							<ul class="dropdown-menu pull-right">
								<li><a tabindex="-1" href="<c:url value="account" />"><i class="fa fa-history"></i>
										MY ACCOUNT</a></li>
								<li class="divider"></li>
								<li><a tabindex="-1" href="#"><i class="fa fa-bookmark"></i>
										ORDERS</a></li>
								<li><a tabindex="-1" href="#"><i class="fa fa-edit"></i>
										MY DESIGNS</a></li>
								<li class="divider"></li>
								<li><a tabindex="-1" href="<c:url value="logout"/>"><i
										class="glyphicon glyphicon-off"></i> LOGOUT</a></li>
							</ul></li>
					</c:when>
					<c:otherwise>
						<li class="hidden-xs"><a href="" data-toggle="modal"
							data-target="#loginModal">LOGIN</a></li>
						<li class="hidden-xs"><a href="" data-toggle="modal"
							data-target="#registerModal">REGISTER</a></li>
					</c:otherwise>
				</c:choose>
			</ul>

			<!-- left -->
			<ul class="top-links list-inline">
				<li class="hidden-xs"><a href="page-faq-1.html">FAQ</a></li>
				<li><a class="dropdown-toggle no-text-underline"
					data-toggle="dropdown" href="#"><img class="flag-lang"
						src="assets/images/flags/in.png" width="16" height="11" alt="lang" />
						ENGLISH</a>
					<ul class="dropdown-langs dropdown-menu">
						<li><a tabindex="-1" href="#"><img class="flag-lang"
								src="assets/images/flags/us.png" width="16" height="11"
								alt="lang" /> ENGLISH</a></li>
						<li class="divider"></li>
						<li><a tabindex="-1" href="#"><img class="flag-lang"
								src="assets/images/flags/de.png" width="16" height="11"
								alt="lang" /> GERMAN</a></li>
						<li><a tabindex="-1" href="#"><img class="flag-lang"
								src="assets/images/flags/ru.png" width="16" height="11"
								alt="lang" /> RUSSIAN</a></li>
						<li><a tabindex="-1" href="#"><img class="flag-lang"
								src="assets/images/flags/it.png" width="16" height="11"
								alt="lang" /> ITALIAN</a></li>
					</ul></li>
				<li><a class="dropdown-toggle no-text-underline"
					data-toggle="dropdown" href="#">INR</a>
					<ul class="dropdown-langs dropdown-menu">
						<li><a tabindex="-1" href="#">USD</a></li>
						<li class="divider"></li>
						<li><a tabindex="-1" href="#">EUR</a></li>
						<li><a tabindex="-1" href="#">GBP</a></li>
					</ul></li>
			</ul>
			

		</div>
	</div>
	<!-- /Top Bar -->


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
	<div id="header" class="sticky clearfix">

		<!-- SEARCH HEADER -->
		<div class="search-box over-header">
			<a id="closeSearch" href="#" class="glyphicon glyphicon-remove"></a>

			<form action="page-search-result-1.html" method="get">
				<input type="text" class="form-control" placeholder="SEARCH" />
			</form>
		</div>
		<!-- /SEARCH HEADER -->

		<!-- TOP NAV -->
		<header id="topNav">
			<div class="container">

				<!-- Mobile Menu Button -->
				<button class="btn btn-mobile" data-toggle="collapse"
					data-target=".nav-main-collapse">
					<i class="fa fa-bars"></i>
				</button>

				<!-- BUTTONS -->
				<ul class="pull-right nav nav-pills nav-second-main">

					<!-- SEARCH -->
					<li class="search"><a href="javascript:;"> <i
							class="fa fa-search"></i>
					</a></li>
					<!-- /SEARCH -->

					<!-- QUICK SHOP CART -->
					<li class="quick-cart"><a href="#"> <span
							class="badge badge-aqua btn-xs badge-corner">2</span> <i
							class="fa fa-shopping-cart"></i>
					</a>
						<div class="quick-cart-box">
							<h4>Shop Cart</h4>

							<div class="quick-cart-wrapper">

								<a href="#">
									<!-- cart item --> <img
									src="assets/images/demo/people/300x300/4-min.jpg" width="45"
									height="45" alt="" />
									<h6>
										<span>2x</span> RED BAG WITH HUGE POCKETS
									</h6> <small>$37.21</small>
								</a>
								<!-- /cart item -->

								<a href="#">
									<!-- cart item --> <img
									src="assets/images/demo/people/300x300/5-min.jpg" width="45"
									height="45" alt="" />
									<h6>
										<span>2x</span> THIS IS A VERY LONG TEXT AND WILL BE TRUNCATED
									</h6> <small>$17.18</small>
								</a>
								<!-- /cart item -->

								<!-- cart no items example -->
								<!--
										<a class="text-center" href="#">
											<h6>0 ITEMS ON YOUR CART</h6>
										</a>
										-->

							</div>

							<!-- quick cart footer -->
							<div class="quick-cart-footer clearfix">
								<a href="shop-cart.html"
									class="btn btn-primary btn-xs pull-right">VIEW CART</a> <span
									class="pull-left"><strong>TOTAL:</strong> $54.39</span>
							</div>
							<!-- /quick cart footer -->

						</div></li>
					<!-- /QUICK SHOP CART -->

				</ul>
				<!-- /BUTTONS -->


				<!-- Logo -->
				<a class="logo pull-left" href="index.html"> <img
					src="assets/images/sos-logo.png" alt="" width="200px" />
				</a>


				<!-- 
							Top Nav 
							
							AVAILABLE CLASSES:
							submenu-dark = dark sub menu
						-->
				<div class="navbar-collapse pull-right nav-main-collapse collapse">
					<nav class="nav-main">

						<!--
									NOTE
									
									For a regular link, remove "dropdown" class from LI tag and "dropdown-toggle" class from the href.
									Direct Link Example: 

									<li>
										<a href="#">HOME</a>
									</li>
								-->
						<ul id="topMain" class="nav nav-pills nav-main">
							<li class="active">
								<!-- HOME --> <a class="" href="<c:url value="welcome" />"> HOME </a>
								
							</li>
							<li class="">
								<!-- PAGES --> <a class="" data-toggle="modal" data-target=".genderSelection" href="#">START DESIGNING</a>
								
							</li>
							<li class="dropdown">
								<!-- FEATURES --> <a class="dropdown-toggle" href="#">
									HOW IT WORKS </a>
								<ul class="dropdown-menu">
									<li class="dropdown"><a class="dropdown-toggle" href="#">
											<i class="et-browser"></i> SLIDERS
									</a>
										
											
									<li class=""><a class="" href="#">
											<i class="et-magnifying-glass"></i> SEARCH LAYOUTS
									</a>
										</li>
									
									<li><a target="_blank" href="../Admin/HTML/"><span
											class="label label-success pull-right">BONUS</span><i
											class="et-gears"></i> ADMIN PANEL</a></li>
								</ul>
							</li>
							<li class="mega-menu">
								<!-- PORTFOLIO --> <a class="" href="<c:url value="blog" />">
									BLOG </a>
								
							</li>
							<li class="">
								<!-- BLOG --> <a class="" href="#"> ABOUT US </a>
								
							</li>
							<!-- <li class="">
								SHOP <a class="" href="#"> SHOP </a>
								
							</li>
							<li class="mega-menu">
								SHORTCODES <a class="" href="#">
									SHORTCODES </a>
								
							</li> -->
						</ul>

					</nav>
				</div>

			</div>
		</header>
		<!-- /Top Nav -->

	</div>
