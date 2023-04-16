<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>

<!-- Normal Breadcrumb Begin -->
<section class="normal-breadcrumb set-bg"
	data-setbg="assets/img/normal-breadcrumb.jpg">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="normal__breadcrumb__text">
					<h2>INSCRIPTION</h2>
					<p>Welcome to the official Anime blog.</p>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Normal Breadcrumb End -->

<br>
<section>

	<c:if test="${msnType.equals('OK')}">
		<div class="alert alert-success timer" role="alert">
			<c:out value="${msn }"></c:out>
		</div>
	</c:if>
	<c:if test="${msnType.equals('KO')}">
		<div class="alert alert-danger timer" role="alert">
			<c:out value="${msn }"></c:out>
		</div>
	</c:if>
	
	<div class="row">
		<div
			class="col-lg-6 offset-lg-3 col-md-10 offset-md-1 col-12 shadow p-3 mb-5 bg-body rounded">
			<div class="register-form">
				<hr>
				<div class="row">
					<div class="mb-3 w-50 login__form">

						<form method="post" onsubmit="checkformM(event)" action="register"
							name="formM">
							<div class="mb-3">
								<label class="form-label">*Pseudo</label> <input type="text"
									class="form-control form-controlV" placeholder="nickname"
									id="nickname" name="nickname">
								<p class="errorlast_name error"></p>
							</div>

							<div class="mb-3">
								<label class="form-label">*Email</label> <input type="email"
									class="form-control form-controlV" placeholder="Email"
									id="email" name="email">
								<p class="erroremail error"></p>
							</div>
							<div class="mb-3 lab1">
								<label class="form-label">*Password</label> <input
									type="password" class="form-control form-controlV"
									placeholder="Password" id="password" name="password"
									onfocus="focusFunction()" onblur="blurFunction()">
								<p class="errorpassword error"></p>
								<div id="passwordDiv">
									<p id="passMsn">Le mot de passe doit contenir au moins:</p>
									<div>
										<p id="maj" class="invalid">Majuscule</p>
									</div>
									<div>
										<p id="min" class="invalid">Minuscule</p>
									</div>
									<div>
										<p id="num" class="invalid">Numéro</p>
									</div>
									<div>
										<p id="esp" class="invalid">Caractère spécial</p>
									</div>
									<div>
										<p id="char" class="invalid">Minimum 8 caractères</p>
									</div>
								</div>
							</div>
							<div class="mb-3">
								<label class="form-label">*Ressaisir le mot de passe</label> <input
									type="password" class="form-control form-controlV"
									placeholder="Ressaisir de mot de passe" id="passwordR"
									name="passwordR">
								<p class="errorpasswordR error"></p>
							</div>
							<button type="submit" class="btn btn-primary envform">S'inscrire</button>
						</form>
					</div>
					<div class="col-lg-6">
						<div class="login__register">
							<h3>You Have An Account?</h3>
							<a data-toggle="modal" data-target="#myModal" class="primary-btn">Login Now</a>
						</div>

					</div>

				</div>
				<div class="login__social">
					<div class="row d-flex justify-content-center">
						<div class="col-lg-6">
							<div class="login__social__links">
								<span>or</span>
								<ul>
									<li><a href="#" class="facebook"><i
											class="fa fa-facebook"></i> Sign in With Facebook</a></li>
									<li><a href="#" class="google"><i class="fa fa-google"></i>
											Sign in With Google</a></li>
									<li><a href="#" class="twitter"><i
											class="fa fa-twitter"></i> Sign in With Twitter</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</section>