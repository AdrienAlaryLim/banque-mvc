<form method="POST">
	<p>Nom : <input type="text" name="nom"/> </p>
	<p>Prenom : <input type="text" name="prenom"/> </p>
	<p>Code postal : <input type="text" name="codePostal"/> </p>
	<p>Ville : <input type="text" name="ville"/> </p>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> 
	<input type="submit" value="Envoyer"/>
</form>