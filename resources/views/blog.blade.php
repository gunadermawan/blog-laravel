@extends('layouts.main')
@section('container')
    @foreach($blogs as $blog)
    <h2><a href="/blog/{{ $blog['slug'] }}">
        {{ $blog["title"] }}
    </a></h2>
    <h5>Oleh: {{ $blog["author"] }}</h5>
    <p>{{ $blog["body"] }}</p>
    @endforeach
@endsection
