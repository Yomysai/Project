	
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

    