@extends('menus/topMenu')

@section('content')
<div class="content-formulaire-faq">
	<div class="formulaire-faq">
		<h4>Ajouter un question :</h4>

<!--
Les liens et les envoye a peut être changer
Comme tu veux Kattow comme cest toi qui gere cette partie ^^
-->
		{!! Form::open(['url' => 'faq']) !!}
			<div {!! $errors->has('objet') ? 'has-error' : '' !!}>
				{!! Form::label('objet', 'Objet :', ['class' => 'radio-choix-objet-label']) !!}
<!--
Tu pourras ajouter ceux que tu veux, la jai mis ce qui me venait a lesprit
comme je sais pas quel themes on va mettre pour le moment
-->
				{!! Form::select('objet', ['Futur', 'Actualité', 'Events', 'Lectures', 'Illustrations']) !!}
			</div>
			<div {!! $errors->has('question') ? 'has-errors' : '' !!}>
					{!! Form::label('question-faq', 'Question posée :') !!}
					{!! Form::textarea('question-faq', null, ['class' => 'textarea-formulaire-faq']) !!}
			</div>
			<div class="">

			</div>
			{!! Form::submit('Ajouter la question', ['class' => 'bouton-faq-envoyer']) !!}
		{!! Form::close() !!}

	</div>


</div>

<!--La zone de question-->
<div class="">

	<div class="question-faq">
		<h4>Objet</h4>
		<div class="questionposée-faq">
			<h3>La question</h3>

		</div>
		<div class="reponse-faq">
			<p>La réponse</p>
		</div>
	</div>

</div>
@endsection
