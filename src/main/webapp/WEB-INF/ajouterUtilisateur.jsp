<%@ page import="beans.Utilisateur" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.ArrayList" %>

<%
    ArrayList<Utilisateur> utilisateurs = (ArrayList<Utilisateur>) request.getAttribute("utilisateurs");
%>

<%@include file="inc/header.jsp" %>

<%
Boolean status = (Boolean) request.getAttribute("status");
String statusMessage = (String) request.getAttribute("statusMessage");
Utilisateur utilisateur = (Utilisateur) request.getAttribute("utilisateur");
Map<String, String> erreurs = (Map<String, String>) request.getAttribute("erreurs");
%>

<section>
    <% if(statusMessage != null) { %>
        <div class="alert alert-<%= status ? "success" : "danger"%>">
			<%= statusMessage %>      
		  </div>
    <% } %>  
    <h1 id="titreP">Ajouter un utilisateur</h1>
    <form method="post" class="form-container">
        <div class="form-group">
            <label>Nom</label>
            <input type="text" name="nom" value="<%= utilisateur == null ? "": utilisateur.getNom() %>">
			 <%
				if (erreurs != null && erreurs.get("nom") != null) { %>
				    <span class="errorText">
				        <%= erreurs.get("nom") %> 
				    </span>
			<% } %>

        </div>
        <div class="form-group">
            <label>Prénom</label>
            <input type="text" name="prenom" value="<%= utilisateur == null ? "": utilisateur.getPrenom() %>">
             <%
             if (erreurs != null && erreurs.get("prenom") != null)
         	{%>
         		<span class="errorText">
         			<%= erreurs.get("prenom") %> 
         		</span><%
         		
         	}
            %>
        </div>
        <div class="form-group">
            <label>Login</label>
            <input type="text" name="login" value="<%= utilisateur == null ? "": utilisateur.getLogin() %>">
             <%
             if (erreurs != null && erreurs.get("login") != null)
         	{%>
         		<span class="errorText">
         			<%= erreurs.get("login") %> 
         		</span><%
         		
         	}
            %>
        </div>
        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password">
             <%
             if (erreurs != null && erreurs.get("password") != null)
         	{%>
         		<span class="errorText">
         			<%= erreurs.get("password") %> 
         		</span><%
         		
         	}
            %>
        </div>
        <div class="form-group">
            <label>Password (confirmation)</label>
            <input type="password" name="passwordBis">
             <%
             if (erreurs != null && erreurs.get("passwordBis") != null)
         	{%>
         		<span class="errorText">
         			<%= erreurs.get("passwordBis") %> 
         		</span><%
         		
         	}
            %>
        </div>
        <input type="submit" value="Ajouter">
    </form>
</section>

<%@include file="inc/footer.jsp" %>

