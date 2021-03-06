@extends('layouts.master')

@section('content')

    <h1>create blog</h1>
    <br>
    {!! Form::open(['url' => 'blogs']) !!}
    <div class="col-md-6">
        @if($errors->any())
            <ul class="alert alert-danger">
                @foreach($errors->all() as $error)
                    <li>{{$error}}</li>
                @endforeach
            </ul>
        @endif

        <div class="form-group">
            {!! Form::label('title', 'Blog title') !!}
            {!! Form::text('title', null, ['class' => 'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('title', 'Blog body') !!}
            {!! Form::textarea('body', null, ['class' => 'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::submit('Add blog', ['class' => 'btn btn-primary']) !!}
        </div>

    </div>
    {!! Form::close() !!}

@endsection