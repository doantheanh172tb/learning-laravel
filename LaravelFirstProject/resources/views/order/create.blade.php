@extends('layouts.master')

@section('content')

    <h1>create order</h1>
    <br>
    {!! Form::open(['url' => 'orders']) !!}
    <div class="col-md-6">
        @if($errors->any())
            <ul class="alert alert-danger">
                @foreach($errors->all() as $error)
                    <li>{{$error}}</li>
                @endforeach
            </ul>
        @endif

        <div class="form-group">
            {!! Form::label('product', 'Oder Product') !!}
            {!! Form::text('product_id', null, ['class' => 'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::submit('Add order', ['class' => 'btn btn-primary']) !!}
        </div>

    </div>
    {!! Form::close() !!}

@endsection