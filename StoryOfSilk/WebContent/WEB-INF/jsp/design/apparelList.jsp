<%@include file="../include.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>	

<div class="modal fade bs-example-modal-lg genderSelection" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg-75">
		<div class="modal-content">

			<!-- header modal -->
			

			<!-- body modal -->
			<div class="modal-body">
			
			<!-- -->
				<div class="container-fluid">

					<div id="portfolio" class="portfolio-nogutter">
						<div class="row mix-grid">

							<div class="col-md-6 col-sm-6 mix development"><!-- item -->

								<div class="item-box">
									<figure>
									<a href=""  data-toggle="modal" data-target=".womenApparels">
										<span class="item-hover">
											<span class="overlay dark-5"></span>
											<span class="inner">

												<!-- lightbox -->
												<div class="ico-rounded">
													<span class="fa fa-check size-40"></span>
												</div>
												<!-- details -->
												<!-- <a class="ico-rounded" href="portfolio-single-slider.html">
													<span class="glyphicon glyphicon-option-horizontal size-20"></span>
												</a> -->

											</span>
										</span>
										
										<!-- overlay title -->
										<div class="item-box-overlay-title">
											<h3>WOMEN</h3>
											
										</div><!-- /overlay title -->
										
										<img class="img-responsive" src="assets/test/women.jpg" width="800" height="500" alt="">
										</a>
									</figure>
								</div>

							</div><!-- /item -->
							
							<div class="col-md-6 col-sm-6 mix development"><!-- item -->

								<div class="item-box">
									<figure>
									<a href=""  data-toggle="modal" data-target=".menApparels">
										<span class="item-hover">
											<span class="overlay dark-5"></span>
											<span class="inner">

												<!-- lightbox -->
												<div class="ico-rounded lightbox">
													<span class="fa fa-check size-40"></span>
												</div>

												<!-- details -->
												<!-- <a class="ico-rounded" href="portfolio-single-slider.html">
													<span class="glyphicon glyphicon-option-horizontal size-20"></span>
												</a> -->

											</span>
										</span>
										
										<!-- overlay title -->
										<div class="item-box-overlay-title">
											<h2>MEN</h2>
											
										</div><!-- /overlay title -->
										
										
										<img class="img-responsive" src="assets/test/men.jpg" width="800" height="500" alt="">
										</a>
									</figure>
								</div>

							</div><!-- /item -->

						</div>
						</div>
			</div>

		</div>
	</div>
</div>
</div>

<!-- Womens Apparels List -->

<div class="modal fade bs-example-modal-lg womenApparels" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg-75">
		<div class="modal-content">

			<!-- header modal -->
			

			<!-- body modal -->
			<div class="modal-body">
			
			<!-- -->
				<div class="container-fluid">
				
				

				<div id="portfolio" class="portfolio-nogutter">

						<div class="row mix-grid">

							<c:forEach items="${listOfFemaleApparel}" var="womenApparel">
							<div class="col-md-5th col-sm-4 mix development"><!-- item -->

								<div class="item-box">
									<figure>
										<span class="item-hover">
											<span class="overlay dark-5"></span>
											<span class="inner">

												<!-- lightbox -->
												<a class="ico-rounded" href="${pageContext.request.contextPath}/design?id=${womenApparel.apparelId}">
													<span class="fa fa-plus size-20"></span>
												</a>

												<!-- details -->
												<a class="ico-rounded" href="${pageContext.request.contextPath}/design?id=${womenApparel.apparelId}">
													<span class="glyphicon glyphicon-option-horizontal size-20"></span>
												</a>

											</span>
										</span>

										<img class="img-responsive" src="${womenApparel.baseImage}" width="600" height="399" alt="">
									</figure>

									<div class="item-box-desc">
										<h3>${womenApparel.apparelName}</h3>
										<ul class="list-inline categories nomargin">
											<li><a href="${pageContext.request.contextPath}/design?id=${womenApparel.apparelId}">Photography</a></li>
											<li><a href="${pageContext.request.contextPath}/design?id=${womenApparel.apparelId}">Design</a></li>
										</ul>
									</div>

								</div>

							</div><!-- /item -->
							</c:forEach>

							
							</div>
							</div>
				</div>

		</div>
	</div>
</div>
</div>


<!-- Mens Apparels List -->

<div class="modal fade bs-example-modal-lg menApparels" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg-75">
		<div class="modal-content">

			<!-- header modal -->
			

			<!-- body modal -->
			<div class="modal-body">
			
			<!-- -->
				<div class="container-fluid">
				<h1>HI Men</h1>
				
				</div>

		</div>
	</div>
</div>
</div>