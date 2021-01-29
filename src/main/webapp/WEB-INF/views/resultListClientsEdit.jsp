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
		
		<c:forEach var="user" items="${listOfUsers}">
			<tr>
				<td>
					<ul>
						<li>Nom : <c:out value="${user.nom }"/></li>
						<li>Prenom : <c:out value="${user.prenom }"/></li>
						<li>Username : <c:out value="${user.username }"/></li>
						<li>Code postal : <c:out value="${user.codePostal }"/></li>
						<li>Ville : <c:out value="${user.ville }"/></li>
					</ul>
				</td>
				<td>
					<a href="editClient?idUser=${user.id }">Editer ce client</a>
				</td>
			</tr>
		</c:forEach>
	
	</table>
	<a href="../"> Retour accueil </a>
</body>
</html>