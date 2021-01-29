<form method="POST">
	<p>Compte débiteur <input type="number" name="numeroDebiteur"/> </p>
	<p>Compte créditeur <input type="number" name="numeroCrediteur"/> </p>
	<p>Montant à virer <input type="number" name="montant"/> </p>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	
	<input type="submit" value="Envoyer"/>
</form>