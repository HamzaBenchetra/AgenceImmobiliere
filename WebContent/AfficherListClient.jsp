
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Model.Client"%>
      <%@page import="Model.Employe"%>
    <%@page import="java.util.ArrayList"%>
	<%@page import="Model.Fonctions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" type="text/css" href="Tableau.css">
<%
	ArrayList<Client> allC = Fonctions.RecupererListClient();
	ArrayList<Employe> allO = Fonctions.RecupererListOperateur();
	ArrayList<Employe> allA= Fonctions.RecupererListAgent();
%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Afficher liste des client</title>
</head>
<body>
<body>
		<table class="container">			
				<thead>
					<tr>
					<th><h1>Idclient</h1></th>
					<th><h1>nom</h1></th>
					<th><h1>Email</h1></th>					
					</tr>
				</thead>
				<%for(int i=0 ; i<allC.size() ; i++){ %>				
				<tbody>
				<tr>
				<td><%= allC.get(i).getIdc()%></td>
				<td><%= allC.get(i).getNom()%></td>
				<td><%= allC.get(i).getMail()%></td>
				<td><div align="center">
	<form   action="http://192.168.43.185:8080/AgenceImmobiliere/AfficherClient"  method = "post">
				<input type="hidden" name ="IDC" value="<%=allC.get(i).getIdc() %>" >		
		  		<input type=submit value="Voir Détails"/>
	</form>
	<form   action="http://192.168.43.185:8080/AgenceImmobiliere/SupprimerClient"  method = "post">
				<input type="hidden" name ="IDC" value="<%=allC.get(i).getIdc() %>" >
				
		  		<input type=submit value="Supprimer Demande"/>
		  
		
	</form>
	</div>
				</td>
					
				
				</tr>
				
				
			<%
				}
			%>
			</tbody>
			</table>
	<table class="container">			
				<thead>
					<tr>
					<th><h1>IdOperateur</h1></th>
					<th><h1>nom</h1></th>
					<th><h1>Email</h1></th>					
					</tr>
				</thead>
				<%for(int i=0 ; i<allO.size() ; i++){ %>				
				<tbody>
				<tr>
				<td><%= allO.get(i).getIdemp()%></td>
				<td><%= allO.get(i).getNom()%></td>
				<td><%= allO.get(i).getMail()%></td>
				<td><div align="center">
	<form   action="http://192.168.43.185:8080/AgenceImmobiliere/AfficherOperateur" method = "post">
				<input type="hidden" name ="IDOP" value="<%=allO.get(i).getIdemp() %>" >		
		  		<input type=submit value="Voir Détails"/>
	</form>
	<form   action="http://192.168.43.185:8080/AgenceImmobiliere/SupprimerClient"  method = "post">
				<input type="hidden" name ="IDOP" value="<%=allO.get(i).getIdemp() %>" >
				
		  		<input type=submit value="Supprimer Demande"/>
		  
		
	</form>
	</div>
				</td>
					
				
				</tr>
				
				
			<%
				}
			%>
			</tbody>
			</table>
			
			
			
			<table class="container">			
				<thead>
					<tr>
					<th><h1>IdAgent</h1></th>
					<th><h1>nom</h1></th>
					<th><h1>Email</h1></th>					
					</tr>
				</thead>
				<%for(int i=0 ; i<allA.size() ; i++){ %>				
				<tbody>
				<tr>
				<td><%= allA.get(i).getIdemp()%></td>
				<td><%= allA.get(i).getNom()%></td>
				<td><%= allA.get(i).getMail()%></td>
				<td><div align="center">
	<form   action="http://192.168.43.185:8080/AgenceImmobiliere/AfficherAgent"  method = "post">
				<input type="hidden" name ="IDAG" value="<%=allA.get(i).getIdemp() %>" >		
		  		<input type=submit value="Voir Détails"/>
	</form>
	<form   action=""  method = "post">
				<input type="hidden" name ="IDAG" value="<%=allA.get(i).getIdemp() %>" >
				
		  		<input type=submit value="Supprimer Demande"/>
		  
		
	</form>
	</div>
				</td>
					
				
				</tr>
				
				
			<%
				}
			%>
			</tbody>
			</table>
			
			
	<button><a href="http://192.168.43.185:8080/AgenceImmobiliere/EspaceAdmin.jsp">Retour a l'accueil</a></button>
	
</body>
</body>
</html>