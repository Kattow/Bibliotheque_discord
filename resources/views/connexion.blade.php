
@extends('menus/topMenu')

@section('content')

<div class="connexion-formulaire-content">
	<div class="connexion-formulaire-titre">
		<h4>Connexion</h4>
	</div>
	<div class="connexion-formulaire">

		{!! Form::open(['url' => 'connexion']) !!}

		<div {!! $errors->has('') ? 'has-error' : ''!!}>
			{!! Form::label('pseudo-email', 'entrez votre pseudo ou votre email :') !!}
			<br>
			{!! Form::text('pseudo-email') !!}
		</div>

		<div {!! $errors->has('') ? 'has-error' : ''!!}>
			{!! Form::label('mdp', "entrez votre mot de passe :") !!}<a href="#">(J'ai oublié mon mot de passe)</a>
			<br>
			{!! Form::password('mdp') !!}
		</div>

		{!! Form::submit('se connecter') !!}

		{!! Form::close() !!}

	</div>

</div>

@endsection
