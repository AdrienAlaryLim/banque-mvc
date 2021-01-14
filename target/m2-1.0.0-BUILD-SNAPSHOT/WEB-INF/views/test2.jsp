<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Test2</title>
</head>
<body>
<h1>
	Bonjour depuis la jsp test2
</h1>
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

<P>  La servlet a envoyé les valeurs suivantes : </P>

<table>
	<tr><th>Clé </th> <th>Valeur</th> </tr>
	<c:forEach var="entry" items="${data}">
		<tr><td>${entry.key}</td> <td>${entry.value}</td></tr>
	</c:forEach>
</table>
</body>
</html>
