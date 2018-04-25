
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Model.Employe"%>
    <%@page import="java.util.ArrayList"%>
	<%@page import="Model.Fonctions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" type="text/css" href="Tableau.css">
<%  HttpSession session1 = request.getSession();
		int d=(int)session1.getAttribute("IDAG");
	ArrayList<Employe> allC = Fonctions.AfficherDetailsAG(d);
%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Afficher details Agent</title>
</head>
<body>
<body>

		<table class="container">
				
				<thead>
				<tr>
					<th><h1>IdAgent</h1></th>
					<th><h1>nom</h1></th>
					<th><h1>prenom</h1></th>
					<th><h1>Email</h1></th>
					<th><h1>Tlp</h1></th>
					<th><h1>Adresse</h1></th>
					<th><h1>Sexe</h1></th>
					<th><h1>DateNais</h1></th>
				
					</tr>
				</thead>
				
				<%for(int i=0 ; i<allC.size() ; i++){ %>
				
				<tbody>
				<tr>
				<td><%= allC.get(i).getIdemp()%></td>
				<td><%= allC.get(i).getNom()%></td>
				<td><%= allC.get(i).getPrenom()%></td>
				<td><%= allC.get(i).getMail()%></td>
				<td><%= allC.get(i).getNumtel()%></td>
				<td><%= allC.get(i).getAdresse()%></td>
				<td><%= allC.get(i).getSexe()%></td>
				<td><%= allC.get(i).getDatenais()%></td>
								
				
				</tr>
				
				
			<%
				}
			%>
			</tbody>
			</table>
			<div align="center">
			<h1>Voulez Vous Valider cette inscriptions ?</h1>
			<form   action="http://localhost:8080/AgenceImmobiliere/validerAgent"  method = "post">
			<input type="radio" name="valid"  value="oui" checked> Oui<br> 
			<input type="radio" name="valid"  value="non"> Non<br>
            <input type="submit" value="Envoyer" >
		  
		
		
	</form>
	</div>
			
</body>
</body>
</html>