
@extends('menus/topMenu')

@section('content')

	<div class="formulaire-inscription-content">
		<div class="inscription-formulaire-titre">
			<h4>Inscription :</h4>
		</div>
		<div class="formulaire-inscription">

		{!! Form::open(['url' => 'inscription']) !!}

		<div {!! $errors->has('') ? 'has-error' : ''!!}>
			{!! Form::label('nom', 'entrez votre nom :') !!}
			<br>
			{!! Form::text('nom') !!}
		</div>

		<div {!! $errors->has('') ? 'has-error' : ''!!}>
			{!! Form::label('prenom', 'entrez votre prenom :') !!}
			<br>
			{!! Form::text('prenom') !!}
		</div>

		<div {!! $errors->has('') ? 'has-error' : ''!!}>
			{!! Form::label('pseudo', 'entrez votre pseudo :') !!}
			<br>
			{!! Form::text('pseudo') !!}
		</div>

		<div {!! $errors->has('') ? 'has-error' : ''!!}>
			{!! Form::label('email', 'entrez votre email :') !!}
			<br>
			{!! Form::text('email') !!}
		</div>

		<div {!! $errors->has('') ? 'has-error' : ''!!}>
			{!! Form::label('mdp', 'entrez votre mot de passe :') !!}
			<br>
			{!! Form::password('mdp') !!}
		</div>

		<div {!! $errors->has('') ? 'has-error' : ''!!}>
			{!! Form::label('mdp-verif', 'verifier votre mot de passe :') !!}
			<br>
			{!! Form::password('mdp-verif') !!}
		</div>

		<div {!! $errors->has('') ? 'has-error' : ''!!}>
			{!! Form::radio('sexe', 'homme') !!}
			{!! Form::label('sexe', 'homme') !!}
			<br>
			{!! Form::radio('sexe', 'femme') !!}
			{!! Form::label('sexe', 'femme') !!}
		</div>

		<div {!! $errors->has('') ? 'has-error' : ''!!}>
			{!! Form::checkbox('ecrivain') !!}
			{!! Form::label('ecrivain', 'Je suis un ecrivain') !!}
		</div>

		<div {!! $errors->has('') ? 'has-error' : ''!!}>
			{!! Form::checkbox('conditions') !!}
			{!! Form::label('conditions', "J'ai lu et j'accepte les conditions d'utilisations") !!}
		</div>

		{!! Form::submit("S'inscrire", ['class' => 'bouton-inscription']) !!}

		{!! Form::close() !!}
		</div>
	</div>

@endsection
