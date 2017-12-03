@extends('layouts.master')

@section('content')
    <p>Content COntact: {!! $name !!}</p>

    @if($isAdmin)
        <p>True</p>
    @else
        <p>False</p>
    @endif

    @unless(1==2)
        <p>this isnt true</p>
    @endunless

    @forelse($peoples as $people)
        {{$people}}
    @empty
        <p>Noone is list</p>
    @endforelse

@endsection