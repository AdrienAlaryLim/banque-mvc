<form method="POST">
	<p>Identifient du Client � rechercher <input type="number" name="id"/> </p>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	
	<input type="submit" value="Envoyer"/>
</form>