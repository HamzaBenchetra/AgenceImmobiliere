
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Model.Client"%>
    <%@page import="java.util.ArrayList"%>
	<%@page import="Model.Fonctions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" type="text/css" href="Tableau.css">
<%
	ArrayList<Client> allC = Fonctions.RecupererListClient();
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
	<form   action="http://localhost:8080/AgenceImmobiliere/AfficherClient"  method = "post">
				<input type="hidden" name ="IDC" value="<%=allC.get(i).getIdc() %>" >		
		  		<input type=submit value="Voir Détails"/>
	</form>
	<form   action="http://localhost:8080/AgenceImmobiliere/SupprimerClient"  method = "post">
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
	
	<button><a href="http://localhost:8080/AgenceImmobiliere/EspaceAdmin.jsp">Retour a l'accueil</a></button>
	
</body>
</body>
</html>