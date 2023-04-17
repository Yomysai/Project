<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" %>

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap"
            rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
            rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <!-- ========================= JS here ========================= -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
            crossorigin="anonymous"></script>
        <script defer type="text/javascript" src="./assets/js/validation.js"></script>
    </head>

    <body>

     <c:if test="${(empty user) || (user.roleId.role == 'Client')}">
        <!-- Header Section Begin -->
        <header class="header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2">
                        <div class="header__logo">
                            <a href="index"> <img src="./assets/img/logo.png" alt="">
                            </a>
                        </div>
                        <em><a class="nav-link text-warning fs-5 fw-bold text-center">"MANGA BAKA !"</a></em>
                    </div>
                    <div class="col-lg-8">
                        <div class="header__nav">
                            <nav class="header__menu mobile-menu">
                                <ul>
                                    <li class="active"><a href="index">Homepage</a></li>
                                    <li>
                                        <a href="categories">Categories <span class="arrow_carrot-down"></span></a>
                                        <ul class="dropdown">
                                            <li><a href="categories">Categories</a></li>
                                            <li><a href="anime-details">Anime Details</a></li>
                                            <li><a href="anime-watching">Anime Watching</a></li>
                                            <li><a href="./blog-details.html">Blog Details</a></li>
                                            <li><a href="./signup.html">Sign Up</a></li>
                                            <li><a href="./login.html">Login</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="./blog.html">Our Blog</a></li>
                                    <li><a href="#">Contacts</a></li>
                                </ul>
                                <form class="d-flex" role="search">
                                    <select class="form-select rounded-end-0" style="z-index: 1050;">
                                        <option selected value="0">Part Genre</option>
                                        <c:forEach items="${categoriesList}" var="category">
                                            <option value="${category.id}">
                                                <c:out value="${category.category}" />
                                            </option>
                                        </c:forEach>
                                    </select>
                                    <input
                                        class="form-control border-start-0 border-end-0 rounded-start-0 rounded-end-0"
                                        type="search" placeholder="Recherchez..." aria-label="Search">
                                    <a type="submit"
                                        class="search-switch btn btn-outline-success rounded-start-0 rounded-end"><span
                                            class="icon_search"></span></a>
                                </form>
                            </nav>
                        </div>
                    </div>
                    <div class="col-lg-2 header__menu mobile-menu">
                        <div class="header__right">
                            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                                <c:if test="${ empty user}">
                                    <li class="nav-item mt-auto mb-auto me-3">
                                        <a data-toggle="modal" data-target="#myModal" class="nav-link d-inline"><span
                                                class="icon_profile"></span>
                                            <i class="bi bi-box-arrow-in-right"></i></a>
                                        <!-- <a class="nav-link d-inline"></a>  -->
                                        <a href="register" class="nav-link d-inline">
                                            <i class="bi bi-person-plus"></i> S'inscrire</a>
                                        <!-- Bouton pour déclencher le modal -->
                                </c:if>
                                <c:if test="${ empty user.roleId.role == 'Client'}">
                                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                        <li class="nav-item dropdown me-3">
                                            <a class="nav-link dropdown-toggle" href="#" role="button"
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class="bi bi-person-check-fill"></i> Bonjour,
                                                <c:out value="${user.getNickname()}" />
                                            </a>
                                            <ul class="dropdown-menu " style="background: black">
                                                <li><a class="dropdown-item" href="account"><i
                                                            class="bi bi-person-vcard"></i> Mon compte</a></li>
                                                <li><a class="dropdown-item" href="logout"><i
                                                            class="bi bi-box-arrow-right"></i> Déconnexion</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </c:if>
                            </ul>
                        </div>
                    </div>
                </div>
                <div id="mobile-menu-wrap"></div>
            </div>
                <!-- Modal avec arrière-plan animé -->
                <div class="modal" id="myModal">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Login</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="container">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div>
                                                <form method="post" onsubmit="checkformML(event)" action="login"
                                                    name="formML" id="loginForm">
                                                    <!-- Update the form ID to "loginForm" -->
                                                    <div class="mb-3">
                                                        <label class="form-label">*Email</label> <input type="text"
                                                            class="form-control form-controlV" placeholder="Email"
                                                            id="email" name="email">
                                                        <p class="errorEmail error"></p>
                                                    </div>

                                                    <div class="mb-3 lab1">
                                                        <label class="form-label">*Password</label> <input
                                                            type="password" class="form-control form-controlV"
                                                            placeholder="Password" id="password" name="password">
                                                        <p class="errorPassword error"></p>
                                                        <a href="#" class="forget_pass">Forgot Your Password?</a>
                                                    </div>

                                                    <button type="submit" class="btn btn-primary loginForm">Se connecter</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

        </header>
     </c:if>
        <!-- Header End -->

        <!-- Header Backoffice -->
        <c:if test="${user.roleId.role == 'Admin' }">
            <nav class="navbar navbar-expand-lg bg-body-tertiary" style="background: #7e0e8d !important">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse header__logo" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item"><a class="nav-link active" aria-current="page" href="dashboard"> <img
                                        alt="dashboard image" src="./assets/img/logo.png" width="120	">
                                </a></li>
                            <li class="nav-item"><a class="nav-link" href="#"> <img alt=""
                                        src="assets/img/back_office/Catalogue.png" width="60">
                                </a></li>
                            <li class="nav-item"><a class="nav-link" href="stockManager">
                                    <img alt="" src="assets//img/back_office/Stock.png" width="45">
                                </a></li>
                        </ul>
                         <c:if test="${ empty user.roleId.role == 'Admin'}">
                                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                        <li class="nav-item dropdown me-3">
                                            <a class="nav-link dropdown-toggle" href="#" role="button"data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class="bi bi-person-check-fill"></i> Bonjour, <c:out value="${user.getNickname()}" />
                                            </a>
                                            <ul class="dropdown-menu " style="background: black">
                                                <li><a class="dropdown-item" href="account"><i class="bi bi-person-vcard"></i> Mon compte</a></li>
                                                <li><a class="dropdown-item" href="logout"><i class="bi bi-box-arrow-right"></i> Déconnexion</a></li>
                                            </ul>
					                        <!-- <a class=" d-flex nav-link" href="logout"> <img alt=""
					                                src="assets//img/back_office/logBack.png" width="60">
					                        </a> -->
                                        </li>
                                    </ul>
                                </c:if>
                    </div>
                </div>

            </nav>
        </c:if>