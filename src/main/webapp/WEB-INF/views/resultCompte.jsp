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
	<h1>R�sultat de la saisie</h1>
	<ul>
		<li>Num�ro : ${compte.numero }</li>
		<li>Solde : ${compte.solde }</li>
		<li>Nom du client : ${compte.user.username}</li>
	</ul>
	<a href="../"> Retour accueil </a>
</body>
</html>