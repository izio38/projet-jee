<%@ page import="models.Etudiant" %>
<%@ page import="java.util.Collection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    Collection<Etudiant> etudiants = (Collection<Etudiant>) request.getAttribute("etudiants");
%>

<html>
<head>
    <title>Absence des étudiants</title>
</head>
<body>
<div style="margin-left: 10%; margin-right: 10%;">
    <%
        for(Etudiant etudiant: etudiants) {
    %>
    <p><%= etudiant.getPrenom() + " " + etudiant.getNom() %> : <span style="font-weight: bold"><%=etudiant.getNbAbsence()%> abscence(s)</span>
        <a href="${pageContext.request.contextPath}/do/studentDetails?studentId=<%=etudiant.getId()%>">Détails</a>
    </p>

    <%
        }
    %>
</div>
</body>
</html>
