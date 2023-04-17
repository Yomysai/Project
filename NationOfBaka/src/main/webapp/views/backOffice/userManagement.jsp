
<div class="container w-75">
	<h3 class="col-12 text-center mt-2">
		<c:if test="${action == 'add'}">
			<c:out value="Ajout" />
		</c:if>
		<c:if test="${action == 'update'}">
			<c:out value="Modification" />
		</c:if>
		d'utilisateur
	</h3>
	<form method="post">
		<c:if test="${not empty error}">
			<div class="alert alert-danger">
				<c:out value="${error }" />
			</div>
		</c:if>
		<c:if test="${not empty error1}">
			<div class="alert alert-danger">
				<c:out value="${error1 }" />
			</div>
		</c:if>
		<c:if test="${not empty error2}">
			<div class="alert alert-danger">
				<c:out value="${error2 }" />
			</div>
		</c:if>

		<div class="row">
			<div class="col-6 mt-5 align-items-end">
				<label class="form-label">Rôle</label> 
				<select id="select-role"
					class="form-select" aria-label="Default select example" name="role">
					<option selected value=<c:out value="${user.roleId.id }"/>>
					<c:out value="${user.roleId.role }"
							default="Sélectionner un rôle" /></option>
					<c:forEach items="${roles }" var="role">
						<option value="<c:out value="${role.id}"></c:out>"><c:out
								value="${role.role}"></c:out></option>
					</c:forEach>
				</select>
			</div>
			<div class="col-6 mt-5">
				<div class="mb-1">
					<input type="hidden" class="form-control" name="user_id"
						value="<c:out value="${user.id }" default=""/>">
				</div>
				<div class="mb-1">
					<label class="form-label">Nom :</label> <input type="text"
						class="form-control" name="nickname" required
						value="<c:out value="${user.getNickname() }" default=""/>">
				</div>
				<div class="mb-1">
					<label class="form-label">Email : </label> <input type="email"
						class="form-control" name="email" required
						value="<c:out value="${user.getEmail() }" default=""/>">
				</div>
				<div class="mb-1">
					<label class="form-label">Mot de passe</label> <input
						type="password" class="form-control" name="password" required>
				</div>
				<div class="mb-3">
					<label class="form-label">Confirmation mot de passe</label> <input
						type="password" class="form-control" name="PasswordR" required>
				</div>
				<div class="row d-flex justify-content-around">
					<button id="btn-add-update" type="submit"
						class="btn btn-primary w-25 mb-2">
						<c:if test="${action == 'add'}">
							<c:out value="Ajouter " />
						</c:if>
						<c:if test="${action == 'update'}">
							<c:out value="Modifier " />
						</c:if>
					</button>
				</div>
			</div>
		</div>
	</form>
</div>
