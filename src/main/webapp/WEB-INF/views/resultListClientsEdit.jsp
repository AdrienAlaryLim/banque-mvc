<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<table>
		
		<c:forEach var="client" items="${listOfClients}">
			<tr>
				<td>
					<ul>
						<li>Nom : <c:out value="${client.nom }"/></li>
						<li>Prenom : <c:out value="${client.prenom }"/></li>
						<li>Code postal : <c:out value="${client.codePostal }"/></li>
						<li>Ville : <c:out value="${client.ville }"/></li>
					</ul>
				</td>
				<td>
					<a href="editClient?idClient=${client.id }">Editer ce client</a>
				</td>
			</tr>
		</c:forEach>
	
	</table>
	<a href="../"> Retour accueil </a>
</body>
</html>