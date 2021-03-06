<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Model.Client"%>
    <%@page import="Model.Employe"%>
    <%@page import="java.util.ArrayList"%>
	<%@page import="Model.Fonctions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sufee Admin - HTML5 Admin Template</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">

    <link rel="stylesheet" href="assets/css/normalize.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
    <link rel="stylesheet" href="assets/scss/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<body>
        <!-- Left Panel -->

    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">

            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="http://192.168.43.108:8080/AgenceImmobiliere/EspaceAdmin.jsp">Espace Admin</a>
                <a class="navbar-brand hidden" href="./"><img src="images/logo2.png" alt="Logo"></a>
            </div>

            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="http://192.168.43.108:8080/AgenceImmobiliere/EspaceAdmin.jsp"> <i class="menu-icon fa fa-dashboard"></i>Accueil </a>
                    </li>
                    <li class="menu-item-has-children active dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-laptop"></i>Inscriptions</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-puzzle-piece"></i><a href="http://192.168.43.108:8080/AgenceImmobiliere/validation">Valider</a></li>
                            <li><i class="fa fa-id-badge"></i><a href="ui-badges.html">Supprimer</a></li>
                            
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>Tables</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-table"></i><a href="tables-basic.html">Basic Table</a></li>
                            <li><i class="fa fa-table"></i><a href="tables-data.html">Data Table</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-th"></i>Forms</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-th"></i><a href="forms-basic.html">Basic Form</a></li>
                            <li><i class="menu-icon fa fa-th"></i><a href="forms-advanced.html">Advanced Form</a></li>
                        </ul>
                    </li>


                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-tasks"></i>Icons</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-fort-awesome"></i><a href="font-fontawesome.html">Font Awesome</a></li>
                            <li><i class="menu-icon ti-themify-logo"></i><a href="font-themify.html">Themefy Icons</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="widgets.html"> <i class="menu-icon ti-email"></i>Widgets </a>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-bar-chart"></i>Charts</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-line-chart"></i><a href="charts-chartjs.html">Chart JS</a></li>
                            <li><i class="menu-icon fa fa-area-chart"></i><a href="charts-flot.html">Flot Chart</a></li>
                            <li><i class="menu-icon fa fa-pie-chart"></i><a href="charts-peity.html">Peity Chart</a></li>
                        </ul>
                    </li>

                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-area-chart"></i>Maps</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-map-o"></i><a href="maps-gmap.html">Google Maps</a></li>
                            <li><i class="menu-icon fa fa-street-view"></i><a href="maps-vector.html">Vector Maps</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-glass"></i>Pages</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-sign-in"></i><a href="page-login.html">Login</a></li>
                            <li><i class="menu-icon fa fa-sign-in"></i><a href="page-register.html">Register</a></li>
                            <li><i class="menu-icon fa fa-paper-plane"></i><a href="pages-forget.html">Forget Pass</a></li>
                        </ul>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside><!-- /#left-panel -->

    <!-- Left Panel -->

    <!-- Right Panel -->

    <div id="right-panel" class="right-panel">

        <!-- Header-->
        <header id="header" class="header">

            <div class="header-menu">

                <div class="col-sm-7">
                    <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa fa-tasks"></i></a>
                    <div class="header-left">
                        <button class="search-trigger"><i class="fa fa-search"></i></button>
                        <div class="form-inline">
                            <form class="search-form">
                                <input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">
                                <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                            </form>
                        </div>

                        <div class="dropdown for-notification">
                          <button class="btn btn-secondary dropdown-toggle" type="button" id="notification" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-bell"></i>
                            <span class="count bg-danger">5</span>
                          </button>
                          <div class="dropdown-menu" aria-labelledby="notification">
                            <p class="red">You have 3 Notification</p>
                            <a class="dropdown-item media bg-flat-color-1" href="#">
                                <i class="fa fa-check"></i>
                                <p>Server #1 overloaded.</p>
                            </a>
                            <a class="dropdown-item media bg-flat-color-4" href="#">
                                <i class="fa fa-info"></i>
                                <p>Server #2 overloaded.</p>
                            </a>
                            <a class="dropdown-item media bg-flat-color-5" href="#">
                                <i class="fa fa-warning"></i>
                                <p>Server #3 overloaded.</p>
                            </a>
                          </div>
                        </div>

                        <div class="dropdown for-message">
                          <button class="btn btn-secondary dropdown-toggle" type="button"
                                id="message"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="ti-email"></i>
                            <span class="count bg-primary">9</span>
                          </button>
                          <div class="dropdown-menu" aria-labelledby="message">
                            <p class="red">You have 4 Mails</p>
                            <a class="dropdown-item media bg-flat-color-1" href="#">
                                <span class="photo media-left"><img alt="avatar" src="images/avatar/1.jpg"></span>
                                <span class="message media-body">
                                    <span class="name float-left">Jonathan Smith</span>
                                    <span class="time float-right">Just now</span>
                                        <p>Hello, this is an example msg</p>
                                </span>
                            </a>
                            <a class="dropdown-item media bg-flat-color-4" href="#">
                                <span class="photo media-left"><img alt="avatar" src="images/avatar/2.jpg"></span>
                                <span class="message media-body">
                                    <span class="name float-left">Jack Sanders</span>
                                    <span class="time float-right">5 minutes ago</span>
                                        <p>Lorem ipsum dolor sit amet, consectetur</p>
                                </span>
                            </a>
                            <a class="dropdown-item media bg-flat-color-5" href="#">
                                <span class="photo media-left"><img alt="avatar" src="images/avatar/3.jpg"></span>
                                <span class="message media-body">
                                    <span class="name float-left">Cheryl Wheeler</span>
                                    <span class="time float-right">10 minutes ago</span>
                                        <p>Hello, this is an example msg</p>
                                </span>
                            </a>
                            <a class="dropdown-item media bg-flat-color-3" href="#">
                                <span class="photo media-left"><img alt="avatar" src="images/avatar/4.jpg"></span>
                                <span class="message media-body">
                                    <span class="name float-left">Rachel Santos</span>
                                    <span class="time float-right">15 minutes ago</span>
                                        <p>Lorem ipsum dolor sit amet, consectetur</p>
                                </span>
                            </a>
                          </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-5">
                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="user-avatar rounded-circle" src="images/admin.jpg" alt="User Avatar">
                        </a>

                        <div class="user-menu dropdown-menu">
                                <a class="nav-link" href="#"><i class="fa fa- user"></i>My Profile</a>

                                <a class="nav-link" href="#"><i class="fa fa- user"></i>Notifications <span class="count">13</span></a>

                                <a class="nav-link" href="#"><i class="fa fa -cog"></i>Settings</a>

                                <a class="nav-link" href="http://192.168.43.108:8080/AgenceImmobiliere/LogoutServlet"><i class="fa fa-power -off"></i>Logout</a>
                        </div>
                    </div>

                    <div class="language-select dropdown" id="language-select">
                        <a class="dropdown-toggle" href="#" data-toggle="dropdown"  id="language" aria-haspopup="true" aria-expanded="true">
                            <i class="flag-icon flag-icon-us"></i>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="language" >
                            <div class="dropdown-item">
                                <span class="flag-icon flag-icon-fr"></span>
                            </div>
                            <div class="dropdown-item">
                                <i class="flag-icon flag-icon-es"></i>
                            </div>
                            <div class="dropdown-item">
                                <i class="flag-icon flag-icon-us"></i>
                            </div>
                            <div class="dropdown-item">
                                <i class="flag-icon flag-icon-it"></i>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </header><!-- /header -->
        <!-- Header-->

        <div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>Valider les inscriptions</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li><a href="http://192.168.43.108:8080/AgenceImmobiliere/EspaceAdmin.jsp">Accueil</a></li>
                            <li><a href="#">Inscriptions</a></li>
                            <li class="active">Valider</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <div class="content mt-3">
            <div class="animated">
				<div class="row">
		<%
			ArrayList<Client> allC = Fonctions.RecupererListClient();
			ArrayList<Employe> allO = Fonctions.RecupererListOperateur();
			ArrayList<Employe> allA= Fonctions.RecupererListAgent();
		%>
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Postulants pour le poste d'Operateur</strong>
                        </div>
                        	<div class="card-body">
			                <table id="bootstrap-data-table" class="table table-striped table-bordered">
			                <thead>
									<tr>
										<th>Nom</th>
										<th>Prenom</th>
										<th>Email</th>
									</tr>
							</thead>
			                <%for(int i=0 ; i<allO.size() ; i++){ %>
							<tbody>
							<tr>
							<td><%= allO.get(i).getNom()%></td>
							<td><%= allO.get(i).getPrenom()%></td>
							<td><%= allO.get(i).getMail()%></td>
							<td><button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#O<%=i%>">click here</button></td>
							</tr>
								<div class="modal fade" id="O<%=i%>" >
							      <div class="modal-dialog">
							        <div class="modal-content" style="z-index:1;">
							          <div class="modal-header">
							
							          </div>
							          <div class="modal-body">
							            <h3>Nom :<%=allO.get(i).getNom()%> </h3>
							            <h3>Prenom :<%=allO.get(i).getPrenom()%></h3>
							            <h3>Mobile :<%=allO.get(i).getNumtel()%></h3>
							            <h3>Email :<%=allO.get(i).getMail()%></h3>
							            <h3>Adresse :<%=allO.get(i).getAdresse()%></h3>
							            <h3>Sexe :<%=allO.get(i).getSexe()%></h3>
							            <h3>Date de naissance :<%=allO.get(i).getDatenais()%></h3>
							          </div>
							          <div class="modal-footer">
							             <button class="btn btn-default" data-dismiss="modal">Fermer</button>
							             <form action="http://192.168.43.108:8080/AgenceImmobiliere/validation" method="post">
							             <input type="hidden" name="TypeVal" value="Operateur">
							             <input type="hidden" name="IDO" value="<%=allO.get(i).getIdemp()%>">
							             <button class="btn btn-secondary" type="submit" name="valid" value="oui">Accepter</button>
							             <button class="btn btn-secondary" type="submit" name="valid" value="non">D�cliner</button>
							             </form>
							          </div>
							        </div>
							      </div>
							    </div>
							<%
								}
							%>
							</tbody>
							</table>

       						</div>
     			 	</div>
				</div>
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Postulants pour le poste d'Agent</strong>
                        </div>
                        	<div class="card-body">
			                <table id="bootstrap-data-table" class="table table-striped table-bordered">
			                <thead>
									<tr>
										<th>Nom</th>
										<th>Prenom</th>
										<th>Email</th>
									</tr>
							</thead>
			                <%for(int i=0 ; i<allA.size() ; i++){ %>
							<tbody>
							<tr>
							<td><%= allA.get(i).getNom()%></td>
							<td><%= allA.get(i).getPrenom()%></td>
							<td><%= allA.get(i).getMail()%></td>
							<td><button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#A<%=i%>">click here</button></td>
							</tr>
							<div class="modal fade" id="A<%=i%>" >
							      <div class="modal-dialog">
							        <div class="modal-content" style="z-index:1;">
							          <div class="modal-header">
							
							          </div>
							          <div class="modal-body">
							            <h3>Nom :<%=allA.get(i).getNom()%> </h3>
							            <h3>Prenom :<%=allA.get(i).getPrenom()%></h3>
							            <h3>Mobile :<%=allA.get(i).getNumtel()%></h3>
							            <h3>Email :<%=allA.get(i).getMail()%></h3>
							            <h3>Adresse :<%=allA.get(i).getAdresse()%></h3>
							            <h3>Sexe :<%=allA.get(i).getSexe()%></h3>
							            <h3>Date de naissance :<%=allA.get(i).getDatenais()%></h3>
							          </div>
							          <div class="modal-footer">
							             <button class="btn btn-default" data-dismiss="modal">Fermer</button>
							             <form action="http://192.168.43.108:8080/AgenceImmobiliere/validation" method="post">
							             <input type="hidden" name="TypeVal" value="Agent">
							             <input type="hidden" name="IDA" value="<%=allA.get(i).getIdemp()%>">
							             <button class="btn btn-secondary" type="submit" name="valid" value="oui">Accepter</button>
							             <button class="btn btn-secondary" type="submit" name="valid" value="non">D�cliner</button>
							             </form>
							          </div>
							        </div>
							      </div>
							    </div>
							<%
								}
							%>
							</tbody>
							</table>
       						</div>
     			 </div>
			</div>
			<div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Demandes d'inscription en tant que client</strong>
                        </div>
                        	<div class="card-body">
			                <table id="bootstrap-data-table" class="table table-striped table-bordered">
			                <thead>
									<tr>
										<th>Nom</th>
										<th>Prenom</th>
										<th>Email</th>
									</tr>
							</thead>
			                <%for(int i=0 ; i<allC.size() ; i++){ %>
							<tbody>
							<tr>
							<td><%= allC.get(i).getNom()%></td>
							<td><%= allC.get(i).getPrenom()%></td>
							<td><%= allC.get(i).getMail()%></td>
							<td><button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#C<%=i%>">click here</button></td>
							</tr>
							<div class="modal fade" id="C<%=i%>" >
							      <div class="modal-dialog">
							        <div class="modal-content" >
							          <div class="modal-header">
							
							          </div>
							          <div class="modal-body">
							            <h3>Nom :<%=allC.get(i).getNom()%> </h3>
							            <h3>Prenom :<%=allC.get(i).getPrenom()%></h3>
							            <h3>Mobile :<%=allC.get(i).getNumtel()%></h3>
							            <h3>Email :<%=allC.get(i).getMail()%></h3>
							            <h3>Adresse :<%=allC.get(i).getAdresse()%></h3>
							            <h3>Sexe :<%=allC.get(i).getSexe()%></h3>
							            <h3>Date de naissance :<%=allC.get(i).getDatenais()%></h3>
							          </div>
							          <div class="modal-footer">
							             <button class="btn btn-default" data-dismiss="modal">Fermer</button>
							             <form action="http://192.168.43.108:8080/AgenceImmobiliere/validation" method="post">
							             <input type="hidden" name="TypeVal" value="Client">
							             <input type="hidden" name="IDC" value="<%=allC.get(i).getIdc()%>">
							             <button class="btn btn-secondary" type="submit" name="valid" value="oui">Accepter</button>
							             <button class="btn btn-secondary" type="submit" name="valid" value="non">D�cliner</button>
							             </form>
							          </div>
							        </div>
							      </div>
							    </div>
							<%
								}
							%>
							</tbody>
							</table>
       						</div>
     			 </div>
			</div>



            </div>



            </div><!-- .animated -->
        </div><!-- .content -->


    </div><!-- /#right-panel -->

    <!-- Right Panel -->


    <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>


</body>
</html>
