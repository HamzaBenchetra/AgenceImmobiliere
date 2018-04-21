<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- links-->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/Style1.css" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
</head>
<body>
  <!-- head-->

<header class="container-fluid header" >
  <div class="container">
    <a href="#" class="logo">Espace Professionnel</a>
    <nav class="menu">
      <a href="#about">Aide</a>
    </nav>
  </div>
</header>

<!--baniere du site-->
<section class="container-fluid banner">
    <div class="ban">
      <img src="img/1013.jpg" alt="Banniere du site">
    </div>
    <section class="inner-banner">
      <h1 style="color: #ffffff;">Authentification Administrateur</h1>
      <!--formulaire inscripetion-->

      <div class="container-fluid formm">


        <form action="http://localhost:8080/AgenceImmobiliere/LoginAdmin" method="post" class="form-horizontal">
<fieldset>
<!-- Text input-->
			<div class="form-group">
			<label class="col-md-2 control-label" for="mail">E-mail</label>
				<div class="col-md-9">
					<input type="email" name="mail" id="email" placeholder="moi@exemple.com" class="form-control input-md" data-rule="email" data-msg="Entrez votre Email SVP ">
				</div>
			</div>
<!-- Password input-->
			<div class="form-group">
			<label class="col-md-2 control-label" for="mdpss">Mot de pass</label>
				<div class="col-md-9">
					<input id="mdpss" name="pass" type="password" placeholder="8 caractères minimum" class="form-control input-md" required>
				</div>
			</div>

			<input type="hidden" name="type" value="Admin">


<button type="submit" class="btn btn-custom">Connexion</button>
</fieldset>
</form>


 </div>
</section>
</section>

<!--footer-->
<section class="container-fluid footer">
  <div class="container">
    <div class="row">
     
  </div>
</div>
</section>


</body>
</html>
