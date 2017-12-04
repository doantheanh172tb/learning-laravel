@extends('layouts.master')

@section('content')
    <h1>my Latest Order</h1>

    @forelse($orders as $order)
        <p>{{$order->product_id}}</p>
    @empty
        <p>Noone is list</p>
    @endforelse

@endsection