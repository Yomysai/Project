	
    <title>D�tails du livre</title>


    <h1>D�tails du livre</h1>
    <p>ID : { book.getId() }></p>
    <p>Titre : { book.getTitle() }></p>
    <p>Auteur : { book.getAuteur() }></p>
    <p>Ann�e de publication : { book.getAnnee_publication() }></p>
    <p>Cat�gorie : { book.getCategory_id().getName() }></p>
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
    <p>Date de cr�ation : { book.getCreated_at() }></p>



<!-- ****************************************************************************************************************************** -->
    <title>Confirmation d'ajout de livre</title>

    <h1>Confirmation d'ajout de livre</h1>
    <p>Merci d'avoir ajout� un nouveau livre :</p>
    <ul>
        <li>ID : {request.getParameter("id") }></li>
        <li>Titre : {request.getParameter("title") }></li>
        <li>Auteur : {request.getParameter("auteur") }></li>
        <li>Ann�e de publication : {request.getParameter("annee_publication") }></li>
        <li>Cat�gorie : {request.getParameter("category_id") }></li>
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
    <p>Le livre a �t� ajout� avec succ�s dans la base de donn�es.</p>
    <a href="index.jsp">Retour � la page d'accueil</a>

    