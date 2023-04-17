div class="container">
	<!-- Begin Page Content -->
    <div class="container-fluid">
    <!--  ==============Message en cas d'erreur ================ -->
		<c:if test="${ empty utilisateur }">
			
			<div class="alert alert-danger">
					Vous devez �tre connecter en tant ADMIN pour acceder � cette page
					
					<p><a href="<%= request.getContextPath()%>/login">Se connecter</a></p>
			</div>
			<img alt="connected" src="images/connected2.jpg">
		</c:if>
		
		<c:if test="${ not empty utilisateur }">
             <!-- Ajout article -->
           
				<form method="post" enctype="multipart/form-data">
			        	<div class="mb-3">
						  <label for="exampleFormControlInput1" class="form-label">Titre</label>
						  <input type="text" class="form-control" placeholder="titre" name="titre" value="${article.titre }"> <input type="hidden" class="form-control" placeholder="titre"
						name="id" value="${article.id }">
				</div>
			        	<div class="mb-3">
						  <label for="exampleFormControlInput1" class="form-label">R�sum�</label>
						 <input type="text" class="form-control" name="resume" placeholder="Entrez votre resume  *" value="${article.resume }">
						</div>
						<div class="mb-3">
						  <label for="exampleFormControlTextarea1" class="form-label">Example textarea</label>
						 <textarea name="contenu" class="form-control" rows="7" placeholder="Entrez votre contenu *" >
						 ${article.contenu }
						 </textarea>
						</div>
						<div class="input-group mb-3">
						  <img alt="" src="resources/uploads/${article.image }" width="200">
						  <label class="input-group-text" for="inputGroupFile01">Changer l'image</label>
						  <input type="file" class="form-control" id="inputGroupFile01" name="photo" required="required" value="${article.image }">
						</div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
				        <button type="submit" class="btn btn-primary">Ajouter</button>
				        
				      </div>

			        </form>
			</c:if>
			
		</div>
	

   
