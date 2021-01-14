<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Accueil</title>
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


<h1>Fonctions utilisables</h1>
<table>
	<tr><th>url </th> <th>description</th> </tr>
	<tr><td><a href="findAllClients"> Trouver tous les clients </a> </td> <td>Renvoie le d�tail de tous les clients</td></tr>
	<tr><td><a href="findClient"> Trouver un client </a></td> <td>Formulaire de recherche client</td></tr>
	<tr><td><a href="insertClient/default"> Cr�er un client par d�faut </a></td> <td>Cr�� un utilisateur par d�faut (vaut le d�tour!)</td></tr>
	<tr><td><a href="insertClient"> Cr�er un client </a></td> <td>Renvoie un formulaire de cr�ation de client</td></tr>
	<tr><td><a href="findCompte"> Trouver un compte </a></td> <td>Formulaire de recherche de compte</td></tr>
	<tr><td><a href="findComptesClient"> Trouver tous les comptes d'un client </a></td> <td>Formulaire de recherche de comptes li�s � un client</td></tr>
	<tr><td><a href="login"> Login </a></td> <td>Formulaire de connexion utilisateur </td></tr>
	<tr><td><a href="<c:url value="/logout" />">Logout</a></td> <td> Quitter la connexion utilisateur </td> </tr>
	<tr><td><a href="<c:url value='/j_spring_security_logout'/>"> D�connexion </a></td> <td>Quitter la connexion</td></tr>
</table>


<h2> Default test mapping</h2>
<table>
	<tr><th>url </th> <th>description</th> </tr>
	<tr><td><a href="test2"> test2 </a> </td> <td>Utilisation de ModelAndView</td></tr>
	<tr><td><a href="test2a"> test 2a </a> </td> <td>Utilisation de Model</td></tr>
	<tr><td><a href="test3?param=testMode"> test3 ok </a> </td> <td> @requestParam (param�tre attendu ET fourni)</td></tr>
	<tr><td><a href="test3"> test3 ko </a> </td> <td> @requestParam (param�tre attendu et NON fourni)</td></tr>
	<tr><td><a href="test3a?param=testMode"> test 3a ok </a> </td> <td>@requestParam (param�tre optionnel ET fourni)</td></tr>
	<tr><td><a href="test3a"> test 3a ko </a> </td> <td>@requestParam (param�tre optionnel et NON fourni)</td></tr>
	<tr><td><a href="test3b?param=33"> test 3b ok </a> </td> <td>param (int). optionnel @requestParam</td></tr>
	<tr><td><a href="test3b"> test 3b ko </a> </td> <td>param (int). optionnel @requestParam</td></tr>
</table>
</body>
</html>
