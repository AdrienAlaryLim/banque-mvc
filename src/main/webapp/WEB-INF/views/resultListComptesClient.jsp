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
	
	<h1>Voici le(s) compte(s) assosicé(s) au client ${user.username }</h1>
		
	<c:forEach var="compte" items="${listOfComptesUser}">
		<ul>
			<li>Numéro : <c:out value="${compte.numero }"/></li>
			<li>Solde : <c:out value="${compte.solde }"/></li>
		</ul>
	</c:forEach>
	<a href="../"> Retour </a>
</body>
</html>