<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="utf-8" />
		<meta http-equiv="x-ua-compatible" content="ie=edge" />
		<title>Afpazon | Trouvez tout ce qu'il vous faut !</title>
		<meta name="description" content="" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.svg" />
		<!-- ========================= CSS here ========================= -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
		<link rel="stylesheet" href="./assets/css/datatables.min.css" />
		<link rel="stylesheet" href="assets/css/header.css">
		<!-- ========================= JS here ========================= -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
		<script type="text/javascript" src="./assets/js/jquery-3.6.0.min.js"></script>
		<script type="text/javascript" src="./assets/js/datatables.min.js"></script>
	</head>

	<body>
		<c:if
		test="${(empty currentUser.id) || (currentUser.role.role == 'Client')}">
		<header>
			<nav
				class="navbar navbar-expand-lg bg-dark bg-body-tertiary ps-3 pe-3"
				data-bs-theme="dark">
				<div class="container-fluid">
					<div class="me-3">
						<a class="navbar-brand me-0" href="/Afpazon/"><img
							class="mt-2" height=50px src="./assets/img/logo.png" alt="Logo"></a>
						<em><a class="nav-link text-warning fs-5 fw-bold text-center">"MANGA
								BAKA !"</a></em>
					</div>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarNav"
						aria-controls="navbarNav" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						</ul>
						<form class="d-flex" role="search">
							<select class="form-select rounded-end-0" style="z-index: 1050;">
								<option selected value="0">Part Genre</option>
								<c:forEach items="${categoriesList}" var="category">
									<option value="${category.id}"><c:out
											value="${category.category}" /></option>
								</c:forEach>
							</select> <input
								class="form-control border-start-0 border-end-0 rounded-start-0 rounded-end-0"
								type="search" placeholder="Recherchez..." aria-label="Search">
							<button
								class="btn btn-outline-success rounded-start-0 rounded-end"
								type="submit">
								<i class="bi icon_search"></i>
							</button>
						</form>
						<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
							<c:if test="${empty Usercurrent}">
								<li class="nav-item mt-auto mb-auto me-3"><a
									href="register" class="nav-link d-inline"><i
										class="bi bi-person-plus"></i> S'inscrire</a><a
									class="nav-link d-inline"> | </a> <!-- Bouton pour déclencher le modal -->
									<a data-toggle="modal" data-target="#myModal"
									class="nav-link d-inline"><span class="icon_profile"></span><i
										class="bi bi-box-arrow-in-right"></i></a>
							</c:if>
							<c:if test="${currentUser.role.role == 'Client'}">
								<ul class="navbar-nav me-auto mb-2 mb-lg-0">
									<li class="nav-item dropdown me-3"><a
										class="nav-link dropdown-toggle" href="#" role="button"
										data-bs-toggle="dropdown" aria-expanded="false"> <i
											class="bi bi-person-check-fill"></i> Bonjour, <c:out
												value="${currentUser.getNickname()}" />
									</a>
										<ul class="dropdown-menu">
											<li><a class="dropdown-item" href="account"><i
													class="bi bi-person-vcard"></i> Mon compte</a></li>
											<li><a class="dropdown-item" href="logout"><i
													class="bi bi-box-arrow-right"></i> Déconnexion</a></li>
										</ul></li>
								</ul>
							</c:if>
						</ul>
					</div>
				</div>
			</nav>
		</header>
	</c:if>

		<!-- Header Backoffice -->
		<c:if test="${currentUser.role.role == 'Admin' }">
			<nav class="navbar navbar-expand-lg bg-body-tertiary"
				style="background: #F113DB !important">
				<div class="container-fluid">
					<a class="navbar-brand" href="#"></a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav me-auto mb-2 mb-lg-0">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="dashboard"> <img
									alt="dashboard image" src="assets/images/back_office/logo.png"
									width="55">
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#"> <img
									alt="" src="assets/images/back_office/Catalogue.png" width="60">
							</a></li>
							<li class="nav-item"><a class="nav-link" href="stockManager">
									<img alt="" src="assets/images/back_office/Stock.png" width="45">
							</a></li>
						</ul>
						<a class=" d-flex nav-link" href="logout"> <img alt=""
							src="assets/images/back_office/logBack.png" width="60">
						</a>
					</div>
				</div>

			</nav>
		</c:if>
