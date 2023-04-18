<script type="text/javascript" src="./assets/js/account.js"></script>


<c:if test="${ empty user }">

	<div class="alert alert-danger">Bah, tu n'est connecter et tu
		veux modifier quel compte ?!</div>
	<img alt="connected" src="assets/img/connected2.jpg">
</c:if>
<c:if test="${not empty message}">
	<c:choose>
		<c:when test="${fn:contains(message, 'Erreur')}">
			<div class="sticky-top messageToUser errorMessage">
				<c:out value="${message}" />
			</div>
		</c:when>
		<c:otherwise>
			<div class="sticky-top messageToUser">
				<c:out value="${message}" />
			</div>
		</c:otherwise>
	</c:choose>
</c:if>

<section class="container-account">
	<c:if test="${ not empty user }">
	<h1>
		<i class="bi bi-person-vcard"></i> Mon compte
	</h1>

	<div>
		Compte
		<c:out value="${fn:toLowerCase(currentUser.role.role)}" />
		créé le
		<fmt:formatDate type="date" value="${currentUser.registrationDate}" />
		.
	</div>
	<div>
		Numéro client :
		<c:out value="${currentUser.id}" />
	</div>
	<div id="accountNav" class="sticky-top">
		<a class="btn btn-primary" href="#accountInfo" role="button"><i
			class="bi bi-person-badge"></i> Infos</a> <a class="btn btn-primary"
			href="#accountPassword" role="button"><i class="bi bi-three-dots"></i>
			Mot de passe</a>
	</div>



	<hr id="accountInfo">
	<h3 class="text-secondary">
		<i class="bi bi-person-badge"></i> Mes informations personnelles
	</h3>
	<form method="post">
		<input type="hidden" class="form-control" name="formSubmitted"
			value="accountInfo">
		<div class="mb-3">
			<div class="row">
				<div class="col">
					<label for="userTitle" class="form-label col-3">Civilité</label> <select
						class="form-select" id="userTitle" name="userTitle">
						<option selected>Choisir</option>
						<option value="M.">M.</option>
						<option value="Mme.">Mme.</option>
						<option value="Autre">Autre</option>
					</select>
				</div>

				<div class="col">
					<label for="userLastName" class="form-label">Pseude</label> <input
						type="text" class="form-control" id="userLastName"
						name="usernickname">
				</div>
			</div>
			<div class="spacer"></div>
			<div class="row">
				<div class="col">
					<label for="userEmail" class="form-label">Email</label> <input
						type="email" class="form-control" id="userEmail" name="userEmail">
				</div>
			</div>
		</div>
		<button type="submit" class="btn btn-primary">Sauvegarder les
			modifications</button>
	</form>

	<div id="container">
		
		<div class="underline"></div>

		<form method="post" action="modification" >
			<c:if test="${not empty utilisateur}">
				<input class="form-control" name="id"  value="<c:if test="${ not empty user}"> <c:out value="${user.id }"/> </c:if>">   <!-- type="hidden" -->
			</c:if>

			<div class="nom">
				<label for="nom"></label> <input type="text"
					placeholder="Saisir Nom" name="nom" id="name"  value="<c:if test="${ not empty user}"> <c:out value="${user.getNickname() }"/> </c:if>">
			</div>

			<div class="mb-3">
				<label for="email"></label> <input placeholder="Mon Email"
					type="email" id="email" name="email" required>
			</div>

			<div class="mb-3">
				<label for="pwd"></label> <input placeholder="Saisir Password"
					type="password" id="password" name="pwd" >
			</div>
			<div class="submit">
				<input type="submit" value="Send Message" id="form_button" />
			</div>
		</form>
		<!-- // End form -->
	</div>
	<hr id="accountPassword">
	<h3 class="text-secondary">
		<i class="bi bi-three-dots"></i> Mon mot de passe
	</h3>
	<form method="post">
		<input type="hidden" class="form-control" name="formSubmitted"
			value="accountPassword">
		<div class="mb-3">
			<div class="row">
				<div class="col">
					<label for="oldPwd" class="form-label">Ancien</label> <input
						type="password" class="form-control" id="oldPwd" name="oldPwd">
				</div>
				<div class="col">
					<label for="newPwd" class="form-label">Nouveau</label> <input
						type="password" class="form-control" id="newPwd" name="newPwd">
				</div>
				<div class="col">
					<label for="confPwd" class="form-label">Confirmation</label> <input
						type="password" class="form-control" id="confPwd" name="confPwd">
				</div>
			</div>
		</div>
		<button type="submit" class="btn btn-primary">Sauvegarder les modifications</button>
	</form>
	<hr>
	<div class="text-end">
		<h5 class="text-secondary"><i class="bi bi-person-fill-dash text-danger"></i> Désactiver mon compte</h5>
		<button type="submit" class="btn btn-sm btn-outline-danger"data-bs-toggle="modal" data-bs-target="#deactivateModal">Je désactive mon compte</button>
	</div>
</c:if>
</section>

<!-- Modal de désactivation de compte -->
<div class="modal fade" id="deactivateModal" tabindex="-1"
	aria-labelledby="deactivateModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content border-3 border-danger">
			<div class="modal-header">
				<h1 class="modal-title fs-5 text-danger" id="deactivateModalLabel">Désactivation de compte</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal"aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div class="text-danger fw-bold">Êtes-vous sûr de vouloir
					désactiver votre compte ?</div>
				<div class="text-danger opacity-75">Si oui, veuillez confirmer
					votre décision en saisissant votre mot de passe :</div>
				<form id="deactivateForm" method="post">
					<input type="hidden" class="form-control" name="formSubmitted"
						value="accountDeactivation"> <input type="hidden"
						class="form-control" id="userIDtoDeactivate"
						name="userIDtoDeactivate"> <input type="password"
						class="form-control mt-3" id="pwdForDeactivation"
						name="pwdForDeactivation"
						placeholder="Saisissez votre mot de passe">
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">Annuler</button>
				<button type="submit" form="deactivateForm"
					class="btn btn-outline-danger">Désactiver mon compte</button>
			</div>
		</div>
	</div>
</div>
	<!-- // End #container -->

