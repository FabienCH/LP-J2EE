<%@ page import="projet.Etudiant" %>
<%@ page import="projet.GestionFactory" %>
<%@ page import="java.util.*" %>
<%--
  Created by IntelliJ IDEA.
  User: Fabien
  Date: 23/11/2018
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Gestion étudiant</title>
  </head>
  <body>
  <%!
    private GestionFactory gestionFactory = new GestionFactory();
    private String id;
    private Etudiant etudiant;
  %>
  <%
    id = request.getParameter("id");
    etudiant = gestionFactory.getEtudiantById(Integer.parseInt(id));
  %>
    <p>Prénom : <%=etudiant.getPrenom()%> </p>
    <p>Nom : <%=etudiant.getNom()%></p>
  </body>
</html>
