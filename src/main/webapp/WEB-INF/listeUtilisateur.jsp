<%@ page import="beans.Utilisateur" %>
<%@ page import="java.util.ArrayList" %>

<%
    ArrayList<Utilisateur> utilisateurs = (ArrayList<Utilisateur>) request.getAttribute("utilisateurs");
    
%>

<%@include file="inc/header.jsp" %>
<section>
    <h1 id="titreP">Liste des utilisateurs</h1>

    <% if(utilisateurs == null || utilisateurs.isEmpty()) { %>
        <p>Désolé, la liste des utilisateurs est vide pour le moment !</p>
    <% } else { %>
        <table border="1" cellspacing="0" cellpadding="10">
            <tr>
                <th>ID</th>
                <th>Nom</th>
                <th>Prénom</th>
                <th>Login</th>
                <th>Password</th>
                <th colspan="2">Actions</th> 
            </tr>
            <% for (Utilisateur user : utilisateurs) { %>
                <tr>
                    <td><%= user.getId() %></td>
                    <td><%= user.getNom() %></td>
                    <td><%= user.getPrenom() %></td>
                    <td><%= user.getLogin() %></td>
                    <td><%= user.getPassword() %></td>
                    <td><button onclick="window.location.href='update?id=<%= user.getId() %>'">Modifier</button></td>
                    <td><button onclick="window.location.href='delete?id=<%= user.getId() %>'" onclick="return confirm('Voulez vous vraiment supprimer ?')">Supprimer</button></td>
                </tr>
            <% } %>
        </table>
    <% } %>
</section>
    
<%@include file="inc/footer.jsp" %>
