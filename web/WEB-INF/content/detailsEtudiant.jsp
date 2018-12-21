<%@ page import="projet.data.Etudiant" %>
<%@ page import="java.util.*" %>
<%--
  Created by IntelliJ IDEA.
  User: Fabien
  Date: 23/11/2018
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="etudiant" class="projet.data.Etudiant" scope="request"/>

<div class="row">
  <div class="col-md-12">
    <div class="content-box-large">
      <div class="panel-heading">
        <div class="panel-title">Détails étudiant</div>
      </div>
      <div class="panel-body">
        <p>Prénom : <jsp:getProperty name="etudiant" property="prenom" /> </p>
        <p>Nom : <jsp:getProperty name="etudiant" property="nom" /> </p>
        <p>Absences : <jsp:getProperty name="etudiant" property="absences" /> </p>
      </div>
    </div>
  </div>
</div>

