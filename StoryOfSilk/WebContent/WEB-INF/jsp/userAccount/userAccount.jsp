<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="../include.jsp" %>
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
			<section class="page-header page-header-xs">
				<div class="container">

					<!-- breadcrumbs -->
					<ol class="breadcrumb breadcrumb-inverse">
						<li><a href="#">Home</a></li>
						<li class="active"><c:out value=" ${userAccountForm.firstName} "></c:out></li>
					</ol><!-- /breadcrumbs -->

				</div>
			</section>
			<!-- /PAGE HEADER -->




			<!-- -->
			<section>
				<div class="container">
					<!-- RIGHT -->
					<div class="col-lg-9 col-md-9 col-sm-8 col-lg-push-3 col-md-push-3 col-sm-push-4 margin-bottom-80">

						<ul class="nav nav-tabs nav-top-border">
							<li class="active"><a href="#info" data-toggle="tab">Personal Info</a></li>
							<li><a href="#avatar" data-toggle="tab">Password</a></li>
							<!-- <li><a href="#password" data-toggle="tab">Password</a></li> -->
							<!-- <li><a href="#privacy" data-toggle="tab">Privacy</a></li> -->
						</ul>

						<div class="tab-content margin-top-20">

							<!-- PERSONAL INFO TAB -->
							<div class="tab-pane fade in active" id="info">
							<c:if test="${not empty messageOnScreen}" >
								<div class="alert alert-success margin-bottom-30"><!-- SUCCESS -->
									<button type="button" class="close" data-dismiss="alert">
										<span aria-hidden="true">×</span>
										<span class="sr-only">Close</span>
									</button>
									<strong>${messageOnScreen}</strong>
								</div>
							</c:if>
								<form:form role="form" method="POST" action="updateUser" id="userAccountForm" modelAttribute="userAccountForm" commandName="userAccountForm">
									<div class="form-group">
										<label class="control-label">First Name</label>
										<form:input path="firstName" id="firstName" type="text"  placeholder="${userAccountForm.firstName }"  class="form-control"></form:input>
									</div>
									<div class="form-group">
										<label class="control-label">Last Name</label>
										<form:input path="lastName" id="lastName" type="text" placeholder="${userAccountForm.lastName }" class="form-control"></form:input>
									</div>
									<div class="form-group">
										<label class="control-label">Mobile Number</label>
										<form:input  path="contact" type="text" placeholder="${userAccountForm.contact }" class="form-control"></form:input>
									</div>
									<div class="form-group">
										<label class="control-label">Date Of Birth</label>
										<form:input path="dateOfBirth" type="" placeholder="${userAccountForm.dateOfBirth }" class="form-control"></form:input>
									</div>
									<div class="form-group">
										<label class="control-labe">Gender</label>
										<form:select  path="gender" class="form-control">
										<form:options items="${mySelectValues}" />
										</form:select>
									</div>
									<form:hidden path="dateOfBirth"/>
									<form:hidden path="email"/>
									<form:hidden path="isLoggedIn"/>
									<form:hidden path="userRegistrationId"/>
									<form:hidden path="userProfileId"/>
									<div class="margiv-top10">
										<form:button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> Save Changes </form:button>
										<a href="javascript:reset();" class="btn btn-default">Reset </a>
									</div>
								</form:form>
							</div>
							<script type="text/javascript">
							function submitForm(){
								alert(document.getElementById("lastName").value);
								alert();
								document.forms[0].method="POST";
								document.forms[0].action="updateUser";	
								document.forms[0].submit();
							}
							
							</script>
							<!-- /PERSONAL INFO TAB -->

							<!-- Password TAB -->
							<div class="tab-pane fade" id="avatar">


								<!-- <form action="#" method="post">

									<div class="form-group">
										<label class="control-label">Current Password</label>
										<input type="password" class="form-control">
									</div>
									<div class="form-group">
										<label class="control-label">New Password</label>
										<input type="password" class="form-control">
									</div>
									<div class="form-group">
										<label class="control-label">Re-type New Password</label>
										<input type="password" class="form-control">
									</div>

									<div class="margiv-top10">
										<a href="#" class="btn btn-primary"><i class="fa fa-check"></i> Change Password</a>
										<a href="#" class="btn btn-default">Cancel </a>
									</div>

								</form>
 -->

							</div>
							<!-- /Password TAB -->

							<!-- PASSWORD TAB -->
							<!-- <div class="tab-pane fade" id="password">

								<form action="#" method="post">

									<div class="form-group">
										<label class="control-label">Current Password</label>
										<input type="password" class="form-control">
									</div>
									<div class="form-group">
										<label class="control-label">New Password</label>
										<input type="password" class="form-control">
									</div>
									<div class="form-group">
										<label class="control-label">Re-type New Password</label>
										<input type="password" class="form-control">
									</div>

									<div class="margiv-top10">
										<a href="#" class="btn btn-primary"><i class="fa fa-check"></i> Change Password</a>
										<a href="#" class="btn btn-default">Cancel </a>
									</div>

								</form>

							</div> -->
							<!-- /PASSWORD TAB -->

							<!-- PRIVACY TAB -->
							<!-- <div class="tab-pane fade" id="privacy">

								<form action="#" method="post">
									<div class="sky-form">

										<table class="table table-bordered table-striped">
											<tbody>
												<tr>
													<td>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam.</td>
													<td>
														<div class="inline-group">
															<label class="radio nomargin-top nomargin-bottom">
																<input type="radio" name="radioOption" checked=""><i></i> Yes
															</label>

															<label class="radio nomargin-top nomargin-bottom">
																<input type="radio" name="radioOption" checked=""><i></i> No
															</label>
														</div>
													</td>
												</tr>
												<tr>
													<td>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam.</td>
													<td>
														<label class="checkbox nomargin">
															<input type="checkbox" name="checkbox" checked=""><i></i> Yes
														</label>
													</td>
												</tr>
												<tr>
													<td>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam.</td>
													<td>
														<label class="checkbox nomargin">
															<input type="checkbox" name="checkbox" checked=""><i></i> Yes
														</label>
													</td>
												</tr>
												<tr>
													<td>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam.</td>
													<td>
														<label class="checkbox nomargin">
															<input type="checkbox" name="checkbox" checked=""><i></i> Yes
														</label>
													</td>
												</tr>
											</tbody>
										</table>

									</div>

									<div class="margin-top-10">
										<a href="#" class="btn btn-primary"><i class="fa fa-check"></i> Save Changes </a>
										<a href="#" class="btn btn-default">Cancel </a>
									</div>

								</form>

							</div> -->
							<!-- /PRIVACY TAB -->

						</div>

					</div>
					<!-- LEFT -->
					<div class="col-lg-3 col-md-3 col-sm-4 col-lg-pull-9 col-md-pull-9 col-sm-pull-8">
					
						<!-- <div class="thumbnail text-center">
							<img src="assets/images/demo/people/460x700/8-min.jpg" alt="" />
							<h2 class="size-18 margin-top-10 margin-bottom-0">Felica Doe</h2>
							<h3 class="size-11 margin-top-0 margin-bottom-10 text-muted">DEVELOPER</h3>
						</div>

						completed
						<div class="margin-bottom-30">
							<label>88% completed profile</label>
							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="88" aria-valuemin="0" aria-valuemax="100" style="width: 88%; min-width: 2em;"></div>
							</div>
						</div> -->
						<!-- /completed -->

						<!-- SIDE NAV -->
						<ul class="side-nav list-group margin-bottom-60" id="sidebar-nav">
							<li class="list-group-item active"><a href="page-profile.html"><i class="fa fa-eye"></i> PROFILE</a></li>
							<li class="list-group-item"><a href="page-profile-projects.html"><i class="fa fa-tasks"></i> MY ORDERS</a></li>
							<li class="list-group-item"><a href="page-profile-comments.html"><i class="fa fa-comments-o"></i> MY DESIGNS</a></li>
							<li class="list-group-item"><a href="page-profile-history.html"><i class="fa fa-history"></i> MY ADDRESSES</a></li>
							<li class="list-group-item"><a href="page-profile-settings.html"><i class="fa fa-gears"></i> MY MEASUREMENTS</a></li>

							<!-- <li class="list-group-item list-toggle">   NOTE: "active" to be open on page load                
								<a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-1">DROPDOWN EXAMPLE</a>
								<ul id="collapse-1" class="collapse">NOTE: "collapse in" to be open on page load
									<li><a href="#"><i class="fa fa-angle-right"></i> SUMBENU 1</a></li>
									<li>
										<span class="badge badge-red">New</span>
										<a href="#"><i class="fa fa-angle-right"></i> SUMBENU 2</a>
									</li>
									<li class="active"><a href="#"><i class="fa fa-angle-right"></i> SUMBENU 3</a></li>
									<li><a href="#"><i class="fa fa-angle-right"></i> SUMBENU 4</a></li>
								</ul>
							</li> -->
						</ul>
						<!-- /SIDE NAV -->


						<!-- info -->
						<!-- <div class="box-light margin-bottom-30">.box-light OR .box-light
							<div class="row margin-bottom-20">
								<div class="col-md-4 col-sm-4 col-xs-4 text-center bold">
									<h2 class="size-30 margin-top-10 margin-bottom-0 font-raleway">12</h2>
									<h3 class="size-11 margin-top-0 margin-bottom-10 text-info">PROJECTS</h3>
								</div>

								<div class="col-md-4 col-sm-4 col-xs-4 text-center bold">
									<h2 class="size-30 margin-top-10 margin-bottom-0 font-raleway">34</h2>
									<h3 class="size-11 margin-top-0 margin-bottom-10 text-info">TASKS</h3>
								</div>

								<div class="col-md-4 col-sm-4 col-xs-4 text-center bold">
									<h2 class="size-30 margin-top-10 margin-bottom-0 font-raleway">32</h2>
									<h3 class="size-11 margin-top-0 margin-bottom-10 text-info">UPLOADS</h3>
								</div>
							</div>
							/info

							<div class="text-muted">
								<h2 class="size-18 text-muted margin-bottom-6"><b>About</b> Felicia Doe</h2>
								<p>Lorem ipsum dolor sit amet diam nonummy nibh dolore.</p>
								
								<ul class="list-unstyled nomargin">
									<li class="margin-bottom-10"><i class="fa fa-globe width-20 hidden-xs hidden-sm"></i> <a href="http://www.stepofweb.com">www.stepofweb.com</a></li>
									<li class="margin-bottom-10"><i class="fa fa-facebook width-20 hidden-xs hidden-sm"></i> <a href="http://www.facebook.com/stepofweb">stepofweb</a></li>
									<li class="margin-bottom-10"><i class="fa fa-twitter width-20 hidden-xs hidden-sm"></i> <a href="http://www.twitter.com/stepofweb">@stepofweb</a></li>
								</ul>
							</div>
						
						</div> -->

					</div>


					<!-- RIGHT -->
					
					
				</div>
			</section>
			<!-- / -->