<form method="POST">
	<p>Compte d�biteur <input type="number" name="numeroDebiteur"/> </p>
	<p>Compte cr�diteur <input type="number" name="numeroCrediteur"/> </p>
	<p>Montant � virer <input type="number" name="montant"/> </p>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	
	<input type="submit" value="Envoyer"/>
</form>