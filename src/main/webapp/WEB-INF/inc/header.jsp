<%@ page language="java" pageEncoding="ISO-8859-1"%>

<%
	final String APP_ROOT = request.getContextPath();
    
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Gestion des utilisateurs</title>
    <link rel="stylesheet" type="text/css" href="<%= APP_ROOT %>/css/style.css">
</head>

<body>

<header>
        <h1 id="titreP">Gestion des utilisateurs</h1>
        <hr>
    
    <div class="navbar">
        <span class="separator">|</span>
        <a href="<%= APP_ROOT %>/list">Accueil</a>
        <span class="separator">|</span>
        <a href="<%= APP_ROOT %>/list">Lister</a>
        <span class="separator">|</span>
        <a href="<%= APP_ROOT %>/add">Ajouter</a>
        <span class="separator">|</span>
    </div>
</header>
