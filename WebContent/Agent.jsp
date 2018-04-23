<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>



<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div align="center">
	<h1 align="center">Espace Agent</h1>
	 <br> 	
	
    <div class="nav-wrapper">
        <a href="http://localhost:8080/AgenceImmobiliere/LogoutServlet">Se déconnecter  </a>
    </div>
  
  <form action="http://localhost:8080/AgenceImmobiliere/ListeRDVAgent" method="get">
  	<button type="submit" >Mes RDV</button>
  </form> 
  </div>   
</body>

</body>
</html>