<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Au revoir<%out.print((String) session.getAttribute("type")); %></h1>
</body>

<%String link;
String a=(String)session.getAttribute("type");
switch(a){
case "Admin": link="http://localhost:8080/AgenceImmobiliere/LoginAdmin";
%><form action=<%=link %> method="get">
<input type="submit" value="Retour a l'Authentification">
</form><%;break;
case "Operateur": link="http://localhost:8080/AgenceImmobiliere/LoginEmploye";
%><form action=<%=link %> method="get">
<input type="submit" value="Retour a l'Authentification">
</form><%;break;
case "Agent": link="http://localhost:8080/AgenceImmobiliere/LoginEmploye";
%><form action=<%=link %> method="get">
<input type="submit" value="Retour a l'Authentification">
</form><%;break;
case "Client": link="http://localhost:8080/AgenceImmobiliere/LoginServlet";
%><form action=<%=link %> method="get">
<input type="submit" value="Retour a l'Authentification">
</form><%;break;
}
%>
</html>