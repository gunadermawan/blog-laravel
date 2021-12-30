@extends('layouts.main')
@section('container')
    <h1 class="mb-5">Post Category: {{ $category }}</h1>
    @foreach ($posts as $post)
        <h2><a href="/blog/{{ $post->slug }}">
                {{ $post->title }}
            </a></h2>
        <p>{{ $post->exerpt }}</p>
    @endforeach
@endsection
