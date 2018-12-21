<%@ page import="projet.data.Etudiant" %>
<%@ page import="projet.data.EtudiantFactory" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Collection" %>
<%--
  Created by IntelliJ IDEA.
  User: Fabien
  Date: 23/11/2018
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<jsp:useBean id="etudiants" type="java.util.List<projet.data.Etudiant>" scope="request"/>

<div class="row">
  <div class="col-md-12">
    <div class="content-box-large">
      <div class="panel-heading">
        <div class="panel-title">Liste des étudiants</div>
      </div>
      <div class="panel-body">
        <ul>
          <%
            for (Etudiant etudiant : etudiants) { %>
          <li><a href="<%= application.getContextPath()%>/do/detailsEtudiant?id=<%=etudiant.getId()%>"><%=etudiant.getPrenom()%> <%=etudiant.getNom()%></a></li>
          <%
            };
          %>
        </ul>
      </div>
    </div>
  </div>
</div>



