<form method="POST">
	<p>Client : <input type="text" name="idClient"/> </p>
	<p>Numero <input type="text" name="numero"/> </p>
	<p>Solde <input type="text" name="solde"/> </p>
	
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> 
	<input type="submit" value="Envoyer"/>
</form>