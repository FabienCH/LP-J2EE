<%@ page import="projet.Etudiant" %>
<%@ page import="java.util.*" %>
<%--
  Created by IntelliJ IDEA.
  User: Fabien
  Date: 23/11/2018
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="etudiant" class="projet.Etudiant" scope="request"/>
<jsp:useBean id="nbAbsences" type="java.lang.Integer" scope="request"/>
<html>
  <head>
    <title>Gestion étudiant</title>
  </head>
  <body>
    <p>Prénom : <jsp:getProperty name="etudiant" property="prenom" /> </p>
    <p>Nom : <jsp:getProperty name="etudiant" property="nom" /> </p>
    <p>Absences : <%= nbAbsences %> </p>
  </body>
</html>
