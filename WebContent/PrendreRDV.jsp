<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="http://localhost:8080/AgenceImmobiliere/PrendreRDV" method="post" >
		<input type="date" name="date" required>
    	<input type="time" name="heure" required>
		<button type="submit" >Réserver</button>
	</form>
</body>
</html>
