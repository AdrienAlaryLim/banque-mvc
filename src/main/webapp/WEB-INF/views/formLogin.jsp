<form method="POST">
	<p>Username <input type="text" name="username"/> </p>
	<p>Paswword <input type="password" name="password"/> </p>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> 
	
	<input type="submit" value="Login"/>
</form>