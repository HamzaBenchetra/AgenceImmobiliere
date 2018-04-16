<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<form action="http://localhost:8080/AgenceImmobiliere/SignupServlet" method="post">
<div>Nom: <input type="text" name="Nom" required></div>
<div>Prenom: <input type="text" name="Prenom" required>
</div>
<div>Agresse: <input type="text" name="Adresse" required>
</div>
<div>datenais: <input type="DATE" name="datenais" required>
</div>
<div>Numero de telephone: <input type="text" name="NumTel" required>
</div>
<div>Pseudo :<input type="text" name="pseudo" required>
</div>
<div>Mot de pass: <input type="password" name="Mdpss" required>
</div>
<div>
<h3>Sexe :</h3>
<input type="radio" name="sexe" value="homme" required> Homme
<input type="radio" name="sexe" value="femme" required> Femme
</div>

<div>
<h3>Postuler en tant que : </h3>
<input type="radio" name="type" value="agent" required> Agent
<input type="radio" name="type" value="operateur" required> Operateur
</div>
<button type="submit" >S'inscrire</button>
</form>
</body>
</html>