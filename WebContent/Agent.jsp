<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>



<head>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
  <div align="center">
	<h1 align="center">Espace Agent</h1>
	 <br>
		
		 	
	</div>
  <nav>
    <div class="nav-wrapper">
      <a href="#" class="brand-logo">Accueil</a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
     <li><a href="http://192.168.43.185:8080/AgenceImmobiliere/LogoutServlet">Se d�connecter  </a></li>
     <li><a href="sass.html">Mon compte </a></li>
        <li><a href="sass.html">Aide</a></li>
       </ul>
    </div>
    </nav>
   <nav>
       <div class="collection">
    <a href="#" class="collection-item">Pr�avis<span class="badge"></span></a>
    
    
  
  </div>
 
  </nav>
  
  <form action="http://192.168.43.185:8080/AgenceImmobiliere/ListeRDVAgent" method="get">
  	<button type="submit" >Mes RDV</button>
  </form>
  
        
        
     
  
  
  
  
  
  
  
  
  
         
</body>

</body>
</html>