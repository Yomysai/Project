<div class="container">
	
	<!-- Si l'article est bien ajouté en base  -->
	<c:if test="${not empty message }">
		<div class="alert alert-success" role="alert">
		 	${message }
		</div>
	</c:if>
	
	
	<!-- CONTENT =============================-->
	<c:if test="${ empty articles }">
		<div class="alert alert-warning" role="alert">
		 	Pas d'articles 10pots
		</div>
			<img alt="" src="https://ronnydeschepper.files.wordpress.com/2015/05/knipsel-14.jpg">
	</c:if>
	<c:if test="${ not empty articles }">	
		<section class="item content">
		<div class="container toparea">
			<div class="underlined-title">
				<div class="editContent">
					<h1 class="text-center latestitems">OUR PRODUCTS</h1>
				</div>
				<div class="wow-hr type_short">
					<span class="wow-hr-h">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					</span>
				</div>
			</div>
			<div class="row">
			<c:forEach items="${articles }" var="article">
				
				<div class="col-md-4">
					<div class="productbox">
						<div class="fadeshop">
							<div class="captionshop text-center" style="display: none;">
								<h3><c:out value="${article.title }"></c:out></h3>
								<p>
									 <c:out value="${article.auteur }"></c:out>
								</p>
								<p>
									<a href="#" class="learn-more detailslearn"><i class="fa fa-shopping-cart"></i> Purchase</a>
									<a href="show?id=<c:out value = "${article.id }"/>" class="learn-more detailslearn">
									<i class="fa fa-link"></i> Details</a>
									<a href="editArticle?id=<c:out value = "${article.id}"/>&mode=editArticle" class="learn-more detailslearn"><i class="fa fa-shopping-cart"></i> Edif</a>
									<a href="#" class="learn-more detailslearn"><i class="fa fa-shopping-cart"></i> Supprimé</a>
								</p>
							</div>
							<span class="maxproduct"><img src="resources/uploads/${article.cover_image}" alt=""></span>
						</div>
						<div class="product-details">
							<a href="#">
								<h1> <c:out value="${article.title }"/></h1>
							</a>
							<span class="price">
								<em class="edd_price">De: ${article.author.nickname }</em>
							</span>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
		</section>
	</c:if>
</div>
   <h1>Liste des livres</h1>
				    <form action="/mon-application/ajouter-livre" method="post">
				        <!-- Autres options de genres -->
				        <select class="form-select rounded-end-0" id="genre_id" name="genre_id" required style="z-index: 1050;">
				            <option selected value="0">Genre</option>
				            <c:forEach items="${categoriesList}" var="category">
				                <option value="${category.id}">
				                    <c:out value="${category.category}" />
				                </option>
				            </c:forEach>
				        </select>
				        <!-- Liste des livres -->
				        <select class="form-select rounded-end-0" id="book_id" name="book_id" required style="z-index: 1050;">
				            <option selected value="1">Livre  AAAAAAAAAA</option>
				         <c:out value=""></c:out>  
				            <c:forEach items="${articles}" var="book">
				                <option value="${book.id}">
                    				<c:out value="${book.title}" /> - <c:out value="${book.auteur}" /> - <c:out value="${book.annee_publication}" /> - <c:out value="${book.original_title}" /> -
                    				 <c:out value="${book.origin}" /> -<%--  <c:out value="${book.status}" /> --%> - <c:out value="${book.release_date}" /> - <c:out value="${book.type}" /> -
                    				  <%-- <c:out value="${book.getGenres().getName}"  /> --%>- <c:out value="${book.author}" /> - <c:out value="${book.artist}" /> - <c:out value="${book.synopsis}" /> - 
                    				  <c:out value="${book.cover_image}" /> - <c:out value="${book.created_at}" />
                				</option>
				            </c:forEach>
				        </select>
				        <input type="submit" value="Ajouter" />
				    </form>
			       <div class="container">
				     <h1>Liste des livres</h1>
    <form action="/mon-application/ajouter-livre" method="post">
        <!-- Autres options de genres -->
        <select class="form-select rounded-end-0" id="genre_id" name="genre_id" required style="z-index: 1050;">
            <option selected value="0">Genre</option>
            <c:forEach items="${categoriesList}" var="category">
                <option value="${category.id}">
                    <c:out value="${category.category}" />
                </option>
            </c:forEach>
        </select>
        <!-- Liste des livres -->
                    <div>
        <select class="form-select rounded-end-0" id="book_id" name="book_id" required style="z-index: 1050;">
            <option selected value="1">Livre</option>
            <c:forEach items="${articles}" var="book">
                <option value="${book.id}">
                        <p><c:out value="${book.title}" /></p>
                        <p><c:out value="${book.auteur}" /></p>
                        <p><c:out value="${book.annee_publication}" /></p>
                        <p><c:out value="${book.original_title}" /></p>
                        <p><c:out value="${book.origin}" /></p>
                        <p><c:out value="${book.status}" /></p>
                        <p><c:out value="${book.release_date}" /></p>
                        <p><c:out value="${book.type}" /></p>
                        <p><c:out value="${book.getGenres().getName}" /></p>
                        <p><c:out value="${book.author}" /></p>
                        <p><c:out value="${book.artist}" /></p>
                        <p><c:out value="${book.synopsis}" /></p>
                        <p><c:out value="${book.cover_image}" /></p>
                        <p><c:out value="${book.created_at}" /></p>
                </option>
            </c:forEach>
        </select>
                    </div>
        <input type="submit" value="Ajouter" />
    </form>
				    
				    </div>


				    <h1>Books List</h1>
				    <table>
				        <tr>
				            <th>ID</th>
				            <th>Title</th>
				            <th>Auteur</th>
				            <th>Année de publication</th>
				            <th>Catégorie</th>
				            <th>Titre original</th>
				            <th>Origine</th>
				            <th>Statut</th>
				            <th>Type</th>
				            <th>Artiste</th>
				            <th>Synopsis</th>
				            <th>Couverture</th>
				            <th>Date de création</th>
				        </tr>
				        <c:forEach var="book" items="${articles}">
				            <tr>
				                <td>${book.id}</td>
				                <td>${book.title}</td>
				                <td>${book.auteur}</td>
				                <td>${book.annee_publication}</td>
				                <td>${book.category_id}</td>
				                <td>${book.original_title}</td>
				                <td>${book.origin}</td>
				                <td>${book.status}</td>
				                <td>${book.getRelease_date()}</td>
				                <td>${book.type}</td>
				                <td>${book.artist}</td>
				                <td>${book.synopsis}</td>
				                <td>${book.cover_image}</td>
				                <td>${book.getCreated_at()}</td>
				            </tr>
				        </c:forEach>
				    </table>
				 
   
	    

<!-- Load JS here for greater good =============================-->
<!-- <script src="resources/js/jquery-.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/anim.js"></script> -->
<!-- <script>
//----HOVER CAPTION---//	  
jQuery(document).ready(function ($) {
	$('.fadeshop').hover(
		function(){
			$(this).find('.captionshop').fadeIn(150);
		},
		function(){
			$(this).find('.captionshop').fadeOut(150);
		}
	);
});
</script> -->