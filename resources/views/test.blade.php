<!DOCTYPE html>
<html lang="fr" >
	<head>
		<meta charset="utf-8">
		<title>test</title>
		<link rel="stylesheet" href="css/test.css">
	</head>
	<body>
		<script type="text/javascript" src="js/test.js">		</script>

		<div class="">
			<h1>test sur les formulaires</h1>
		</div>

		<div class="content">

			{!! Form::open(['url' => 'test']) !!}

			<div  class="div" {!! $errors->has('nom') ? 'has-errors' : '' !!}>
				{!! Form::label('nom', 'Nom :', ['class' => 'label label-premiere']) !!}
				{!! Form::text('nom', null, ['class' => 'input premiere']) !!}
			</div>

			<div class="div active" {!! $errors->has('nom') ? 'has-errors' : '' !!}>
				{!! Form::label('prenom', 'Prenom :', ['class' => 'label']) !!}
				{!! Form::text('prenom', null, ['class' => 'input']) !!}
			</div>


		</div>




	</body>
</html>
