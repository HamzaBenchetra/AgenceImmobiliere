<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Medicio landing page template for Health niche</title>

  <!-- css -->
  <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" type="text/css" href="plugins/cubeportfolio/css/cubeportfolio.min.css">
  <link href="css/nivo-lightbox.css" rel="stylesheet" />
  <link href="css/nivo-lightbox-theme/default/default.css" rel="stylesheet" type="text/css" />
  <link href="css/owl.carousel.css" rel="stylesheet" media="screen" />
  <link href="css/owl.theme.css" rel="stylesheet" media="screen" />
  <link href="css/animate.css" rel="stylesheet" />
  <link href="css/style.css" rel="stylesheet">

  <!-- boxed bg -->
  <link id="bodybg" href="bodybg/bg11.css" rel="stylesheet" type="text/css" />
  <!-- template skin -->
  <link id="t-colors" href="color/default.css" rel="stylesheet">

  <!-- =======================================================
    Theme Name: Medicio
    Theme URL: https://bootstrapmade.com/medicio-free-bootstrap-theme/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
  ======================================================= -->
</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">


  <div id="wrapper" >

    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation" style="opacity: 0.8">
      <div class="top-area">
        <div class="container">
          <div class="row">
            <div class="col-sm-6 col-md-6">
              <p class="bold text-left">Samedi - Jeudi , 8h à 16h </p>
            </div>
            <div class="col-sm-6 col-md-6">
              <p class="bold text-right">Call us now +213 669 60 14 01</p>
            </div>
          </div>
        </div>
      </div>
      <div class="container navigation">

        <div class="navbar-header page-scroll">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
          <a class="navbar-brand" href="index.html">
                    <img src="img/logo.png" alt="" width="90" height="40" />
                </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
          <ul class="nav navbar-nav">
            <li ><a href="#intro">Accueil</a></li>
            <li><a href="http://localhost:8080/AgenceImmobiliere/AuthentificationClient.jsp">Se connecter</a></li>
            <li class="active"><a href="http://localhost:8080/AgenceImmobiliere/Inscription.jsp">S'inscrire</a></li>
            <li><a href="#doctor">Offres d'empoiles</a></li>

            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Aide<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="index.html">A propos</a></li>
                <li><a href="index-form.html">Mentions légales</a></li>
                <li><a href="index-video.html">Nous contacter</a></li>
              </ul>
            </li>
          </ul>
        </div>
        <!-- /.navbar-collapse -->
      </div>
      <!-- /.container -->
    </nav>


    <!-- Section: intro -->

      <div class="intro-content">
        <div class="container">
          <div class="row" style="margin-left: 20% ;margin-right: 20%">

            <div class="col-lg-12" >
              <div class="form-wrapper">
                <div class="wow fadeInRight" data-wow-duration="2s" data-wow-delay="0.2s" >

                  <div class="panel panel-skin">
                    <div class="panel-heading">
                      <h3 class="panel-title"><span class="fa fa-pencil-square-o"></span>Inscription<small></small></h3>
                    </div>
                    <div class="panel-body">
                      <div id="sendmessage">Your message has been sent. Thank you!</div>
                      <div id="errormessage"></div>

                      <form action="http://localhost:8080/AgenceImmobiliere/SignupServlet" method="post" role="form" class="contactForm lead">
                        <div class="row">
                          <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label>Nom </label>
                              <input type="text" name="Nom" id="Nom" class="form-control input-md" data-rule="minlen:3" data-msg="Entrez votre Nom SVP">
                              <div class="validation"></div>
                            </div>
                          </div>
                          <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label>Pr�nom</label>
                              <input type="text" name="Prenom" id="last_name" class="form-control input-md" data-rule="minlen:3" data-msg="Entrez votre Pr�nom SVP">
                              <div class="validation"></div>
                            </div>
                            </div>
                             </div>




                        <div class="row">
                          <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label>Email</label>
                              <input type="email" name="mail" id="email" class="form-control input-md" data-rule="email" data-msg="Entrez votre Email SVP ">
                              <div class="validation"></div>
                            </div>
                          </div>
                          <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label>Num�ro t�l�phone</label>
                              <input type="tel" name="NumTel" id="phone" class="form-control input-md" data-rule="minlen:3" data-msg="Entrez votre Numero telephone SVP">
                              <div class="validation"></div>
                            </div>
                          </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label>Pseudonyme </label>
                              <input type="text" name="pseudo" id="Mdpss" class="form-control input-md" data-rule="minlen:3" data-msg="Entrez votre mot de passe SVP">
                              <div class="validation"></div>
                            </div>
                          </div>
                          <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label>Mot de passe</label>
                              <input type="password" name="Mdpss" id="Mdpss2" class="form-control input-md" data-rule="minlen:3" data-msg="Entrez votre mot de passe SVP">
                              <div class="validation"></div>
                            </div>
                          </div>

                        </div>
                          <div class="row">
                          <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                              <label>Adresse</label>
                              <input type="text" name="Adresse" id="Adresse" class="form-control input-md" data-rule="minlen:3" data-msg="Entrez votre Adresse SVP">
                              <div class="validation"></div>
                            </div>
                          </div>


                        </div>
                       <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group row">
                               <label for="example-date-input" class="col-2 col-form-label">Date de naissance</label>
                                   <div class="col-10">
                                      <input class="form-control" type="date" value="2011-08-19" id="example-date-input" name="datenais">
                                   </div>
                            </div>
                       </div>
     <label>Sexe</label>
	<div class="radio">
  		<label>
    		<input type="radio" name="sexe" id="sexe1" value="Homme" >
    		Homme
  		</label>
	</div>
	<div class="radio">
  		<label>
    		<input type="radio" name="sexe" id="sexe2" value="Femme">
    		Femme
  		</label>
	</div>
<div class="radio">
  <label>
    <input type="radio" name="sexe" id="sexe3" value="autre">
    Autre
  </label>
</div>

<br>
                      <input type="submit" value="Inscription" class="btn btn-skin btn-block btn-lg">

                 </form>
                     </div>
                    </div>
                </div>
              </div>
            </div>
          </div>
         </div>
        </div>

    <!-- /Section: intro -->

    <!-- Section: boxes -->


    <footer>

      <div class="container">
        <div class="row">
          <div class="col-sm-6 col-md-4">
            <div class="wow fadeInDown" data-wow-delay="0.1s">
              <div class="widget">
                <h5>About Medicio</h5>
                <p>
                  Lorem ipsum dolor sit amet, ne nam purto nihil impetus, an facilisi accommodare sea
                </p>
              </div>
            </div>
            <div class="wow fadeInDown" data-wow-delay="0.1s">
              <div class="widget">
                <h5>Information</h5>
                <ul>
                  <li><a href="#">Home</a></li>
                  <li><a href="#">Laboratory</a></li>
                  <li><a href="#">Medical treatment</a></li>
                  <li><a href="#">Terms & conditions</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-md-4">
            <div class="wow fadeInDown" data-wow-delay="0.1s">
              <div class="widget">
                <h5>Medicio center</h5>
                <p>
                  Nam leo lorem, tincidunt id risus ut, ornare tincidunt naqunc sit amet.
                </p>
                <ul>
                  <li>
                    <span class="fa-stack fa-lg">
                  <i class="fa fa-circle fa-stack-2x"></i>
                  <i class="fa fa-calendar-o fa-stack-1x fa-inverse"></i>
                </span> Monday - Saturday, 8am to 10pm
                  </li>
                  <li>
                    <span class="fa-stack fa-lg">
                  <i class="fa fa-circle fa-stack-2x"></i>
                  <i class="fa fa-phone fa-stack-1x fa-inverse"></i>
                </span> +62 0888 904 711
                  </li>
                  <li>
                    <span class="fa-stack fa-lg">
                  <i class="fa fa-circle fa-stack-2x"></i>
                  <i class="fa fa-envelope-o fa-stack-1x fa-inverse"></i>
                </span> hello@medicio.com
                  </li>

                </ul>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-md-4">
            <div class="wow fadeInDown" data-wow-delay="0.1s">
              <div class="widget">
                <h5>Our location</h5>
                <p>The Suithouse V303, Kuningan City, Jakarta Indonesia 12940</p>

              </div>
            </div>
            <div class="wow fadeInDown" data-wow-delay="0.1s">
              <div class="widget">
                <h5>Follow us</h5>
                <ul class="company-social">
                  <li class="social-facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                  <li class="social-twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                  <li class="social-google"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                  <li class="social-vimeo"><a href="#"><i class="fa fa-vimeo-square"></i></a></li>
                  <li class="social-dribble"><a href="#"><i class="fa fa-dribbble"></i></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="sub-footer">
        <div class="container">
          <div class="row">
            <div class="col-sm-6 col-md-6 col-lg-6">
              <div class="wow fadeInLeft" data-wow-delay="0.1s">
                <div class="text-left">
                  <p>&copy;Copyright - Medicio Theme. All rights reserved.</p>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-6 col-lg-6">
              <div class="wow fadeInRight" data-wow-delay="0.1s">
                <div class="text-right">
                  <div class="credits">
                    <!--
                      All the links in the footer should remain intact.
                      You can delete the links only if you purchased the pro version.
                      Licensing information: https://bootstrapmade.com/license/
                      Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Medicio
                    -->
                    <a href="https://bootstrapmade.com/bootstrap-education-templates/">hamza</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
  </div>
  <a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>

  <!-- Core JavaScript Files -->
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.min.js"></script>
  <script src="js/wow.min.js"></script>
  <script src="js/jquery.scrollTo.js"></script>
  <script src="js/jquery.appear.js"></script>
  <script src="js/stellar.js"></script>
  <script src="plugins/cubeportfolio/js/jquery.cubeportfolio.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/nivo-lightbox.min.js"></script>
  <script src="js/custom.js"></script>
  <script src="contactform/contactform.js"></script>

</body>

</html>