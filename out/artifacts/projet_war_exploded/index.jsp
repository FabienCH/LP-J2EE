<%@ page import="projet.Etudiant" %>
<%@ page import="projet.GestionFactory" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Collection" %>
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
    private Collection<Etudiant> etudiants = gestionFactory.getEtudiants();
  %>
  <ul>
  <%
      for (Etudiant etudiant : etudiants) { %>
      <li><a href="ServletTraitementDetails?id=<%=etudiant.getId()%>"><%=etudiant.getPrenom()%> <%=etudiant.getNom()%></li></a>
    <%
    };
  %>


    </ul>
  </body>
</html>
