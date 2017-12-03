@extends('layouts.master')

@section('content')
    <h1>my Latest Blogs</h1>

    @forelse($blogs as $blog)
        <h3>{{$blog->title}}</h3>
        <p>{{$blog->body}}</p>
    @empty
        <p>Noone is list</p>
    @endforelse

@endsection