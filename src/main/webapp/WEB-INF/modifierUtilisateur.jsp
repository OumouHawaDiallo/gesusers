<%@ page import="beans.Utilisateur" %>
<%@ page import="java.util.ArrayList" %>

<%
    Utilisateur utilisateur = (Utilisateur) request.getAttribute("utilisateur");
%>

<%@include file="inc/header.jsp" %>

<section>
    <h1>Modifier un utilisateur</h1>
    <form method="post" class="form-container">
        <div class="form-group">
            <label>Nom</label>
            <input type="text" name="nom" value="<%= utilisateur.getNom()%>">
        </div>
        <div class="form-group">
            <label>Prénom</label>
            <input type="text" name="prenom" value="<%= utilisateur.getPrenom()%>">
        </div>
        <div class="form-group">
            <label>Login</label>
            <input type="text" name="login" value="<%= utilisateur.getLogin()%>">
        </div>
        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" value="<%= utilisateur.getPassword()%>">
        </div>
        <input type="submit" value="Modifier">
    </form>
</section>

<%@include file="inc/footer.jsp" %>
