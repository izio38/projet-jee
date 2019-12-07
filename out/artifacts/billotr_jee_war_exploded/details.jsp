<%@ page import="models.Etudiant" %>
<%@ page import="models.GestionFactory" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="etudiant" class="models.Etudiant" scope="request"/>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <p>Prénom :  <jsp:getProperty name="etudiant" property="prenom" /></p>
    <p>Nom : <jsp:getProperty name="etudiant" property="nom" /></p>
    <p>ID : <jsp:getProperty name="etudiant" property="id" /></p>
    <p>Nombre d'absence : <jsp:getProperty name="etudiant" property="nbAbscence" /></p>
</body>
</html>