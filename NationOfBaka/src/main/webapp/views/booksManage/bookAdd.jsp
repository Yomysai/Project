<%-- <c:if test="${(empty user) || (user.roleId.role == 'Client')}">
    <title>Détails du livre</title>


    <h1>Détails du livre</h1>
    <p>ID : { book.getId() }></p>
    <p>Titre : { book.getTitle() }></p>
    <p>Auteur : { book.getAuteur() }></p>
    <p>Année de publication : { book.getAnnee_publication() }></p>
    <p>Catégorie : { book.getCategory_id().getName() }></p>
    <p>Titre original : { book.getOriginal_title() }></p>
    <p>Origine : { book.getOrigin() }></p>
    <p>Statut : { book.getStatus() }></p>
    <p>Date de sortie : { book.getRelease_date() }></p>
    <p>Type : { book.getType() }></p>
    <p>Genre(s) : 
        <c:forEach items="${book.getGenres()}" var="genre">
            { genre.getGenre() }><br>
        </c:forEach>
    </p>
    <p>Auteur : { book.getAuthor().getName() }></p>
    <p>Artiste : { book.getArtist() }></p>
    <p>Synopsis : { book.getSynopsis() }></p>
    <p>Image de couverture : { book.getCover_image() }></p>
    <p>Date de création : { book.getCreated_at() }></p>
</c:if>

<c:if test="${(empty user.id) || (user.roleId.role == 'Admin')}">
<!-- ****************************************************************************************************************************** -->
    <title>Confirmation d'ajout de livre</title>

    <h1>Confirmation d'ajout de livre</h1>
    <p>Merci d'avoir ajouté un nouveau livre :</p>
    <ul>
        <li>ID : {request.getParameter("id") }></li>
        <li>Titre : {request.getParameter("title") }></li>
        <li>Auteur : {request.getParameter("auteur") }></li>
        <li>Année de publication : {request.getParameter("annee_publication") }></li>
        <li>Catégorie : {request.getParameter("category_id") }></li>
        <li>Titre original : {request.getParameter("original_title") }></li>
        <li>Origine : {request.getParameter("origin") }></li>
        <li>Status : {request.getParameter("status") }></li>
        <li>Date de sortie : {request.getParameter("release_date") }></li>
        <li>Type : {request.getParameter("type") }></li>
        <li>Genres : {request.getParameter("genres") }></li>
        <li>Artiste : {request.getParameter("artist") }></li>
        <li>Synopsis : {request.getParameter("synopsis") }></li>
        <li>Image de couverture : {request.getParameter("cover_image") }></li>
    </ul>
    <p>Le livre a été ajouté avec succès dans la base de données.</p>
    <a href="index.jsp">Retour à la page d'accueil</a>
<!-- ***************************************************************************************************************** -->
    
    
    <title>Inscription d'un nouveau livre</title>


    <h1>Inscription d'un nouveau livre</h1>
    <form action="BookServlet" method="post">
        <label for="title">Titre :</label>
        <input type="text" id="title" name="title" required><br>
        <label for="auteur">Auteur :</label>
        <input type="text" id="auteur" name="auteur" required><br>
        <label for="annee_publication">Année de publication :</label>
        <input type="number" id="annee_publication" name="annee_publication" required><br>
        <label for="original_title">Titre original :</label>
        <input type="text" id="original_title" name="original_title" required><br>
        <label for="origin">Origine :</label>
        <input type="text" id="origin" name="origin" required><br>
        <label for="category_id">Catégorie :</label>
        <select id="category_id" name="category_id" required>
            <option value="1">Shonen</option>
            <option value="2">Shojo</option>
            <option value="3">Seinen</option>
            <!-- Autres options de catégories -->
        </select><br>
        <label for="status_id">Statut :</label>
        <select id="status_id" name="status_id" required>
            <option value="1">En cours</option>
            <option value="2">Terminé</option>
            <!-- Autres options de statuts -->
        </select><br>
        <label for="release_date">Date de sortie :</label>
        <input type="date" id="release_date" name="release_date" required><br>
        <label for="type">Type :</label>
        <input type="text" id="type" name="type" required><br>
        <label for="genre_id">Genre :</label>
        <select id="genre_id" name="genre_id" required>
            <option value="1">Action</option>
            <option value="2">Romance</option>
            <option value="3">Fantasy</option>
            <!-- Autres options de genres -->
        </select><br>
        <label for="artist">Artiste :</label>
        <input type="text" id="artist" name="artist" required><br>
        <label for="synopsis">Synopsis :</label><br>
        <textarea id="synopsis" name="synopsis" rows="5" cols="30" required></textarea><br>
        <label for="cover_image">Image de couverture :</label>
        <input type="text" id="cover_image" name="cover_image" required><br>
        <input type="submit" value="Inscrire le livre">
    </form>
</c:if>
     --%>

<title>Manhua Top Tier Providence | JapScan</title>


 
<!-- <script src="/ujs/psktgixhxcv.yh.js"></script>
<script src="/ujs/ymdw.yuz.ve.js"></script>
<script src="/ujs/axkt-htpgrw.yh.js?v=394509435"></script>

<script data-cfasync="false" async type="text/javascript"
	src="//wm.findalwaglike.com/rnrkzGvHaUbWb1/22316"></script>
<script data-cfasync="false" async type="text/javascript"
	src="//pi.slakiervolost.com/gOD8buGRF8BWmo2t/46232"></script>
<script data-cfasync="false" async type="text/javascript"
	src="//pn.outplodbunty.com/nD2I14AQrHT3eV4/63768"></script>
 -->


<!-- <!-- Global site tag (gtag.js) - Google Analytics -->
<!-- <script async src="https://www.googletagmanager.com/gtag/js?id=G-C044C1JZWD"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'G-C4P4VXMRS3');
</script>
 -->

	<div class="container">
<!-- 
		<nav
			class="navbar navbar-expand-lg bg-dark navbar-dark sticky-top py-lg-1">

			<a class="navbar-brand" href="/">JapScan.Lol</a>

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#TogglerNav">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="TogglerNav">

				<ul class="navbar-nav">
					<li class="nav-item"><a class="text-truncate nav-link"
						href="/"><i class="fa-solid fa-home"></i></a></li>
					<li class="nav-item"><a class="text-truncate nav-link"
						href="/mangas/"><i class="fa-solid fa-books"></i>Mangas</a></li>
					<li class="nav-item"><a class="text-truncate nav-link"
						href="/donate/"><i class="fa-solid fa-heart"></i>Faire un don</a>
					</li>

					<li class="nav-item"><a class="text-truncate nav-link"
						href="/cdn-cgi/l/email-protection#94f7fbfae0f5f7e0d4fef5e4e7f7f5fabaf9f1"><i
							class="fa-solid fa-envelope"></i>Contact</a></li>
					<li class="nav-item"><a class="text-truncate nav-link"
						href="/vip/"><i class="fa-solid fa-crown"
							style="color: #ffc758;"></i>VIP</a></li>
				</ul>

				<div id="searchForm" class="has-search">
					<span class="fa fa-search form-control-feedback"></span> <input
						id="searchInput" type="text" class="form-control"
						placeholder="Chercher par manga ou nom d'auteur"
						autocomplete="off" />
				</div>

				<div id="results"></div>

			</div>
		</nav>
 -->
		<!-- <div class="donate-text"
			style="background: lightgreen; text-align: center; color: black; font-weight: bold;">
			<p class="mb-0">
				Travaillons ensemble pour que JAPSCAN soit sans publicités. <a
					href="/donate/">Faire Un Don</a>
			</p>
		</div>
 -->






		<div class="row">

			<div id="main" class="col-md-8">


				<div class="card">
					<div class="rounded-0 card-body">

						<h1>Manhua Top Tier Providence</h1>

						<hr>

						<div class="card-body FbsYi"></div>

						<div class="d-flex">
							<div class="m-2">
								<img
									style="width: 250px; height: 360px; margin-right: 292px; margin-bottom: 10px"
									src="./assets/img/listeManga/top-tier-providence.jpg" alt="">
							</div>

							<div class="m-2">

								<p class="mb-2">
									<span class="font-weight-bold">Nom Original:</span> 顶级气运，悄悄修炼千年
								</p>

								<p class="mb-2">
									<span class="font-weight-bold">Nom(s) Alternatif(s):</span> Top
									Tier Providence- Secretly Cultivate for a Thousand Years,
									Dingji Qiyun, Qiaoqiao Xiulian Qiannian, Lucky Me: I Secretly
									Cultivated for 1,000 Years, Top-Notch Fate, Secretly Practicing
									Asceticism in Millenniums
								</p>

								<p class="mb-2">
									<span class="font-weight-bold">Origine:</span> <i
										class="flag flag-cn"></i> <span>Chine</span>
								</p>

								<p class="mb-2">
									<span class="font-weight-bold">Statut:</span> En Cours
								</p>


								<p class="mb-2">
									<span class="font-weight-bold">Date Sortie:</span> 2022
								</p>



								<p class="mb-2">
									<span class="font-weight-bold">Type(s):</span> Shounen
								</p>



								<p class="mb-2">
									<span class="font-weight-bold">Genre(s):</span> Fantastique,
									Ecchi, Action, Aventure, Combats, Historique, Réincarnation,
									Arts Martiaux, Wuxia
								</p>



								<p class="mb-2">
									<span class="font-weight-bold">Artiste(s):</span> Starry Sky
									Company
								</p>



								<p class="mb-2">
									<span class="font-weight-bold">Auteur(s):</span> Starry Sky
									Company
								</p>





								<p class="mb-2">
									<span class="font-weight-bold">Âge conseillé :</span> +12 ans
								</p>



								<p class="mb-2">
									<span class="font-weight-bold">Abonnement RSS:</span> <a
										href="/rss/top-tier-providence/"><i class="fas fa-rss"></i></a>
								</p>

							</div>

						</div>

						<div class="font-weight-bold">Synopsis:</div>
						<p class="list-group-item list-group-item-primary text-justify">En
							se réincarnant dans un monde de culture, Han Jue réalise
							qu&#039;il peut vivre sa vie comme un jeu vidéo. Il peut relancer
							son potentiel de culture et sa providence de connivence. Donc, il
							a passé 11 ans à relancer pour en trouver un bon... [Incomparable
							: Beauté immortelle, charme inégalé] [Destiné aux fanatiques de
							l&#039;épée : Aptitude au Dao de l&#039;épée de premier ordre,
							compréhension du Dao de l&#039;épée de premier ordre] [Technique
							de mouvement inégalée : aptitude à la technique de mouvement de
							premier ordre] [Descendant de l&#039;Empereur Immortel : Vous
							recevrez une technique de culture inégalée et 1 000 pierres
							spirituelles de qualité supérieure]. En quête de longévité, Han
							Jue décide de cultiver de manière discrète. Mille ans plus tard,
							des générations de cultivateurs sont devenues de l&#039;histoire
							ancienne. C&#039;est à ce moment que les êtres du pays des fées
							commencent à nettoyer le monde des mortels. Han Jue ne peut plus
							se cacher et n&#039;a d&#039;autre choix que d&#039;agir. Il se
							rend alors compte que les divinités et les dieux ne sont pas si
							puissants après tout !</p>


					</div>
				</div>

				<div class="card">

					<div class="rounded-0 card-header bg-dark text-white">
						<h5>LISTE DES CHAPITRES</h5>
					</div>

					<div class="rounded-0 card-body">
						<div id="chapters_list">



							<h4 class="text-truncate">
								<span data-id="1" class="text-danger" data-toggle="collapse"
									data-target="#collapse-1" aria-expanded="false"
									aria-controls="collapse-1"> <i
									class="fas fa-plus-circle"></i> Webtoon
								</span>
							</h4>


							<div id="collapse-1" class="collapse show"
								aria-labelledby="heading-1">

								<div class="chapters_list text-truncate">
									<span class="float-right">15 Apr 2023</span> <a
										class="text-dark"
										href="/lecture-en-ligne/top-tier-providence/14/"> Chapitre
										14 </a>
								</div>
								<div class="chapters_list text-truncate">
									<span class="float-right">13 Apr 2023</span> <a
										class="text-dark"
										href="/lecture-en-ligne/top-tier-providence/13/"> Chapitre
										13 </a>
								</div>
								<div class="chapters_list text-truncate">
									<span class="float-right">12 Apr 2023</span> <a
										class="text-dark"
										href="/lecture-en-ligne/top-tier-providence/12/"> Chapitre
										12 </a>
								</div>
								<div class="chapters_list text-truncate">
									<span class="float-right">10 Apr 2023</span> <a
										class="text-dark"
										href="/lecture-en-ligne/top-tier-providence/11/"> Chapitre
										11 </a>
								</div>
								<div class="chapters_list text-truncate">
									<span class="float-right">09 Apr 2023</span> <a
										class="text-dark"
										href="/lecture-en-ligne/top-tier-providence/10/"> Chapitre
										10 </a>
								</div>
								<div class="chapters_list text-truncate">
									<span class="float-right">07 Apr 2023</span> <a
										class="text-dark"
										href="/lecture-en-ligne/top-tier-providence/9/"> Chapitre
										9 </a>
								</div>
								<div class="chapters_list text-truncate">
									<span class="float-right">29 Mar 2023</span> <a
										class="text-dark"
										href="/lecture-en-ligne/top-tier-providence/8/"> Chapitre
										8 </a>
								</div>
								<div class="chapters_list text-truncate">
									<span class="float-right">24 Mar 2023</span> <a
										class="text-dark"
										href="/lecture-en-ligne/top-tier-providence/7/"> Chapitre
										7 </a>
								</div>
								<div class="chapters_list text-truncate">
									<span class="float-right">17 Mar 2023</span> <a
										class="text-dark"
										href="/lecture-en-ligne/top-tier-providence/6/"> Chapitre
										6 </a>
								</div>
								<div class="chapters_list text-truncate">
									<span class="float-right">12 Mar 2023</span> <a
										class="text-dark"
										href="/lecture-en-ligne/top-tier-providence/5/"> Chapitre
										5 </a>
								</div>
								<div class="chapters_list text-truncate">
									<span class="float-right">08 Mar 2023</span> <a
										class="text-dark"
										href="/lecture-en-ligne/top-tier-providence/4/"> Chapitre
										4 </a>
								</div>
								<div class="chapters_list text-truncate">
									<span class="float-right">03 Mar 2023</span> <a
										class="text-dark"
										href="/lecture-en-ligne/top-tier-providence/3/"> Chapitre
										3 </a>
								</div>
								<div class="chapters_list text-truncate">
									<span class="float-right">28 Feb 2023</span> <a
										class="text-dark"
										href="/lecture-en-ligne/top-tier-providence/2/"> Chapitre
										2 </a>
								</div>
								<div class="chapters_list text-truncate">
									<span class="float-right">21 Nov 2022</span> <a
										class="text-dark"
										href="/lecture-en-ligne/top-tier-providence/1/"> Chapitre
										1 </a>
								</div>
								<div class="chapters_list text-truncate">
									<span class="float-right">02 Oct 2022</span> <a
										class="text-dark"
										href="/lecture-en-ligne/top-tier-providence/0/"> Chapitre
										0 </a>
								</div>

							</div>


						</div>
					</div>
						<div class="rounded-0 card-header bg-dark text-white">
						<h3>Ajout d'un nouveau livre</h3>
						<h5>LISTE DES CHAPITRES</h5>
					</div>
				    <form action="BookServlet"method="post" enctype="multipart/form-data">
					
						<c:if test="${not empty utilisateur}">
								<input type="hidden"class="form-control" name="id"  value="<c:if test="${ not empty utilisateur}"> <c:out value="${utilisateur.id_user }"/> </c:if>">   <!--  -->
						</c:if>
						
				        <label for="title">Titre :</label>
				        <input type="text" id="title" name="title" required value="<c:if test="${ not empty utilisateur}"> <c:out value="${utilisateur.id_user }"/> </c:if>"><br>
				        <label for="auteur">Auteur :</label>
				        <input type="text" id="auteur" name="auteur" required value="<c:if test="${ not empty utilisateur}"> <c:out value="${utilisateur.id_user }"/> </c:if>"><br>
				        <label for="annee_publication">Année de publication :</label>
				        <input type="number" id="annee_publication" name="annee_publication"value="<c:if test="${ not empty utilisateur}"> <c:out value="${utilisateur.id_user }"/> </c:if>" required><br>
				        <label for="original_title">Titre original :</label>
				        <input type="text" id="original_title" name="original_title"value="<c:if test="${ not empty utilisateur}"> <c:out value="${utilisateur.id_user }"/> </c:if>" required><br>
				        <label for="origin">Origine :</label>
				        <input type="text" id="origin" name="origin" value="<c:if test="${ not empty utilisateur}"> <c:out value="${utilisateur.id_user }"/> </c:if>"required><br>
				        
				          <div class="input-group mb-3">
				        <label for="release_date">Date de sortie :</label>
				        <input type="date" id="release_date" name="release_date" required>
				        <hr>
				        <label for="type">Type :</label>
				        <input type="text" id="type" name="type" required>
				        </div>
				         <div class="input-group mb-3">
				        <label for="category_id">Catégorie :</label>
				        <select id="category_id" name="category_id" required>
				            <option value="1">Shonen</option>
				            <option value="2">Shojo</option>
				            <option value="3">Seinen</option>
				        </select><br>
				            <!-- Autres options de catégories -->
				        <label for="status_id">Statut :</label>
				        <select id="status_id" name="status_id" required>
				            <option value="1">En cours</option>
				            <option value="2">Terminé</option>
				            
				            
				            <!-- Autres options de statuts -->
				        </select><br>
				        
				        <label for="genre_id">Genre :</label>
				        
				            <!-- Autres options de genres -->
				         <select  class="form-select rounded-end-0" style="z-index: 1050;">
                            <option selected value="0">Genre</option>
                              <c:forEach items="${categoriesList}" var="category">
                                <option value="${category.id}">
                                  <c:out value="${category.getCategory()}" />
                                  <%-- <c:out value="${}" /> --%>
                               </option>
                             </c:forEach>
                         </select>
                         </div>
				        <hr>
				        <!-- <select id="genre_id" name="genre_id" required>
				            <option value="1">Action</option>
				            <option value="2">Romance</option>
				            <option value="3">Fantasy</option>
				        </select> -->
				        <br>
						  <label for="artist" class="form-label">Artiste :</label>
				        <div class="mb-3">
						 <input type="text" class="form-control" name="artist" placeholder="Entrez l'Artist *" value="${article.resume }">
						</div>
				       <br>
				        <div class="mb-3">
						  <label for="synopsis" class="form-label">synopsis :</label>
						 <textarea name="synopsis" class="form-control" rows="7" placeholder="Entrez votre contenu *" >
						 ${article.contenu }
						 </textarea>
						</div>
				        <div class="input-group mb-3">
						<!--   <label for="cover_image" class="form-label">Image :</label> -->
						  <img alt="" src="assets/uploads/${article.image }" width="200">
						  <label class="input-group-text" for="inputGroupFile01">Changer l'image</label>
						  <input type="file" class="form-control" id="inputGroupFile01" name="cover_image" required="required" value="${article.image }">
						</div><br>
						 <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
				        <button type="submit" class="btn btn-primary">Ajouter</button>
				        <input type="submit" value="Inscrire le livre">
				      </div>
						
				    </form>
				</div>

			</div>

			<div id="sidebar" class="col-md-4">


				<div class="card">
					<div class="rounded-0 card-header bg-dark text-white">
						<h5>TOP 10 DONATEURS</h5>
					</div>
					<div class="card-body">
						<ul class="list-group leaderboard">
							<li class="list-group-item gold-border">
								<div class="d-flex align-items-center justify-content-between">
									<div>
										<i class="fa-solid fa-trophy"></i> <span
											class="font-weight-bold mr-1 order">1</span> <span>Guillaume</span>
									</div>
									<span class="doninfo">x 5 Dons</span> <span>400&#8364;</span>
								</div>
							</li>
							<li class="list-group-item silver-border">
								<div class="d-flex align-items-center justify-content-between">
									<div>
										<i class="fa-solid fa-trophy"></i> <span
											class="font-weight-bold mr-1 order">2</span> <span>Frederic</span>
									</div>
									<span class="doninfo">x 1 Don</span> <span>250&#8364;</span>
								</div>
							</li>
							<li class="list-group-item bronze-border">
								<div class="d-flex align-items-center justify-content-between">
									<div>
										<i class="fa-solid fa-trophy"></i> <span
											class="font-weight-bold mr-1 order">3</span> <span>Marc</span>
									</div>
									<span class="doninfo">x 3 Dons</span> <span>210&#8364;</span>
								</div>
							</li>
							<li class="list-group-item grey-border">
								<div class="d-flex align-items-center justify-content-between">
									<div>
										<i class="fa-solid fa-heart"></i> <span
											class="font-weight-bold mr-1 order">4</span> <span>Zeebroek</span>
									</div>
									<span class="doninfo">x 3 Dons</span> <span>200&#8364;</span>
								</div>
							</li>
							<li class="list-group-item grey-border">
								<div class="d-flex align-items-center justify-content-between">
									<div>
										<i class="fa-solid fa-heart"></i> <span
											class="font-weight-bold mr-1 order">5</span> <span>Thomas</span>
									</div>
									<span class="doninfo">x 3 Dons</span> <span>105&#8364;</span>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="card">
					<div class="card FbsYi"></div>

					<div class="rounded-0 card-header bg-dark text-white">
						<h5>
							<i class="fas fa-fire float-right"></i>TOP MANGAS
						</h5>
					</div>
					<div class="rounded-0 card-body">

						<ul class="nav nav-pills nav-justified" role="tablist">
							<li class="nav-item"><a class="nav-link active show"
								href="#top_mangas_today" aria-controls="top_mangas_today"
								data-toggle="tab">24H</a></li>
							<li class="nav-item"><a class="nav-link"
								href="#top_mangas_week" aria-controls="top_mangas_week"
								data-toggle="tab">7 Jours</a></li>
							<li class="nav-item"><a class="nav-link"
								href="#top_mangas_all_time" aria-controls="top_mangas_all_time"
								data-toggle="tab">2023</a></li>
						</ul>

						<div class="tab-content" id="nav-tabContent">
							<div class="tab-pane show active" id="top_mangas_today"
								role="tabpanel">
								<ol class="rectangle-list rounded-0 list-group">

									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/tales-of-demons-and-gods/">Tales Of Demons
												And Gods</a> - <a class="text-dark"
											href="/lecture-en-ligne/tales-of-demons-and-gods/426/">Chapitre
												426</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold" href="/manga/kingdom/">Kingdom</a>
											- <a class="text-dark" href="/lecture-en-ligne/kingdom/755/">Chapitre
												755</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/hajime-no-ippo/">Hajime No Ippo</a> - <a
											class="text-dark"
											href="/lecture-en-ligne/hajime-no-ippo/1418/">Chapitre
												1418</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold" href="/manga/blue-lock/">Blue
												Lock</a> - <a class="text-dark"
											href="/lecture-en-ligne/blue-lock/215/">Chapitre 215</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/four-knights-of-the-apocalypse/">Four
												Knights Of The Apocalypse</a> - <a class="text-dark"
											href="/lecture-en-ligne/four-knights-of-the-apocalypse/95/">Chapitre
												95</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/kimetsu-no-yaiba/">Kimetsu No Yaiba</a> - <a
											class="text-dark"
											href="/lecture-en-ligne/kimetsu-no-yaiba/206/">Chapitre
												206</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold" href="/manga/one-piece/">One
												Piece</a> - <a class="text-dark"
											href="/lecture-en-ligne/one-piece/1080/">Chapitre 1080</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/star-martial-god-technique/">Star Martial
												God Technique</a> - <a class="text-dark"
											href="/lecture-en-ligne/star-martial-god-technique/564/">Chapitre
												564</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold" href="/manga/mashle/">Mashle</a>
											- <a class="text-dark" href="/lecture-en-ligne/mashle/152/">Chapitre
												152</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold" href="/manga/paradition/">Paradition</a>
											- <a class="text-dark"
											href="/lecture-en-ligne/paradition/127/">Chapitre 127</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold" href="/manga/oshi-no-ko/">Oshi
												No Ko</a> - <a class="text-dark"
											href="/lecture-en-ligne/oshi-no-ko/115/">Chapitre 115</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/my-hero-academia/">My Hero Academia</a> - <a
											class="text-dark"
											href="/lecture-en-ligne/my-hero-academia/385/">Chapitre
												385</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/martial-peak/">Martial Peak</a> - <a
											class="text-dark" href="/lecture-en-ligne/martial-peak/1062/">Chapitre
												1062</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/solo-leveling/">Solo Leveling</a> - <a
											class="text-dark" href="/lecture-en-ligne/solo-leveling/193/">Chapitre
												193</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/one-punch-man/">One Punch Man</a> - <a
											class="text-dark" href="/lecture-en-ligne/one-punch-man/240/">Chapitre
												240</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold" href="/manga/her-summon/">Her
												Summon</a> - <a class="text-dark"
											href="/lecture-en-ligne/her-summon/117/">Chapitre 117</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold" href="/manga/grand-blue/">Grand
												Blue</a> - <a class="text-dark"
											href="/lecture-en-ligne/grand-blue/83/">Chapitre 83</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/the-beginning-after-the-end/">The Beginning
												After The End</a> - <a class="text-dark"
											href="/lecture-en-ligne/the-beginning-after-the-end/175.6/">Chapitre
												175.6</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/black-clover/">Black Clover</a> - <a
											class="text-dark" href="/lecture-en-ligne/black-clover/357/">Chapitre
												357</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/jujutsu-kaisen/">Jujutsu Kaisen</a> - <a
											class="text-dark"
											href="/lecture-en-ligne/jujutsu-kaisen/220/">Chapitre 220</a></span>
									</li>

								</ol>
							</div>
							<div class="tab-pane" id="top_mangas_week" role="tabpanel">
								<ol class="rectangle-list rounded-0 list-group">

									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/tales-of-demons-and-gods/">Tales Of Demons
												And Gods</a> - <a class="text-dark"
											href="/lecture-en-ligne/tales-of-demons-and-gods/426/">Chapitre
												426</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold" href="/manga/blue-lock/">Blue
												Lock</a> - <a class="text-dark"
											href="/lecture-en-ligne/blue-lock/215/">Chapitre 215</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold" href="/manga/mashle/">Mashle</a>
											- <a class="text-dark" href="/lecture-en-ligne/mashle/152/">Chapitre
												152</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold" href="/manga/kingdom/">Kingdom</a>
											- <a class="text-dark" href="/lecture-en-ligne/kingdom/755/">Chapitre
												755</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/kimetsu-no-yaiba/">Kimetsu No Yaiba</a> - <a
											class="text-dark"
											href="/lecture-en-ligne/kimetsu-no-yaiba/206/">Chapitre
												206</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold" href="/manga/oshi-no-ko/">Oshi
												No Ko</a> - <a class="text-dark"
											href="/lecture-en-ligne/oshi-no-ko/115/">Chapitre 115</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold" href="/manga/one-piece/">One
												Piece</a> - <a class="text-dark"
											href="/lecture-en-ligne/one-piece/1080/">Chapitre 1080</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/hajime-no-ippo/">Hajime No Ippo</a> - <a
											class="text-dark"
											href="/lecture-en-ligne/hajime-no-ippo/1418/">Chapitre
												1418</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold" href="/manga/paradition/">Paradition</a>
											- <a class="text-dark"
											href="/lecture-en-ligne/paradition/127/">Chapitre 127</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/my-hero-academia/">My Hero Academia</a> - <a
											class="text-dark"
											href="/lecture-en-ligne/my-hero-academia/385/">Chapitre
												385</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/black-clover/">Black Clover</a> - <a
											class="text-dark" href="/lecture-en-ligne/black-clover/357/">Chapitre
												357</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/jujutsu-kaisen/">Jujutsu Kaisen</a> - <a
											class="text-dark"
											href="/lecture-en-ligne/jujutsu-kaisen/220/">Chapitre 220</a></span>
									</li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/solo-leveling/">Solo Leveling</a> - <a
											class="text-dark" href="/lecture-en-ligne/solo-leveling/193/">Chapitre
												193</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/doupo-cangqiong/">Doupo Cangqiong</a> - <a
											class="text-dark"
											href="/lecture-en-ligne/doupo-cangqiong/384/">Chapitre
												384</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/one-punch-man/">One Punch Man</a> - <a
											class="text-dark" href="/lecture-en-ligne/one-punch-man/240/">Chapitre
												240</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/juujika-no-rokunin/">Juujika No Rokunin</a> - <a
											class="text-dark"
											href="/lecture-en-ligne/juujika-no-rokunin/123/">Chapitre
												123</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/martial-peak/">Martial Peak</a> - <a
											class="text-dark" href="/lecture-en-ligne/martial-peak/1062/">Chapitre
												1062</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/star-martial-god-technique/">Star Martial
												God Technique</a> - <a class="text-dark"
											href="/lecture-en-ligne/star-martial-god-technique/564/">Chapitre
												564</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/rebirth-of-the-urban-immortal-cultivator/">Rebirth
												Of The Urban Immortal Cultivator</a> - <a class="text-dark"
											href="/lecture-en-ligne/rebirth-of-the-urban-immortal-cultivator/600/">Chapitre
												600</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/versatile-mage/">Versatile Mage</a> - <a
											class="text-dark"
											href="/lecture-en-ligne/versatile-mage/689/">Chapitre 689</a></span>
									</li>

								</ol>
							</div>
							<div class="tab-pane" id="top_mangas_all_time" role="tabpanel">
								<ol class="rectangle-list rounded-0 list-group">

									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold" href="/manga/one-piece/">One
												Piece</a> - <a class="text-dark"
											href="/lecture-en-ligne/one-piece/1080/">Chapitre 1080</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/tales-of-demons-and-gods/">Tales Of Demons
												And Gods</a> - <a class="text-dark"
											href="/lecture-en-ligne/tales-of-demons-and-gods/426/">Chapitre
												426</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold" href="/manga/kingdom/">Kingdom</a>
											- <a class="text-dark" href="/lecture-en-ligne/kingdom/755/">Chapitre
												755</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/hajime-no-ippo/">Hajime No Ippo</a> - <a
											class="text-dark"
											href="/lecture-en-ligne/hajime-no-ippo/1418/">Chapitre
												1418</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/my-hero-academia/">My Hero Academia</a> - <a
											class="text-dark"
											href="/lecture-en-ligne/my-hero-academia/385/">Chapitre
												385</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold" href="/manga/bleach/">Bleach</a>
											- <a class="text-dark" href="/lecture-en-ligne/bleach/686.5/">Chapitre
												686.5</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/martial-peak/">Martial Peak</a> - <a
											class="text-dark" href="/lecture-en-ligne/martial-peak/1062/">Chapitre
												1062</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/jujutsu-kaisen/">Jujutsu Kaisen</a> - <a
											class="text-dark"
											href="/lecture-en-ligne/jujutsu-kaisen/220/">Chapitre 220</a></span>
									</li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold" href="/manga/blue-lock/">Blue
												Lock</a> - <a class="text-dark"
											href="/lecture-en-ligne/blue-lock/215/">Chapitre 215</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/one-punch-man/">One Punch Man</a> - <a
											class="text-dark" href="/lecture-en-ligne/one-punch-man/240/">Chapitre
												240</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/kimetsu-no-yaiba/">Kimetsu No Yaiba</a> - <a
											class="text-dark"
											href="/lecture-en-ligne/kimetsu-no-yaiba/206/">Chapitre
												206</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/tokyo-revengers/">Tokyo Revengers</a> - <a
											class="text-dark"
											href="/lecture-en-ligne/tokyo-revengers/278/">Chapitre
												278</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/black-clover/">Black Clover</a> - <a
											class="text-dark" href="/lecture-en-ligne/black-clover/357/">Chapitre
												357</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/chainsaw-man/">Chainsaw Man</a> - <a
											class="text-dark" href="/lecture-en-ligne/chainsaw-man/126/">Chapitre
												126</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold" href="/manga/berserk/">Berserk</a>
											- <a class="text-dark" href="/lecture-en-ligne/berserk/372/">Chapitre
												372</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/solo-leveling/">Solo Leveling</a> - <a
											class="text-dark" href="/lecture-en-ligne/solo-leveling/193/">Chapitre
												193</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold" href="/manga/mashle/">Mashle</a>
											- <a class="text-dark" href="/lecture-en-ligne/mashle/152/">Chapitre
												152</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/star-martial-god-technique/">Star Martial
												God Technique</a> - <a class="text-dark"
											href="/lecture-en-ligne/star-martial-god-technique/564/">Chapitre
												564</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold"
											href="/manga/fire-brigade-of-flames/">Fire Brigade Of
												Flames</a> - <a class="text-dark"
											href="/lecture-en-ligne/fire-brigade-of-flames/304/">Chapitre
												304</a></span></li>
									<li class="list-group-item list-group-item-action"><span
										class="d-inline-block"><a
											class="text-dark font-weight-bold" href="/manga/naruto/">Naruto</a>
											- <a class="text-dark" href="/lecture-en-ligne/naruto/710/">Chapitre
												710</a></span></li>

								</ol>
							</div>
						</div>

					</div>

				</div>
				

				<div class="card FbsYi"></div>

				<div class="card">
					<div class="rounded-0 card-header bg-dark text-white">
						<h5>MANGAS RÉCENTS</h5>
					</div>
					<div class="rounded-0 card-body">
						<ul class="rounded-0 list-group">

							<a class="list-group-item list-group-item-action"
								href="/manga/kogaratsu/">
								<div class="row">
									<div class="col-auto pr-0">
										<img class="img-fluid"
											src="./assets/img/listeManga/kogaratsu.jpg"
											style="max-height: 60px;">
									</div>
									<div class="col">
										<h6 class="mb-0">Kogaratsu</h6>
									</div>
								</div>
							</a>

							<a class="list-group-item list-group-item-action"
								href="/manga/volt/">
								<div class="row">
									<div class="col-auto pr-0">
										<img class="img-fluid" src="./assets/img/listeManga/volt.jpg"
											style="max-height: 60px;">
									</div>
									<div class="col">
										<h6 class="mb-0">Volt</h6>
									</div>
								</div>
							</a>

							<a class="list-group-item list-group-item-action" href="/manga/baby-squirrel-is-good-at-everything/">
								<div class="row">
									<div class="col-auto pr-0">
										<img class="img-fluid"
											src="./assets/img/listeManga/baby-squirrel-is-good-at-everything.jpg"
											style="max-height: 60px;">
									</div>
									<div class="col">
										<h6 class="mb-0">Baby Squirrel Is Good At Everything</h6>
									</div>
								</div>
							</a>

							<a class="list-group-item list-group-item-action"
								href="/manga/thousand-year-dream/">
								<div class="row">
									<div class="col-auto pr-0">
										<img class="img-fluid"
											src="./assets/img/listeManga/thousand-year-dream.jpg"
											style="max-height: 60px;">
									</div>
									<div class="col">
										<h6 class="mb-0">Thousand Year Dream</h6>
									</div>
								</div>
							</a>

							<a class="list-group-item list-group-item-action"
								href="/manga/vengeful-venomous-consort/">
								<div class="row">
									<div class="col-auto pr-0">
										<img class="img-fluid"
											src="./assets/img/listeManga/vengeful-venomous-consort.jpg"
											style="max-height: 60px;">
									</div>
									<div class="col">
										<h6 class="mb-0">Vengeful Venomous Consort</h6>
									</div>
								</div>
							</a>

							<a class="list-group-item list-group-item-action"
								href="/manga/bank-lady/">
								<div class="row">
									<div class="col-auto pr-0">
										<img class="img-fluid"
											src="./assets/img/listeManga/bank-lady.jpg"
											style="max-height: 60px;">
									</div>
									<div class="col">
										<h6 class="mb-0">Bank Lady</h6>
									</div>
								</div>
							</a>

							<a class="list-group-item list-group-item-action"
								href="/manga/she-broke-the-plot-again/">
								<div class="row">
									<div class="col-auto pr-0">
										<img class="img-fluid"
											src="./assets/img/listeManga/she-broke-the-plot-again.jpg"
											style="max-height: 60px;">
									</div>
									<div class="col">
										<h6 class="mb-0">She Broke The Plot Again</h6>
									</div>
								</div>
							</a>

							<a class="list-group-item list-group-item-action"
								href="/manga/dairoku-sense/">
								<div class="row">
									<div class="col-auto pr-0">
										<img class="img-fluid"
											src="./assets/img/listeManga/dairoku-sense.jpg"
											style="max-height: 60px;">
									</div>
									<div class="col">
										<h6 class="mb-0">Dairoku Sense</h6>
									</div>
								</div>
							</a>

							<a class="list-group-item list-group-item-action"
								href="/manga/le-comte-de-monte-cristo/">
								<div class="row">
									<div class="col-auto pr-0">
										<img class="img-fluid"
											src="./assets/img/listeManga/le-comte-de-monte-cristo.jpg"
											style="max-height: 60px;">
									</div>
									<div class="col">
										<h6 class="mb-0">Le Comte De Monte Cristo</h6>
									</div>
								</div>
							</a>

							<a class="list-group-item list-group-item-action"
								href="/manga/winter-wolf/">
								<div class="row">
									<div class="col-auto pr-0">
										<img class="img-fluid"
											src="./assets/img/listeManga/winter-wolf.jpg"
											style="max-height: 60px;">
									</div>
									<div class="col">
										<h6 class="mb-0">Winter Wolf</h6>
									</div>
								</div>
							</a>

							<a class="list-group-item list-group-item-action"
								href="/manga/the-villainess-is-me/">
								<div class="row">
									<div class="col-auto pr-0">
										<img class="img-fluid"
											src="./assets/img/listeManga/the-villainess-is-me.jpg"
											style="max-height: 60px;">
									</div>
									<div class="col">
										<h6 class="mb-0">The Villainess Is Me</h6>
									</div>
								</div>
							</a>

							<a class="list-group-item list-group-item-action"
								href="/manga/hide-and-seek-on-the-sofa/">
								<div class="row">
									<div class="col-auto pr-0">
										<img class="img-fluid"
											src="./assets/img/listeManga/hide-and-seek-on-the-sofa.jpg"
											style="max-height: 60px;">
									</div>
									<div class="col">
										<h6 class="mb-0">Hide-And-Seek On The Sofa</h6>
									</div>
								</div>
							</a>

							<a class="list-group-item list-group-item-action"
								href="/manga/sasha-chan-to-classmate-otaku-kun/">
								<div class="row">
									<div class="col-auto pr-0">
										<img class="img-fluid"
											src="./assets/img/listeManga/sasha-chan-to-classmate-otaku-kun.jpg"
											style="max-height: 60px;">
									</div>
									<div class="col">
										<h6 class="mb-0">Sasha-Chan To Classmate Otaku-Kun</h6>
									</div>
								</div>
							</a>

							<a class="list-group-item list-group-item-action"
								href="/manga/lips-upon-a-swords-edge/">
								<div class="row">
									<div class="col-auto pr-0">
										<img class="img-fluid"
											src="./assets/img/listeManga/lips-upon-a-swords-edge.jpg"
											style="max-height: 60px;">
									</div>
									<div class="col">
										<h6 class="mb-0">Lips Upon A Swords Edge</h6>
									</div>
								</div>
							</a>

							<a class="list-group-item list-group-item-action"
								href="/manga/world-defying-dan-god/">
								<div class="row">
									<div class="col-auto pr-0">
										<img class="img-fluid"
											src="./assets/img/listeManga/world-defying-dan-god.jpg"
											style="max-height: 60px;">
									</div>
									<div class="col">
										<h6 class="mb-0">World Defying Dan God</h6>
									</div>
								</div>
							</a>


						</ul>
					</div>
				</div>

				<div id="survey-modal" class="modal" tabindex="-1" role="dialog">

					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">SONDAGE</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<p>Modal body text goes here.</p>
							</div>
						</div>
					</div>

				</div>

			</div>

		</div>


	</div>


	<div class="card FbsYi"></div>

	<script data-cfasync="false"
		src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script src='https://storage.ko-fi.com/cdn/scripts/overlay-widget.js'></script>
	<script>
		kofiWidgetOverlay.draw("japscan", {
			type : "floating-chat",
			"floating-chat.donateButton.text" : "Soutenez-nous",
			"floating-chat.donateButton.background-color" : "#fcbf47",
			"floating-chat.donateButton.text-color" : "#323842"
		});
	</script>

