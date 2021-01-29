<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Accueil client</title>
</head>
<body>
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

<h1>Fonctions utilisables pour un user</h1>
<table>
	<tr><th>url </th> <th>description</th> </tr>
	<tr><td><a href="virement"> Virements </a></td> <td>Formulaire de gestion de virements </td></tr>
	<tr><td><a href="listeComptes"> Comptes </a></td> <td>Consultez vos comptes </td></tr>
	
	<tr><td><a href="<c:url value="/j_spring_security_logout"/>"> Déconnexion </a></td> <td>Quitter mode admin</td></tr>
</table>
<br>
<a href="../"> Retour accueil </a>

</body>
</html>
