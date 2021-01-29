<form method="POST">
	<p>Id du Client : <input type="text" name="idUser" required/> </p>
	<p>Numero compte:<input type="text" name="numero"/> </p>
	<p>Solde du compte:<input type="text" name="solde"/> </p>
	
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> 
	<input type="submit" value="Envoyer"/>
</form>