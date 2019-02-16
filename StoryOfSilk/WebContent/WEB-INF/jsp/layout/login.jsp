<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!--Login Modal -->
<div id="loginModal" class="modal fade in" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">

			<div class="modal-body">

				<div class="container-fluid">

					<div class="row">

						<!-- LOGIN -->
						<div class="col-md-6 col-sm-6">

							<!-- login form -->
							<form action="${pageContext.request.contextPath}/login"
								id="loginForm"  method="post"
								class="sky-form">

								<header class="size-18 margin-bottom-20"> I'm a
									returning customer </header>

								<fieldset class="nomargin">

									<label class="input margin-bottom-10"> <i
										class="ico-append fa fa-envelope"></i> <input
											type="email" placeholder="Email address" name="email"></input> <b
										class="tooltip tooltip-bottom-right">Needed to verify your
											account</b>
									</label> <label class="input margin-bottom-10"> <i
										class="ico-append fa fa-lock"></i> <input type="password"
											name="password" placeholder="Password"></input> <b
										class="tooltip tooltip-bottom-right">Only latin characters
											and numbers</b>
									</label>

									<div class="clearfix note margin-bottom-30">
										<a class="pull-right" href="#">Forgot Password?</a>
									</div>

									<label class="checkbox weight-300"> <input
										type="checkbox" name="checkbox-inline"> <i></i> Keep
										me logged in
									</label>

								</fieldset>

								<footer>
									<button type="submit"
										class="btn btn-primary noradius pull-right">
										<i class="fa fa-check"></i> OK, LOG IN</button>
								</footer>

							</form>
							<!-- /login form -->

							<!-- ALERT -->
							<c:if
								test="${not empty messageErrorLogin}">
								<div class="alert alert-mini alert-danger margin-bottom-30">
									<strong>${messageErrorLogin} </strong>
								</div>
							</c:if>
							<!-- /ALERT -->

						</div>
						<!-- /LOGIN -->

						<!-- SOCIAL LOGIN -->
						<div class="col-md-6 col-sm-6">
							<form action="#" method="post" class="sky-form">

								<header class="size-18 margin-bottom-20"> Sign In using
									your favourite social network </header>

								<fieldset class="nomargin">

									<div class="row">

										<div class="col-md-8 col-md-offset-2">

											<a
												class="btn btn-block btn-social btn-facebook margin-bottom-10">
												<i class="fa fa-facebook"></i> Sign in with Facebook
											</a> <a
												class="btn btn-block btn-social btn-twitter margin-bottom-10">
												<i class="fa fa-twitter"></i> Sign in with Twitter
											</a> <a
												class="btn btn-block btn-social btn-google margin-bottom-10">
												<i class="fa fa-google-plus"></i> Sign in with Google
											</a>

										</div>
									</div>

								</fieldset>

								<footer>
									Don't have an account yet? <a href="#" data-toggle="modal"
										data-target="#registerModal" data-dismiss="modal"
										aria-hidden="true"> <strong>Click to register!</strong></a>
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
<!--Login Modal -->