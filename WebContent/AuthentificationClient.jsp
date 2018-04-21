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
    <a href="#" class="logo">Mon site</a>
    <nav class="menu">
      <a href="#">Accueil</a>
      <a href="http://localhost:8080/AgenceImmobiliere/SignupServlet">S'inscrire</a>
      <a href="http://localhost:8080/AgenceImmobiliere/LoginServlet">Se connecter</a>
      <a href="http://localhost:8080/AgenceImmobiliere/SignupEmp">Travailler avec nous</a>
      <a href="#contacter">Nou contacter</a>
      <a href="#about">A propos</a>
    </nav>
  </div>
</header>

<!--baniere du site-->
<section class="container-fluid banner">
    <div class="ban">
      <img src="img/1013.jpg" alt="Banniere du site">
    </div>
    <section class="inner-banner">
      <h1 style="color: #ffffff;">Connectez Vous</h1>
      <!--formulaire inscripetion-->

      <div class="container-fluid formm">


        <form action="http://localhost:8080/AgenceImmobiliere/LoginServlet" method="post" class="form-horizontal">
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
				<button type="submit" class="btn btn-custom">Connexion</button>
			</fieldset>
		</form>
		<h4 style="color: #ffffff;">Vou n'avez pas de compte ? <a href="http://localhost:8080/AgenceImmobiliere/SignupServlet">Inscrivez vous</a></h4>
		</div>
		
	</section>

</section>

<!--Apropos-->

<section class="container-fluid about">
  <div class="container">
    <div class="row">
      <h2 id="about">A propos de nous</h2>
      <hr class="separator">
      <article class="col-md-4 col-lg-4 col-xs-12 col-sm-12">
        <h2>Etudes</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
      </article>
      <article class="col-md-4 col-lg-4 col-xs-12 col-sm-12">
        <h2>Experiances</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
      </article>
      <article class="col-md-4 col-lg-4 col-xs-12 col-sm-12">
        <h2>Hobbies</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
      </article>

    </div>
  </div>

</section>


<!--footer-->
<section class="container-fluid footer">
  <div class="container">
    <div class="row">
      <h2 id="contacter">Nous contacter</h2>
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
