@extends('layouts.main')
@section('container')
    @foreach ($blogs as $blog)
        <h2><a href="/blog/{{ $blog->id }}">
                {{ $blog->title }}
            </a></h2>
        <p>{{ $blog->exerpt }}</p>
    @endforeach
@endsection
