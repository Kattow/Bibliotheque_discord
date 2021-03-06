
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Biblio endormie</title>
    <!--Link de tout les css-->
    <link rel="stylesheet" href="css/TopMenu.css" style="type/css">
    <link rel="stylesheet" href="css/ContactForm.css" style="type/css">
    <link rel="stylesheet" href="css/ecrivainDuMois.css" style="type/css">
		<link rel="stylesheet" href="css/faq.css" style="type/css">
		<link rel="stylesheet" href="css/banniereMaintenance.css" style="type/css">
		<link rel="stylesheet" href="css/inscription.css" style="type/css">
		<link rel="stylesheet" href="css/connexion.css" style="type/css">
		<link rel="stylesheet" href="css/oubliemdp.css" style="type/css">

</head>
<body>

<div>
    <nav class="nav-menu">

        <ul class="ul-menu">

            <li class="menu-li"> <a href="http://biblio/accueil" class="lien">accueil</a>
                <ul class="sous-menu">
                    <li> <a href="#" class="lien">evenements</a> </li>
                    <li> <a href="#" class="lien">annonces</a> </li>
                </ul>
            </li>

            <li class="menu-li"> <a href="#" class="lien">Oeuvres</a>
                <ul class="sous-menu">
                    <li> <a href="http://biblio/ecrivaindumois" class="lien">Ecrivain du mois</a> </li>
                    <li> <a href="http://biblio/illustrations" class="lien">Illustrations</a> </li>
                    <li> <a href="http://biblio/listeoeuvre" class="lien">Liste des oeuvres</a> </li>
                    <li> <a href="#" class="lien">Meilleures oeuvres</a> </li>
                    <li> <a href="#" class="lien">Random book generator</a> </li>
                </ul>
            </li>

            <li class="menu-li"> <a href="http://biblio/contact" class="lien">Contact</a>
                <ul class="sous-menu">
                    <li> <a href="#" class="lien">Forum</a> </li>
                    <li> <a href="http://biblio/faq" class="lien">F.A.Q</a> </li>
                </ul>
            </li>

            <li class="menu-li"> <a href="#" class="lien">Recherche</a>
                <ul class="sous-menu">
                    <li> <a href="#" class="lien">Recherche avancée</a> </li>
                </ul>
            </li>


            <div class="div-menu-recherche">

                {!! Form::open(['url' => 'recherches'])  !!}
                    {!! Form::text('texte', null, ['class' => 'menu-recherche', 'placeholder' => 'rechercher']) !!}
                    {!! $errors->first('texte', '<small class="help-block">:message</small>')!!}
                {!!Form::close()!!}

            </div>

        </ul>


        <ul class="alphabet-menu">
            <li> <a href="#">#</a> </li>
            <li> <a href="#">A</a> </li>
            <li> <a href="#">B</a> </li>
            <li> <a href="#">C</a> </li>
            <li> <a href="#">D</a> </li>
            <li> <a href="#">E</a> </li>
            <li> <a href="#">F</a> </li>
            <li> <a href="#">G</a> </li>
            <li> <a href="#">H</a> </li>
            <li> <a href="#">I</a> </li>
            <li> <a href="#">J</a> </li>
            <li> <a href="#">K</a> </li>
            <li> <a href="#">L</a> </li>
            <li> <a href="#">M</a> </li>
            <li> <a href="#">N</a> </li>
            <li> <a href="#">O</a> </li>
            <li> <a href="#">P</a> </li>
            <li> <a href="#">Q</a> </li>
            <li> <a href="#">R</a> </li>
            <li> <a href="#">S</a> </li>
            <li> <a href="#">T</a> </li>
            <li> <a href="#">U</a> </li>
            <li> <a href="#">V</a> </li>
            <li> <a href="#">W</a> </li>
            <li> <a href="#">X</a> </li>
            <li> <a href="#">Y</a> </li>
            <li> <a href="#">Z</a> </li>
        </ul>

				<div class="connection-top-menu">
					<h3 class="connection-menu-image"> ||| </h3>
				</div>

			</nav>

			<div class="compte-menu">
				<h5>utilisateur</h5>
				<ul class="ul-compte-menu">
					<li> <a href="http://biblio/connexion" class="compte-lien">Connexion</a> </li>
					<li> <a href="http://biblio/inscription" class="compte-lien">Inscription</a> </li>
					<li> <a href="#" class="compte-lien">Mon compte</a> </li>
					<li> <a href="#" class="compte-lien">Mes oeuvres</a> </li>
				</ul>
			</div>


</div>
    </nav>

<!--
	Les maintenances
-->
<br><br><br><br><br><br><br>
    @yield('content')
    <!-- @extends('../footer') -->
    @yield('bannieremaintenance')
    </body>
</html>
