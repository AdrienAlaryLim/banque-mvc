<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Administration</title>
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
</head>
<body>

<h1>Fonctions utilisables pour un admin</h1>

<table>
	<tr><th>action </th> <th>description</th> </tr>
	
	
	<tr><td><a href="createClient"> Creer client </a> </td> <td>Création d'un client</td></tr>
	<tr><td><a href="editClientList"> Editer client </a> </td> <td>Editer un client</td></tr>
	<tr><td><a href="listeClient"> Trouver tous les clients </a> </td> <td>Renvoie le détail de tous les clients</td></tr>
	<tr><td><a href="findClient"> Trouver un client </a></td> <td>Formulaire de recherche client</td></tr>
	<tr><td><a href="createCompte"> Creer compte </a> </td> <td>Création d'un compte</td></tr>
	<tr><td><a href="findCompte"> Trouver un compte </a></td> <td>Formulaire de recherche de compte</td></tr>
	<tr><td><a href="findComptesClient"> Trouver tous les comptes d'un client </a></td> <td>Formulaire de recherche de comptes liés à un client</td></tr>
	
	<tr><td><a href="<c:url value="/j_spring_security_logout" />" > Déconnexion </a></td> <td>Quitter mode admin</td></tr>
</table>

<br>
<a href="../"> Retour accueil </a>

</body>
</html>