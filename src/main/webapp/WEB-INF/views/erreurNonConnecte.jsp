<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Erreur connexion</title>
</head>
<body>
<h1>
	Erreur connexion
</h1>
<style>
table, p, h1, li, h2{
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

<P>  The time on the server is ${serverTime}. </P>

<h1>Erreur, l'utilisateur n'est pas connecté</h1>

</body>
</html>
