<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Au revoir <%out.print(session.getAttribute("nom")); %></h1>
</body>

<form action="http://localhost:8080/AgenceImmobiliere/LoginEmploye">
<div align="center" class="col-xs-12 col-sm-12 col-md-12">
                        <input type="submit" value="Retour a l'Authentification" class="btn btn-skin btn-block btn-lg">
</div>
</form>
</html>