<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>

<c:import url="/sliderHero/carousel.jsp"></c:import>
<section>
	<div class="container">
		<h1>Bienvenue sur notre site Manga et Anime !</h1>

		<p>Vous trouverez ici une large sélection de mangas, y compris des
			titres populaires tels que Naruto, One Piece, Bleach, Dragon Ball, et
			bien d'autres encore. Parcourez notre catalogue pour découvrir de
			nouveaux titres ou utilisez notre barre de recherche pour trouver des
			titres spécifiques.</p>

		<p>Pour accéder à notre catalogue complet, vous devez vous
			connecter à votre compte ou créer un compte gratuitement si vous n'en
			avez pas encore. Une fois connecté, vous pouvez ajouter des mangas à
			votre panier et passer une commande en toute sécurité.</p>

		<!-- <a href="connexion.html">Se connecter</a> | <a href="inscription.html">S'inscrire</a> -->
	</div>
	<div class="container">
		<div class="banner">
			<img
				src="https://th.bing.com/th/id/R.11e50ed255f216a0101c68789b927e72?rik=krpErk%2f1qlFGhQ&riu=http%3a%2f%2fblogcenterblog46.b.l.pic.centerblog.net%2f35d75835.jpg&ehk=93amU%2fQit8rEsSH8wmSNsHa8Wp5dBv2BMgXfwIJf8WE%3d&risl=&pid=ImgRaw&r=0"
				alt="Manga and Anime">
		</div>
		<!-- Product Section Begin -->
		<section class="product spad">
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
						<div class="trending__product">
							<div class="row">
								<div class="col-lg-8 col-md-8 col-sm-8">
									<div class="section-title">
										<h4>Trending Now</h4>
									</div>
								</div>
								<div class="col-lg-4 col-md-4 col-sm-4">
									<div class="btn__all">
										<a href="#" class="primary-btn">View All <span
											class="arrow_right"></span></a>
									</div>
								</div>
							</div>
							
							
							<div class="row">
							<c:forEach var="item" items="${articleR}">
							  <div class="col-lg-4 col-md-6 col-sm-6">
							    <div class="product__item">
							      <div class="product__item__pic set-bg"
							        data-setbg="./assets/img/listeM/${item.cover_image}">
							        <div class="ep episode">${item}</div>
							        <div class="comment">
							          <i class="fa fa-comments"></i> ${item}
							        </div>
							        <div class="view">
							          <i class="fa fa-eye"></i> ${item}
							        </div>
							      </div>
							      <div class="product__item__text">
							        <ul>
							          <li>${item.status}</li>
							          <li>${item}</li>
							        </ul>
							        <h5>
							          <a href="#">${item.title}</a>
							        </h5>
							      </div>
							    </div>
							  </div>
							</c:forEach>
								<!-- <div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="./assets/img/trending/trend-1.jpg">
											<div class="ep">18 / 18</div>
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> 9141
											</div>
										</div>
										<div class="product__item__text">
											<ul>
												<li>Active</li>
												<li>Movie</li>
											</ul>
											<h5>
												<a href="#">The Seven Deadly Sins: Wrath of the Gods</a>
											</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="./assets/img/trending/trend-2.jpg">
											<div class="ep">18 / 18</div>
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> 9141
											</div>
										</div>
										<div class="product__item__text">
											<ul>
												<li>Active</li>
												<li>Movie</li>
											</ul>
											<h5>
												<a href="#">Gintama Movie 2: Kanketsu-hen - Yorozuya yo
													Eien</a>
											</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="./assets/img/trending/trend-3.jpg">
											<div class="ep">18 / 18</div>
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> 9141
											</div>
										</div>
										<div class="product__item__text">
											<ul>
												<li>Active</li>
												<li>Movie</li>
											</ul>
											<h5>
												<a href="#">Shingeki no Kyojin Season 3 Part 2</a>
											</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="./assets/img/trending/trend-4.jpg">
											<div class="ep">18 / 18</div>
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> 9141
											</div>
										</div>
										<div class="product__item__text">
											<ul>
												<li>Active</li>
												<li>Movie</li>
											</ul>
											<h5>
												<a href="#">Fullmetal Alchemist: Brotherhood</a>
											</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="./assets/img/trending/trend-5.jpg">
											<div class="ep">18 / 18</div>
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> 9141
											</div>
										</div>
										<div class="product__item__text">
											<ul>
												<li>Active</li>
												<li>Movie</li>
											</ul>
											<h5>
												<a href="#">Shiratorizawa Gakuen Koukou</a>
											</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="./assets/img/trending/trend-6.jpg">
											<div class="ep">18 / 18</div>
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> 9141
											</div>
										</div>
										<div class="product__item__text">
											<ul>
												<li>Active</li>
												<li>Movie</li>
											</ul>
											<h5>
												<a href="#">Code Geass: Hangyaku no Lelouch R2</a>
											</h5>
										</div>
									</div>
								</div> -->
							</div>
						</div>
						<div class="popular__product">
							<div class="row">
								<div class="col-lg-8 col-md-8 col-sm-8">
									<div class="section-title">
										<h4>Popular Shows</h4>
									</div>
								</div>
								<div class="col-lg-4 col-md-4 col-sm-4">
									<div class="btn__all">
										<a href="#" class="primary-btn">View All <span
											class="arrow_right"></span></a>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="./assets/img/popular/popular-1.jpg">
											<div class="ep">18 / 18</div>
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> 9141
											</div>
										</div>
										<div class="product__item__text">
											<ul>
												<li>Active</li>
												<li>Movie</li>
											</ul>
											<h5>
												<a href="#">Sen to Chihiro no Kamikakushi</a>
											</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="./assets/img/popular/popular-2.jpg">
											<div class="ep">18 / 18</div>
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> 9141
											</div>
										</div>
										<div class="product__item__text">
											<ul>
												<li>Active</li>
												<li>Movie</li>
											</ul>
											<h5>
												<a href="#">Kizumonogatari III: Reiket su-hen</a>
											</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="./assets/img/popular/popular-3.jpg">
											<div class="ep">18 / 18</div>
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> 9141
											</div>
										</div>
										<div class="product__item__text">
											<ul>
												<li>Active</li>
												<li>Movie</li>
											</ul>
											<h5>
												<a href="#">Shirogane Tamashii hen Kouhan sen</a>
											</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="./assets/img/popular/popular-4.jpg">
											<div class="ep">18 / 18</div>
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> 9141
											</div>
										</div>
										<div class="product__item__text">
											<ul>
												<li>Active</li>
												<li>Movie</li>
											</ul>
											<h5>
												<a href="#">Rurouni Kenshin: Meiji Kenkaku Romantan</a>
											</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="./assets/img/popular/popular-5.jpg">
											<div class="ep">18 / 18</div>
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> 9141
											</div>
										</div>
										<div class="product__item__text">
											<ul>
												<li>Active</li>
												<li>Movie</li>
											</ul>
											<h5>
												<a href="#">Mushishi Zoku Shou 2nd Season</a>
											</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="./assets/img/popular/popular-6.jpg">
											<div class="ep">18 / 18</div>
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> 9141
											</div>
										</div>
										<div class="product__item__text">
											<ul>
												<li>Active</li>
												<li>Movie</li>
											</ul>
											<h5>
												<a href="#">Monogatari Series: Second Season</a>
											</h5>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="recent__product">
							<div class="row">
								<div class="col-lg-8 col-md-8 col-sm-8">
									<div class="section-title">
										<h4>Recently Added Shows</h4>
									</div>
								</div>
								<div class="col-lg-4 col-md-4 col-sm-4">
									<div class="btn__all">
										<a href="#" class="primary-btn">View All <span
											class="arrow_right"></span></a>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="./assets/img/recent/recent-1.jpg">
											<div class="ep">18 / 18</div>
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> 9141
											</div>
										</div>
										<div class="product__item__text">
											<ul>
												<li>Active</li>
												<li>Movie</li>
											</ul>
											<h5>
												<a href="#">Great Teacher Onizuka</a>
											</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="./assets/img/recent/recent-2.jpg">
											<div class="ep">18 / 18</div>
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> 9141
											</div>
										</div>
										<div class="product__item__text">
											<ul>
												<li>Active</li>
												<li>Movie</li>
											</ul>
											<h5>
												<a href="#">Fate/stay night Movie: Heaven's Feel - II.
													Lost</a>
											</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="./assets/img/recent/recent-3.jpg">
											<div class="ep">18 / 18</div>
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> 9141
											</div>
										</div>
										<div class="product__item__text">
											<ul>
												<li>Active</li>
												<li>Movie</li>
											</ul>
											<h5>
												<a href="#">Mushishi Zoku Shou: Suzu no Shizuku</a>
											</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="./assets/img/recent/recent-4.jpg">
											<div class="ep">18 / 18</div>
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> 9141
											</div>
										</div>
										<div class="product__item__text">
											<ul>
												<li>Active</li>
												<li>Movie</li>
											</ul>
											<h5>
												<a href="#">Fate/Zero 2nd Season</a>
											</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="./assets/img/recent/recent-5.jpg">
											<div class="ep">18 / 18</div>
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> 9141
											</div>
										</div>
										<div class="product__item__text">
											<ul>
												<li>Active</li>
												<li>Movie</li>
											</ul>
											<h5>
												<a href="#">Kizumonogatari II: Nekket su-hen</a>
											</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="./assets/img/recent/recent-6.jpg">
											<div class="ep">18 / 18</div>
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> 9141
											</div>
										</div>
										<div class="product__item__text">
											<ul>
												<li>Active</li>
												<li>Movie</li>
											</ul>
											<h5>
												<a href="#">The Seven Deadly Sins: Wrath of the Gods</a>
											</h5>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="live__product">
							<div class="row">
								<div class="col-lg-8 col-md-8 col-sm-8">
									<div class="section-title">
										<h4>Live Action</h4>
									</div>
								</div>
								<div class="col-lg-4 col-md-4 col-sm-4">
									<div class="btn__all">
										<a href="#" class="primary-btn">View All <span
											class="arrow_right"></span></a>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="./assets/img/live/live-1.jpg">
											<div class="ep">18 / 18</div>
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> 9141
											</div>
										</div>
										<div class="product__item__text">
											<ul>
												<li>Active</li>
												<li>Movie</li>
											</ul>
											<h5>
												<a href="#">Shouwa Genroku Rakugo Shinjuu</a>
											</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="./assets/img/live/live-2.jpg">
											<div class="ep">18 / 18</div>
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> 9141
											</div>
										</div>
										<div class="product__item__text">
											<ul>
												<li>Active</li>
												<li>Movie</li>
											</ul>
											<h5>
												<a href="#">Mushishi Zoku Shou 2nd Season</a>
											</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="./assets/img/live/live-3.jpg">
											<div class="ep">18 / 18</div>
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> 9141
											</div>
										</div>
										<div class="product__item__text">
											<ul>
												<li>Active</li>
												<li>Movie</li>
											</ul>
											<h5>
												<a href="#">Mushishi Zoku Shou: Suzu no Shizuku</a>
											</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="./assets/img/live/live-4.jpg">
											<div class="ep">18 / 18</div>
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> 9141
											</div>
										</div>
										<div class="product__item__text">
											<ul>
												<li>Active</li>
												<li>Movie</li>
											</ul>
											<h5>
												<a href="#">The Seven Deadly Sins: Wrath of the Gods</a>
											</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="./assets/img/live/live-5.jpg">
											<div class="ep">18 / 18</div>
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> 9141
											</div>
										</div>
										<div class="product__item__text">
											<ul>
												<li>Active</li>
												<li>Movie</li>
											</ul>
											<h5>
												<a href="#">Fate/stay night Movie: Heaven's Feel - II.
													Lost</a>
											</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="./assets/img/live/live-6.jpg">
											<div class="ep">18 / 18</div>
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> 9141
											</div>
										</div>
										<div class="product__item__text">
											<ul>
												<li>Active</li>
												<li>Movie</li>
											</ul>
											<h5>
												<a href="#">Kizumonogatari II: Nekketsu-hen</a>
											</h5>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6 col-sm-8">
						<div class="product__sidebar">
							<div class="product__sidebar__view">
								<div class="section-title">
									<h5>Top Views</h5>
								</div>
								<ul class="filter__controls">
									<li class="active" data-filter="*">Day</li>
									<li data-filter=".week">Week</li>
									<li data-filter=".month">Month</li>
									<li data-filter=".years">Years</li>
								</ul>
								<div class="filter__gallery">
									<div class="product__sidebar__view__item set-bg mix day years"
										data-setbg="./assets/img/sidebar/tv-1.jpg">
										<div class="ep">18 / ?</div>
										<div class="view">
											<i class="fa fa-eye"></i> 9141
										</div>
										<h5>
											<a href="#">Boruto: Naruto next generations</a>
										</h5>
									</div>
									<div class="product__sidebar__view__item set-bg mix month week"
										data-setbg="./assets/img/sidebar/tv-2.jpg">
										<div class="ep">18 / ?</div>
										<div class="view">
											<i class="fa fa-eye"></i> 9141
										</div>
										<h5>
											<a href="#">The Seven Deadly Sins: Wrath of the Gods</a>
										</h5>
									</div>
									<div class="product__sidebar__view__item set-bg mix week years"
										data-setbg="./assets/img/sidebar/tv-3.jpg">
										<div class="ep">18 / ?</div>
										<div class="view">
											<i class="fa fa-eye"></i> 9141
										</div>
										<h5>
											<a href="#">Sword art online alicization war of
												underworld</a>
										</h5>
									</div>
									<div
										class="product__sidebar__view__item set-bg mix years month"
										data-setbg="./assets/img/sidebar/tv-4.jpg">
										<div class="ep">18 / ?</div>
										<div class="view">
											<i class="fa fa-eye"></i> 9141
										</div>
										<h5>
											<a href="#">Fate/stay night: Heaven's Feel I. presage
												flower</a>
										</h5>
									</div>
									<div class="product__sidebar__view__item set-bg mix day"
										data-setbg="./assets/img/sidebar/tv-5.jpg">
										<div class="ep">18 / ?</div>
										<div class="view">
											<i class="fa fa-eye"></i> 9141
										</div>
										<h5>
											<a href="#">Fate stay night unlimited blade works</a>
										</h5>
									</div>
								</div>
							</div>
							<div class="product__sidebar__comment">
								<div class="section-title">
									<h5>New Comment</h5>
								</div>
								<div class="product__sidebar__comment__item">
									<div class="product__sidebar__comment__item__pic">
										<img src="./assets/img/sidebar/comment-1.jpg" alt="">
									</div>
									<div class="product__sidebar__comment__item__text">
										<ul>
											<li>Active</li>
											<li>Movie</li>
										</ul>
										<h5>
											<a href="#">The Seven Deadly Sins: Wrath of the Gods</a>
										</h5>
										<span><i class="fa fa-eye"></i> 19.141 Viewes</span>
									</div>
								</div>
								<div class="product__sidebar__comment__item">
									<div class="product__sidebar__comment__item__pic">
										<img src="./assets/img/sidebar/comment-2.jpg" alt="">
									</div>
									<div class="product__sidebar__comment__item__text">
										<ul>
											<li>Active</li>
											<li>Movie</li>
										</ul>
										<h5>
											<a href="#">Shirogane Tamashii hen Kouhan sen</a>
										</h5>
										<span><i class="fa fa-eye"></i> 19.141 Viewes</span>
									</div>
								</div>
								<div class="product__sidebar__comment__item">
									<div class="product__sidebar__comment__item__pic">
										<img src="./assets/img/sidebar/comment-3.jpg" alt="">
									</div>
									<div class="product__sidebar__comment__item__text">
										<ul>
											<li>Active</li>
											<li>Movie</li>
										</ul>
										<h5>
											<a href="#">Kizumonogatari III: Reiket su-hen</a>
										</h5>
										<span><i class="fa fa-eye"></i> 19.141 Viewes</span>
									</div>
								</div>
								<div class="product__sidebar__comment__item">
									<div class="product__sidebar__comment__item__pic">
										<img src="./assets/img/sidebar/comment-4.jpg" alt="">
									</div>
									<div class="product__sidebar__comment__item__text">
										<ul>
											<li>Active</li>
											<li>Movie</li>
										</ul>
										<h5>
											<a href="#">Monogatari Series: Second Season</a>
										</h5>
										<span><i class="fa fa-eye"></i> 19.141 Viewes</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Product Section End -->
		<p>Retrouvez ici les derniers chapitres de vos mangas préférés
			ainsi que les épisodes des derniers anime à la mode.</p>
		<h2>Nouveautés</h2>
		<div class="new-releases">
			<div class="new-release">
				<a href="https://sekai.one/"> <img
					src="https://wallpapercave.com/dwp1x/wp9995088.jpg" alt="One Piece">
					<h3>One Piece</h3>
				</a>
			</div>
			<div class="new-release">
				<a href="https://sekai.one/"> <img
					src="https://wallpapercave.com/dwp1x/wp4445437.jpg"
					alt="Demon Slayer">
					<h3>Demon Slayer</h3>
				</a>
			</div>
			<div class="new-release">
				<a href="https://sekai.one/"> <img
					src="https://wallpapercave.com/dwp1x/wp10948343.jpg"
					alt="My Hero Academia">
					<h3>My Hero Academia</h3>
				</a>
			</div>
		</div>
	</div>
</section>
