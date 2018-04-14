@extends('menus/topMenu')

@section('content')
<div class="content-formulaire-faq">
	<div class="formulaire-faq">
		<h4>Ajouter une question :</h4>

<!--
Les liens et les envoye a peut être changer
Comme tu veux Kattow comme c'est toi qui gere cette partie ^^
-->
		{!! Form::open(['url' => 'faq']) !!}
			<div {!! $errors->has('objet') ? 'has-error' : '' !!}>
				{!! Form::label('objet', 'Objet :', ['class' => 'radio-choix-objet-label']) !!}
<!--
Tu pourras ajouter ceux que tu veux, la j'ai mis ce qui me venait a l'esprit
comme je sais pas quel themes on va mettre pour le moment
-->
				{!! Form::select('objet', ['Futur', 'Actualité', 'Events', 'Lectures', 'Illustrations'], ['class' => 'radio-objet-faq']) !!}

			</div>
			<br>
			<br>
			<div {!! $errors->has('question') ? 'has-errors' : '' !!}>
					{!! Form::label('question-faq', 'Question posée :', ['class' => 'label-question-faq']) !!}
					<br>
					{!! Form::textarea('question-faq', null, ['class' => 'textarea-formulaire-question-faq']) !!}
			</div>
			<br>
			<br>
			<div {{!! $errors->has('reponse') ? 'has-errors' : '' !!}}>
					{!! Form::label('reponse-faq', 'Reponse :', ['class' => 'label-reponse-faq']) !!}
					<br>
					{!! Form::textarea('reponse-faq', null, ['class' => 'textarea-formulaire-reponse-faq']) !!}
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
