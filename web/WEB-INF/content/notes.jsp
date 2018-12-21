<%@ page import="projet.data.Etudiant" %>
<%@ page import="projet.data.EtudiantFactory" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.List" %>
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
                <div class="panel-title">Notes des étudiants</div>
            </div>
            <div class="panel-body">
                <div class="col-lg-6">
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">Etudiant</th>
                            <th scope="col">Moyenne</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            for (Etudiant etudiant : etudiants) {
                        %>
                        <tr>
                            <td><a href="<%= application.getContextPath()%>/do/detailsNotes?id=<%=etudiant.getId()%>"><%= etudiant.getPrenom() + " " + etudiant.getNom() %></a></td>
                            <td><%= etudiant.getMoyenne() %></td>
                        </tr>
                        <%
                            }
                        %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>



