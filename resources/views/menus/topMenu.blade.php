<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>@yield('title')</title>
</head>
<body>
    
    <header>

        //premiere case
        <div class="">

            //zone principale (visible tout le temps)
            <h1>Accueil</h1>

            //zone hidden 
            <div class="secondaire">
                
            </div>

            <div class="secondaire">
            
            </div>

            <div class="secondaire">
            
            </div>

        </div>
        
        //deuxieme case
        <div class="">
            
            //zone principale
            <h1>Oeuvre</h1>

            //zone hidden
            <div class="secondaire">
            
            </div>

            <div class="secondaire">
            
            </div>

            <div class="secondaire">
            
            </div>

            <div class="secondaire">
            
            </div>

            <div class="secondaire">
            
            </div>


        </div>

        //troisieme case
        <div class="">

            //zone principale
            <h1>Forum</h1>

            //zone hidden
            <div class="secondaire">
            
            </div>

            <div class="secondaire">
            
            </div>

        </div>

        //quatrieme case
        <div class="">

            //zone principale 
            <h1>Recherche</h1>

            //zone hidden
            <div class="secondaire">
            
            </div>
        
        
        </div>


    </header>

    // le contenu de la page
    @yield('content')


</body>