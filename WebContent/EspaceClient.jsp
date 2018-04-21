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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Connexion OK Bienvenue </h1>
<form action="http://localhost:8080/AgenceImmobiliere/LogoutServlet">
<div align="center" class="col-xs-12 col-sm-12 col-md-12">
                        <input type="submit" value="Deconnexion" class="btn btn-skin btn-block btn-lg">
</div>
</form>
</body>
</html>