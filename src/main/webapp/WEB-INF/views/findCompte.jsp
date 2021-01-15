<form method="POST">
	<p>Numero de compte <input type="number" name="id"/> </p>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	
	<input type="submit" value="Envoyer"/>
</form>