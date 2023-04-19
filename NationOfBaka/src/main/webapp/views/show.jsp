<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!-- CONTENT =============================-->
<section class="item content">
<div class="container toparea">
	<div class="underlined-title">
		<div class="editContent">
			<h1 class="text-center latestitems">Détail article</h1>
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
		
			<div class="col-md-8">
				<div class="productbox">
					<img src="resources/uploads/${article.image}"  alt="">
					<div class="clearfix">
					</div>
					<div class="product-details text-left">
						<p>
							${article.contenu }
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<a href="#" class="btn btn-buynow">${article.titre }</a>
				<div class="properties-box">
					<ul class="unstyle">
						<li><b class="propertyname">Auteur: </b> <c:out value="${ article.auteur.prenom }"></c:out></li>
						<li><b class="propertyname">Résumé:</b> <c:out value="${ article.resume }"></c:out></li>
						<li><b class="propertyname">Date de création:</b> <fmt:formatDate  value="${article.created_at}" /></li>
						
					</ul>
				</div>
				
				<!-- PANIER =============================-->
				<form method="post" id="contactform">
						<button type="submit" class="clearfix btn" name="addPanier" value="${article.id}">
							<i class="fa fa-cart-plus"></i>
						 </button>
				</form>
				<!-- PANIER =============================-->
				
				<!-- COMMENTAIRE =============================-->

				<div class="wow-hr type_short">
					<span class="wow-hr-h">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					</span>
				</div>
				<!-- LISTING COMMENTAIRE =============================-->
				<c:if test="${not empty comments }">
					<div class="underlined-title">
						<div class="editContent">
							<h1 class="text-center latestitems">Listing des commentaires</h1>
						</div>
					</div>				
					<c:forEach items="${comments }" var="commentaire">
						<em>Posté par ${commentaire.user.prenom }</em>
						le <fmt:formatDate  value="${commentaire.created_at}" /> 
						<p>						
							${commentaire.commentaire }
						</p>
						<hr>
					</c:forEach>
				</c:if>
				
				<!-- FIN COMMENTAIRE =============================-->
				
				<div class="underlined-title">
					<div class="editContent">
						<h1 class="text-center latestitems">Laissez un commentaire</h1>
					</div>
					
				</div>
				
				<!--  ==============Message en cas d'erreur ================ -->
				<c:if test="${ empty utilisateur }">
					
					<div class="alert alert-danger">
							Vous devez être connecter pour laisser un commentaire
					</div>
					<img alt="connected" src="images/connected2.jpg">
				</c:if>
				
				<!--  ==============Message en cas d'erreur ================ -->
				<c:if test="${ not empty utilisateur }">
					<div class="row">
						<div class="col-lg-12">
							<form method="post" id="contactform">
								<div class="form">
									<textarea name="comment" rows="7" placeholder="Type your Message *"></textarea>
									<input type="submit" id="submit" name="sendComment" class="clearfix btn" value="Send">
								</div>
							</form>
						</div>
					</div>	
				</c:if>
			</div>
	</div>
</div>
</section>
