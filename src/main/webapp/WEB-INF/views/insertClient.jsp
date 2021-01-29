<form method="POST">
	<p>Nom : <input type="text" name="nom" required/> </p>
	<p>Prenom : <input type="text" name="prenom" required/> </p>
	<p>Username : <input type="text" name="username" required /> </p>
	<p>Password : <input type="text" name="password" required /> </p>
	<p>Code postal : <input type="text" name="codePostal"/> </p>
	<p>Ville : <input type="text" name="ville"/> </p>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> 
	<input type="submit" value="Envoyer"/>
</form>