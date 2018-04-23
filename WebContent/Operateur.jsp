<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0);
%>

<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Espace opérateur</title>
</head>
<body>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
  
<div align="center">
	<h1 align="center">Espace Opérateur</h1>
	 <br>
	</div>
	<nav>
    <div class="nav-wrapper">
      <a href="#" class="brand-logo">Accueil</a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
     <li><a href="http://localhost:8080/AgenceImmobiliere/LogoutServlet">Se deconnecter </a></li>
    
     <li><a href="sass.html">Mon compte </a></li>
        <li><a href="sass.html">Aide</a></li>
       </ul>
    </div>
    </nav>
      <nav>
      <div class="collection">
    <a href="#!" class="collection-item">Gérer Rendez Vous <span class="badge"></span></a>
    <a href="#!" class="collection-item">Consulter planning <span class="badge"></span></a>
  
  </div>
           
    <div class="nav-wrapper">
      <form>
        <div class="input-field">
          <input id="search" type="search" required>
          <label class="label-icon" for="search"><i class="material-icons">search</i></label>
          <i class="material-icons">close</i>
        </div>
      </form>
    </div>
  </nav>
  
        
        
   <div class="browser-default">
    <select>
      <option value="" disabled selected>Choose your option</option>
      <option value="1">Option 1</option>
      <option value="2">Option 2</option>
      <option value="3">Option 3</option>
    </select>
    <label>Materialize Select</label>
  </div>
  
</body>
</html>