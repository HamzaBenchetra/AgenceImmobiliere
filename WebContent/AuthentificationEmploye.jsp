<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Authentification</title>
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
      
      <a href="#contacter">Contacter l'admin</a>
      <a href="#">Aide</a>
    </nav>
  </div>
</header>

<!--baniere du site-->
<section class="container-fluid banner">
    <div class="ban">
      <img src="img/1013.jpg" alt="Banniere du site">
    </div>
    <section class="inner-banner">
      <h1 style="color: #ffffff;">Authentification Professionnelle</h1>
      <!--formulaire inscripetion-->

      <div class="container-fluid formm">


        <form action="http://192.168.43.185:8080/AgenceImmobiliere/LoginEmploye" method="post" class="form-horizontal">
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

<div class="form-group">
  <label class="col-md-4 control-label" for="type">Connexion en tant que</label>
  <div class="col-md-5">
    <select id="type" name="type" class="form-control">
      <option value="Operateur">Operateur</option>
      <option value="Agent">Agent</option>
    </select>
  </div>
</div>


<button type="submit" class="btn btn-custom">Connexion</button>
</fieldset>
</form>



</section>







    </div>
</section>
<!--footer-->
<section class="container-fluid footer">
  <div class="container">
    <div class="row">
      <h2 id="contacter">Contacter l'admin</h2>
      <hr class="separator">


<div class="col-sm-12 contact-form">
<form id="contact" method="post" class="form" role="form">
<div class="row">
<div class="col-xs-6 col-md-6 form-group">
<input class="form-control" id="name" name="name" placeholder="Name" type="text" required  />
</div>
<div class="col-xs-6 col-md-6 form-group">
<input class="form-control input-md" data-rule="email" id="email" name="email" placeholder="Email" type="email" required />
</div>
</div>
<textarea class="form-control" id="message" name="message" placeholder="Message" rows="5"></textarea>
<br />
<div class="row">
<div class="col-xs-12 col-md-12 form-group">
<button class="btn btn-primary pull-right" type="submit">Submit</button>
</div>
</div>
</form>
        </div>
  </div>
</div>
</section>


</body>
</html>
