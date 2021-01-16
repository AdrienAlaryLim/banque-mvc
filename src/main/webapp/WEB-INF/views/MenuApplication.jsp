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


<h1>Annuaire des compétences en ligne</h1>
<table>
	<tr><th>url </th> </tr>
	<tr><td><a href="${flowExecutionUrl }&_eventId=Experts"> Les experts</a></td></tr>
	<tr><td><a href="${flowExecutionUrl }&_eventId=Themes"> Themes</a></td></tr>
	<tr><td><a href="${flowExecutionUrl }&_eventId=Competences"> Compétences</a></td></tr>
	<tr><td><a href="${flowExecutionUrl }&_eventId=Quitter"> Quitter</a></td></tr>
</table>

</body>
</html>
