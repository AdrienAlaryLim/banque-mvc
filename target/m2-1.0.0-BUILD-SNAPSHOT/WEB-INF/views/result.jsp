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
	<ul>
		<li>Nom : ${user.nom }</li>
		<li>Prenom : ${user.prenom }</li>
		<li>Username : ${user.username }</li>
		<li>Code postal : ${user.codePostal }</li>
		<li>Ville : ${user.ville }</li>
	</ul>
	<a href="../"> Retour accueil </a>
</body>
</html>