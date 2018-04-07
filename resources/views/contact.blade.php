@extends('menus/topmenu')

@section('content')

    <div class="div-conteneur-contact">
        <div class="div-titre-contact">Contactez-nous</div>
        <div class="div-conteneur-formulaire-contact">
            <div class="div-form-contact">
                {!! Form::open(['url' => 'contact']) !!}
                    <div {!! $errors->has('nom') ? 'has-error' : '' !!}>
                        {!! Form::label('nom', 'Nom :', ['class' => 'label-nom-contact'])!!}
                        <br>
                        {!! Form::text('nom', null, ['class' => 'nom-form-contact', 'placeholder' => 'Votre nom']) !!}
                        {!! $errors->first('nom', '<small class="help-block">:message</small>') !!}
                    </div>
                    <div {!! $errors->has('email') ? 'has-error' : '' !!}>
                        {!! Form::label('email', 'Email :', ['class' => 'label-email-contact'])!!}
                        <br>
                        {!! Form::email('email', null, ['class' => 'email-form-contact', 'placeholder' => 'Votre email']) !!}
                        {!! $errors->first('email', '<small class="help-block">:message</small>') !!}
                    </div>
                    <div {!! $errors->has('texte') ? 'has-error' : '' !!}>
                        {!! Form::label('texte', 'Entrer votre message :', ['class' => 'label-texte-contact'])!!}
                        {!! Form::textarea('texte', null, ['class' => 'texte-form-contact', 'placeholder' => 'Votre message']) !!}
                        {!! $errors->first('texte', '<small class="help-block">:message</small>') !!}
                    </div>
                    {!! Form::submit('Envoyer !', ['class' => 'bouton-form-contact']) !!}
                {!! Form::close() !!}
            </div>
        </div>
    </div>
@endsection
