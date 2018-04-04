@section('topmenu')

<body>
    
    <header>

        <nav>
                <ul>
                    <li> 
                            <ul>
                                <li><a href="http://sitebibli/accueil">Accueil</a> </li>
                                <li></li>
                                <li></li>
                            </ul>
                    </li>
                    <li> 
                            <ul>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                            </ul>
                    </li>
                    <li> 
                            <ul>
                                <li> <a href="http://sitebibli/contact">Contact</a> </li>
                            </ul>
                    </li>                   
                </ul>
        
        </nav>

    </header>
    @yield('drapeaumaintenance')

    // le contenu de la page
    @yield('content')


</body>

@endsection('topmenu')