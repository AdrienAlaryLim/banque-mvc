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

<P>  Bonjour ${client.nom } </P>

<h1>Fonctions utilisables</h1>
<table>
	<tr><th>url </th> <th>description</th> </tr>
	<tr><td><a href="client/virements"> Virements </a></td> <td>Formulaire de gestion de virements </td></tr>
	<tr><td><a href="client/comptes"> Comptes </a></td> <td>Consultez vos comptes </td></tr>
</table>


<h2> Default actions</h2>
<table>
	<tr><th>url </th> <th>description</th> </tr>
	<tr><td><a href="/m2/"> home </a> </td> <td>Menu principal</td></tr>
</table>
</body>
</html>
