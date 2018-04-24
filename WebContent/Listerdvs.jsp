
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Model.RDV"%>
    <%@page import="java.util.ArrayList"%>
	<%@page import="Model.Fonctions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" type="text/css" href="Tableau.css">
<%
	ArrayList<RDV> allR = (ArrayList<RDV>)request.getAttribute("RDV");
ArrayList<RDV> allN = (ArrayList<RDV>)request.getAttribute("RDVNN");

%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Liste de vos Rendez-vous</title>
</head>
<body>
<body>
		<table class="container">			
				<thead>
					<tr>
					<th><h1>Id du rendez-vous</h1></th>
					<th><h1>Id de l'appartement</h1></th>
					<th><h1>Id de l'agent</h1></th>
					<th><h1>Date</h1></th>					
					</tr>
				</thead>
				<%for(int i=0 ; i<allR.size() ; i++){ %>				
				<tbody>
				<tr>
				<td><%= allR.get(i).getIdRDV()%></td>
				<td><%= allR.get(i).getIdApp()%></td>
				<td><%= allR.get(i).getIdAgent()%></td>
				<td><%= (String)allR.get(i).getD()%></td>
					
				<td>	<form   action="http://192.168.43.185:8080/AgenceImmobiliere/Preavis"  method = "get">
				<input type="hidden" name ="IDAG" value="<%=allR.get(i).getIdAgent() %>" >	
				<input type="hidden" name ="IDRDV" value="<%=allR.get(i).getIdRDV() %>" >		
		  		<input type=submit value="Donner preavis"/>
	</form>
					</td>
				</tr>
				
				
			<%
				}
			%>
			</tbody>
			</table>
			
						<p>Previs deja donné</p>
			
			<table class="container">			
				<thead>
					<tr>
					<th><h1>Id du rendez-vous</h1></th>
					<th><h1>Id de l'appartement</h1></th>
					<th><h1>Id de l'agent</h1></th>
					<th><h1>Date</h1></th>					
					</tr>
				</thead>
				<%for(int i=0 ; i<allN.size() ; i++){ %>				
				<tbody>
				<tr>
				<td><%= allN.get(i).getIdRDV()%></td>
				<td><%= allN.get(i).getIdApp()%></td>
				<td><%= allN.get(i).getIdAgent()%></td>
				<td><%= (String)allN.get(i).getD()%></td>
					
				
				</tr>
				
				
			<%
				}
			%>
			</tbody>
			</table>
	
	<button><a href="http://192.168.43.185:8080/AgenceImmobiliere/Agent.jsp">Retour a l'accueil</a></button>
	
</body>
</body>
</html>