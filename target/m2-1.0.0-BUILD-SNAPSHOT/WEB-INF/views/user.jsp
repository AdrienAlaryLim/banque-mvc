<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>User page</title>
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

<h1>Bonjour !</h1>

<table>
	<tr><th>action </th> <th>description</th> </tr>
	<tr><td><a href="<c:url value='/j_spring_security_logout'/>"> Déconnexion </a></td> <td>Quitter la connexion</td></tr>
</table>

</body>
</html>