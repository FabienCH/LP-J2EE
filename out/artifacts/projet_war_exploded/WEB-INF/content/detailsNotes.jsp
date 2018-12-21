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
                <div class="panel-title">Notes étudiant</div>
            </div>
            <div class="panel-body">
                <p>Prénom : <jsp:getProperty name="etudiant" property="prenom" /> </p>
                <p>Nom : <jsp:getProperty name="etudiant" property="nom" /> </p>
                <div class="col-lg-6">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">Module</th>
                        <th scope="col">Notes</th>
                    </tr>
                    </thead>
                    <tbody>
                        <%
                            for (Map.Entry<String, Integer> note : etudiant.getNotes().entrySet()) {
                                %>
                                <tr>
                                    <td><%= note.getKey() %></td>
                                    <td><%= note.getValue() %></td>
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

