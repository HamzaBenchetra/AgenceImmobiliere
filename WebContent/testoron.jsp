<%@page import="Model.OperationsRESP"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

				<form action=""  method="post">			

<table class="container">
				<thead>
					<tr>
					<th>Jour</th>
				
					<th><h1>8-10</h1></th>
					<th><h1>10-12</h1></th>
					<th><h1>12-14</h1></th>					
					<th><h1>14-16</h1></th>
					</tr>
				</thead>
				<tbody>
				<%
				for(int i=0 ; i<7 ; i++){
				%>				
					<tr>
					<td><%new SimpleDateFormat("dd/MM/yyyy").format(Calendar.getInstance().getTime());%></td>
					
							<%for(int j=0 ; j<4 ; j++){%>
								<td><%if(OperationsRESP.TestRDV("2018-01-02 08:00:00")==1){ %>
								<input type="radio" name="charaf">
							<%}else{%>
							<p>reserve</p>
							<%}%>
							<%}%>
							<%}%>
							
							</td>
					</tr>
				
			
			</tbody>
				
			</table>
			<input type="Submit" value="Reserver">
				</form>



</head>
<body>

</body>
</html>