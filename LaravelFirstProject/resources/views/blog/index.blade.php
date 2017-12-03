@extends('layouts.master')

@section('content')
    <h1>my Latest Blogs</h1>

    @forelse($blogs as $blog)
        <a href="{{action('BlogsController@show', [$blog->id])}}">
            {{$blog->title}}
        </a>
        <p>{{$blog->body}}</p>
    @empty
        <p>Noone is list</p>
    @endforelse

@endsection