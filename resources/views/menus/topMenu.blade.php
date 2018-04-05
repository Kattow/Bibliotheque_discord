
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Accueil</title>
    <link rel="stylesheet" href="css/topmenu.css" style="type/css">
</head>
<body>

    <nav class="topmenu-nav">
        <ul class="ul-menu">                
            
            
            <ul class="ul-menu-accueil">    
                    <li> <a href="http://biblio/accueil" class="lien">Accueil</a> 
                        <ul class="sousmenu">
                            <li> <a href="#" class="lien">Annonces</a> </li>
                            <li> <a href="#" class="lien">evenements</a> </li>
                        </ul>
                    </li>
            </ul>

                 
            <ul class="ul-menu-oeuvres">
                <li> <a href="#" class="lien">Oeuvres</a> 
                    <ul class="sousmenu">    
                        <li> <a href="#" class="lien">Ecrivain du mois</a> </li>
                        <li> <a href="#" class="lien">Illustrations</a> </li>
                        <li> <a href="#" class="lien">Liste des oeuvres</a> </li>
                        <li> <a href="#" class="lien">Meilleures oeuvres</a> </li>
                        <li> <a href="#" class="lien">Random book generator</a> </li>
                    </ul>
                </li>
            </ul>
    
             
            <ul class="ul-menu-forum">
                <li> <a href="http://biblio/contact" class="lien">Contact</a> 
                    <ul class="sousmenu">
                        <li> <a href="#" class="lien">Forum</a> </li>
                        <li> <a href="#" class="lien">F.A.Q</a> </li>
                    </ul>    
                </li>
            </ul>
            
            <ul class="ul-menu-recherches">
                <li> <a href="#" class="lien">Recherche</a> 
                    <ul class="sousmenu">
                        <li> <a href="#" class="lien">recherches avancées</a> </li>
                    </ul>
                </li>
                
            </ul>               
        </ul>
    </nav>

    @yield('content')
    </body>
</html>