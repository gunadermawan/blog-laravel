@extends('layouts.main')
@section('container')
    @foreach($blogs as $blog)
    <h2>{{ $blog["title"] }}</h2>
    <h5>Oleh: {{ $blog["author"] }}</h5>
    <p>{{ $blog["body"] }}</p>
    @endforeach
@endsection
