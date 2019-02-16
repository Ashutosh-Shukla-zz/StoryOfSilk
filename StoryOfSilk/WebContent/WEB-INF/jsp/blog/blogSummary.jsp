<%@include file="../include.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- 
				PAGE HEADER 
				
				CLASSES:
					.page-header-xs	= 20px margins
					.page-header-md	= 50px margins
					.page-header-lg	= 80px margins
					.page-header-xlg= 130px margins
					.dark			= dark page header

					.shadow-before-1 	= shadow 1 header top
					.shadow-after-1 	= shadow 1 header bottom
					.shadow-before-2 	= shadow 2 header top
					.shadow-after-2 	= shadow 2 header bottom
					.shadow-before-3 	= shadow 3 header top
					.shadow-after-3 	= shadow 3 header bottom
			-->
			<section class="page-header dark page-header-xs">
				<div class="container">

					<h1>BLOG</h1>

					<!-- breadcrumbs -->
					<ol class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li><a class="active" href="#">Blog</a></li>
					</ol>
					<!-- /breadcrumbs -->
				</div>
			</section>
			<!-- /PAGE HEADER -->




			<!-- -->
			<section>
				<div class="container">
				
				
					<div id="blog" class="clearfix blog-isotope blog-isotope-2 ">
					<c:forEach var="BlogBean" items="${listOfBlogs }">
					<c:if test="${BlogBean.isEnabled }">
						<!-- POST ITEM -->
						<div class="blog-post-item">
					
							<!-- carousel -->
							<!--Setting the current BlogBean in Session  -->
							
							<div class="flexslider" data-arrowNav="false" data-slideshowSpeed="3000">
								<ul class="slides">
									<c:forEach items="${BlogBean.imagePath}" var="imgSrc">
									<!-- Slide 1 -->
									<li>
											<img class="img-responsive" src="${imgSrc}" width="600" height="399" alt="${BlogBean.blogTitle }">
									</li>
									</c:forEach>
									

								</ul>
							</div>
							
							<!-- /carousel -->


							<h2><a href="<c:url value="blog-detail?id=${BlogBean.postId}" />">${BlogBean.blogTitle }</a></h2>

							<ul class="blog-post-info list-inline">
								<li>
										<i class="fa fa-clock-o"></i> 
										<span class="font-lato">${BlogBean.datePosted }</span>
								</li>
								<li>
										<i class="fa fa-comment-o"></i> 
										<span class="font-lato">${BlogBean.noOfComments }</span>
								</li>
								<li>
										<i class="fa fa-user"></i> 
										<span class="font-lato">${BlogBean.firstName } ${BlogBean.lastName}</span>
								</li>
								<li>
										<i class="fa fa-users"></i> 
										<span class="">${BlogBean.views}</span>
								</li>
							</ul>
							<c:set var="article" value="${BlogBean.article }" />
							<c:set var="trimmedArticle" value="${fn:substring(article,0,150)}" />
							
							<p>${trimmedArticle}</p>

							<a href="<c:url value="blog-detail?id=${BlogBean.postId}" />" class="btn btn-reveal btn-default ">
								<i class="fa fa-plus"></i>
								<span>Read More</span>
							</a>

						</div>
						<!-- /POST ITEM -->
						</c:if>
						</c:forEach>

					</div>



							<!-- PAGINATION -->
							<div class="text-left">
								<!-- Pagination Default -->
								<ul class="pagination nomargin">
									<li><a href="#">&laquo;</a></li>
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">&raquo;</a></li>
								</ul>
								<!-- /Pagination Default -->
							</div>
							<!-- /PAGINATION -->

				</div>
			</section>
			<!-- / -->
