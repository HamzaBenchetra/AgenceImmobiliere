
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Model.RDV"%>
    <%@page import="java.util.ArrayList"%>
	<%@page import="Model.OperationsClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" type="text/css" href="Tableau.css">
<%
	ArrayList<RDV> allR = (ArrayList<RDV>)request.getAttribute("RDVs");
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
				<td><%= allR.get(i).getD()%></td>
				
				<td><div align="center">
	<form   action="http://localhost:8080/AgenceImmobiliere/ConsuListApparts"  method = "post">
				<input type="hidden" name ="IDA" value="<%=allR.get(i).getIdRDV() %>" >		
		  		<input type=submit value="Voir D�tails"/>
	</form>
	</div>
				</td>
					
				
				</tr>
				
				
			<%
				}
			%>
			</tbody>
			</table>
	
	<button><a href="http://localhost:8080/AgenceImmobiliere/EspaceClient.jsp">Retour a l'accueil</a></button>
	
</body>
</body>
</html>