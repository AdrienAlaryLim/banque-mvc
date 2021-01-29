<html>
<style>
table, p, h1, li{
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100% 
}

td,th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
<head>
	<title>Result</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>

<body>
	<h1>Résultat de la saisie</h1>
	<form action="editClient" method="post">
	<ul>
		<li>Nom : <textarea name="nom" rows="1" cols="35">${user.nom }</textarea>  </li>
		<li>Prenom : <textarea name="prenom" rows="1" cols="35">${user.prenom }</textarea> </li> 
		<li>Username : <textarea name="username" rows="1" cols="35">${user.prenom }</textarea> </li> 
		<li>Code postal : <textarea name="codePostal" rows="1" cols="5">${user.codePostal }</textarea> </li> 
		<li>Ville : <textarea name="ville" rows="1" cols="35">${user.ville }</textarea> </li>
	</ul>
	<input type="hidden" name="idUser" value="${user.id }"/> 
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> 
	<input type="submit" name="submit" value="Edit" />
	</form>
</body>
</html>