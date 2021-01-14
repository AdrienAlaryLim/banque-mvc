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
		<c:forEach var="client" items="${listOfClients}">
			<ul>
				<li>Nom : <c:out value="${client.nom }"/></li>
				<li>Prenom : <c:out value="${client.prenom }"/></li>
				<li>Code postal : <c:out value="${client.codePostal }"/></li>
				<li>Ville : <c:out value="${client.ville }"/></li>
			</ul>
		</c:forEach>
</body>
</html>