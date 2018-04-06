
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Accueil</title>
    <link rel="stylesheet" href="css/topmenu.css" style="type/css">
</head>
<body>

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
                    <li> <a href="#" class="lien">Ecrivain du mois</a> </li>
                    <li> <a href="#" class="lien">Illustrations</a> </li>
                    <li> <a href="#" class="lien">Liste des oeuvres</a> </li>
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

    </nav>
        
    </nav>
<br><br><br><br><br><br><br>
    @yield('content')
    @extends('../footer')
    </body>
</html>