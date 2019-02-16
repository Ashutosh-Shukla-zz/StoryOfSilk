<%@include file="../include.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<section class="page-header dark page-header-xs">
				<div class="container">

					<h1>BLOG</h1>

					<!-- breadcrumbs -->
					<ol class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li><a href="#">Blog</a></li>
						<li class="active">${blogBean.blogTitle}</li>
					</ol><!-- /breadcrumbs -->

				</div>
			</section>
			<!-- /PAGE HEADER -->




			<!-- -->
			<section>
				<div class="container">

					<h1 class="blog-post-title">${blogBean.blogTitle}</h1>
					<ul class="blog-post-info list-inline">
						<li>
							<a href="#">
								<i class="fa fa-clock-o"></i> 
								<span class="font-lato">${blogBean.datePosted}</span>
							</a>
						</li>
						<li>
							<a href="#">
								<i class="fa fa-comment-o"></i> 
								<span class="font-lato">${blogBean.noOfComments}</span>
							</a>
						</li>
						<li>
							<c:if test="${not empty blogBean.listOfCategories}">
							<i class="fa fa-folder-open-o"></i> 
							<c:forEach items="${blogBean.listOfCategories}" var="category">
							<a class="category" href="#">
								<span class="font-lato"><c:out value="${category}" /></span>
							</a>
							</c:forEach>
							</c:if>
						</li>
						<li>
							<a href="#">
								<i class="fa fa-user"></i> 
								<span class="font-lato">${blogBean.firstName} ${blogBean.lastName}</span>
							</a>
						</li>
					</ul>

					<!-- OWL SLIDER -->
					<div class="owl-carousel buttons-autohide controlls-over" data-plugin-options='{"items": 1, "autoPlay": 4500, "autoHeight": false, "navigation": true, "pagination": true, "transitionStyle":"fadeUp", "progressBar":"false"}'>
						<c:forEach var="imgSrc" items="${blogBean.imagePath}">
						<a class="lightbox" href="${imgSrc}" data-plugin-options='{"type":"image"}'>
							<img class="img-responsive" src="${imgSrc}" alt="" />
						</a>
						</c:forEach>
						<!-- <a class="lightbox" href="assets/images/demo/1200x800/3-min.jpg" data-plugin-options='{"type":"image"}'>
							<img class="img-responsive" src="assets/images/demo/content_slider/3-min.jpg" alt="" />
						</a>
						<a class="lightbox" href="assets/images/demo/1200x800/21-min.jpg" data-plugin-options='{"type":"image"}'>
							<img class="img-responsive" src="assets/images/demo/content_slider/21-min.jpg" alt="" />
						</a> -->
					</div>
					<!-- /OWL SLIDER -->

					<!-- IMAGE -->
					<!--
					<figure class="margin-bottom-20">
						<img class="img-responsive" src="assets/images/demo/content_slider/10-min.jpg" alt="img" />
					</figure>
					-->
					<!-- /IMAGE -->

					<!-- VIDEO -->
					<!--
					<div class="margin-bottom-20 embed-responsive embed-responsive-16by9">
						<iframe class="embed-responsive-item" src="http://player.vimeo.com/video/8408210" width="800" height="450"></iframe>
					</div>
					-->
					<!-- /VIDEO -->


					<!-- article content -->
					<p class="dropcap">${blogBean.article}</p>
					<!-- BLOCKQUOTE -->
					<!-- <blockquote>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
						<cite>Source Title</cite>
					</blockquote> -->

					
					<!-- /article content -->


					<div class="divider divider-dotted"><!-- divider --></div>


					<!-- TAGS -->
					<c:forEach var="tag" items="${blogBean.listOfTags}">
					<a class="tag" href="#">
						<span class="txt">${tag}</span>
						<span class="num">-</span>
					</a>
					</c:forEach>
					
					<!-- /TAGS -->



					<!-- SHARE POST -->
					<div class="clearfix margin-top-30">

						<span class="pull-left margin-top-6 bold hidden-xs">
							Share Post: 
						</span>

						<a href="#" class="social-icon social-icon-sm social-icon-transparent social-facebook pull-right" data-toggle="tooltip" data-placement="top" title="Facebook">
							<i class="icon-facebook"></i>
							<i class="icon-facebook"></i>
						</a>

						<a href="#" class="social-icon social-icon-sm social-icon-transparent social-twitter pull-right" data-toggle="tooltip" data-placement="top" title="Twitter">
							<i class="icon-twitter"></i>
							<i class="icon-twitter"></i>
						</a>

						<a href="#" class="social-icon social-icon-sm social-icon-transparent social-gplus pull-right" data-toggle="tooltip" data-placement="top" title="Google plus">
							<i class="icon-gplus"></i>
							<i class="icon-gplus"></i>
						</a>

						<a href="#" class="social-icon social-icon-sm social-icon-transparent social-linkedin pull-right" data-toggle="tooltip" data-placement="top" title="Linkedin">
							<i class="icon-linkedin"></i>
							<i class="icon-linkedin"></i>
						</a>

						<a href="#" class="social-icon social-icon-sm social-icon-transparent social-pinterest pull-right" data-toggle="tooltip" data-placement="top" title="Pinterest">
							<i class="icon-pinterest"></i>
							<i class="icon-pinterest"></i>
						</a>

						<a href="#" class="social-icon social-icon-sm social-icon-transparent social-call pull-right" data-toggle="tooltip" data-placement="top" title="Email">
							<i class="icon-email3"></i>
							<i class="icon-email3"></i>
						</a>

					</div>
					<!-- /SHARE POST -->


					<div class="divider"><!-- divider --></div>

					
					<!-- <ul class="pager">
						<li class="previous"><a class="noborder" href="#">&larr; Previous Post</a></li>
						<li class="next"><a class="noborder" href="#">Next Post &rarr;</a></li>
					</ul>


					<div class="divider">divider</div> -->

					
					<!-- COMMENTS -->
					<div id="comments" class="comments">

						<h4 class="page-header margin-bottom-60 size-20">
							<span>${blogBean.noOfComments}</span> COMMENTS
						</h4>
							
								<div class="alert alert-mini alert-danger margin-bottom-30">
									<strong><c:out value="${commentUpdated}" /> </strong>
								</div>
						<c:forEach var="commentBean" items="${blogBean.listOfComments}">
						<!-- comment item -->
						<div class="comment-item">

							<!-- user-avatar -->
							<span class="user-avatar">
								<img class="media-object" src="assets/images/avatar.png" width="64" height="64" alt="">
							</span>

							<div class="media-body">
							<c:if test="${userAccountForm.isLoggedIn}">
								<a href="" onclick="addreply(${commentBean.value.commentId});" class="scrollTo comment-reply">reply</a></c:if>
								<h4 class="media-heading bold">${commentBean.value.firstName} ${commentBean.value.lastName}</h4>
								<small class="block">${commentBean.value.dateOfComment}</small>
								${commentBean.value.commentText} 
								
								<c:forEach items="${commentBean.value.listOfReplies}" var="replyComment">
								<!-- comment reply -->
								<div class="media">

									<!-- user-avatar -->
									<span class="user-avatar">
										<img class="media-object" src="assets/images/avatar.png" width="64" height="64" alt="">
									</span>

									<div class="media-body">
										<h4 class="media-heading bold">${replyComment.firstName} ${replyComment.lastName}</h4>
										<small class="block">${replyComment.dateOfComment}</small>
									${replyComment.commentText}
									</div>
								</div>
								</c:forEach>
							</div>
							<div id="replyBox${commentBean.value.commentId}" class="hidden margin-top-30">
								<form:form action="addComment" modelAttribute="blogBean" method="post">
									<input type="hidden" value="${commentBean.value.commentId}" name="newComment.parentId">
									<input type="hidden" value="true" name="newComment.isReplyComment">
									<div class="row">
										<div class="form-group">
											<div class="col-md-6">
												<label>COMMENT</label>
												<form:textarea required="required" maxlength="5000" rows="3" class="form-control" path="newComment.commentText" id="comment"></form:textarea>
											</div>
										</div>
									</div>
		
									<div class="row">
										<div class="col-md-6">
		
											<form:button type="submit" class="btn btn-3d btn btn-reveal btn-black">
												<i class="fa fa-check"></i>
												<span>SUBMIT MESSAGE</span>
											</form:button>
											<button type="reset" class="btn btn-3d btn btn-black" onclick="hidereply(${commentBean.value.commentId});">
										<span>CANCEL</span>
									</button>
		
										</div>
									</div>
		
								</form:form>
							
							</div>
						</div>
						</c:forEach>

					<c:choose>
					<c:when test="${userAccountForm.isLoggedIn}">
						<h4 class="page-header size-20 margin-bottom-60 margin-top-100">
							LEAVE A <span>COMMENT</span>
						</h4>
					
						<!-- Form -->
						<form:form action="addComment" modelAttribute="blogBean" method="post">
							<input type="hidden" value="0" name="newComment.parentId">
							<input type="hidden" value="false" name="newComment.isReplyComment">
							<div class="row">
								<div class="form-group">
									<div class="col-md-12">
										<label>COMMENT</label>
										<form:textarea required="required" maxlength="5000" rows="5" class="form-control" path="newComment.commentText" id="comment"></form:textarea>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12">

									<form:button type="submit" class="btn btn-3d btn-lg btn-reveal btn-black">
										<i class="fa fa-check"></i>
										<span>SUBMIT MESSAGE</span>
									</form:button>
									
								</div>
							</div>

						</form:form>
						<!-- /Form -->
					</c:when>
					<c:otherwise>
					<h4 class="page-header size-20 margin-bottom-60 margin-top-100">
							PLEASE LOGIN TO	 <span>COMMENT</span>
						</h4>
					</c:otherwise>
					</c:choose>
					</div>
					<!-- /COMMENTS -->


				</div>
			</section>
			<!-- / -->
			
			<script>
			function addreply(id){
				var replybox = document.getElementById("replyBox"+id);
				replybox.className = "margin-top-30";
			}
			
			function hidereply(id){
				var replybox = document.getElementById("replyBox"+id);
				replybox.className = "hidden margin-top-30";
			}
			</script>