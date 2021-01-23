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
	<tr><td><a href="admin/homeAdmin"> Panneau admin </a> </td> <td>Ouvre la page administrateur</td></tr>
	<tr><td><a href="user/homeUser"> Panneau user </a> </td> <td>Ouvre la page user</td></tr>
	<tr><td><a href="login"> Login </a></td> <td>Formulaire de connexion utilisateur </td></tr>
	<tr><td><a href="<c:url value="/j_spring_security_logout"/>"> D�connexion </a></td> <td>Quitter la connexion</td></tr>
	
</table>

<br><br><br><br><br><br><br><br>

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
