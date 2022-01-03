@extends('layouts.main')
@section('container')
    <h1 class="mb-5">{{ $title }}</h1>
    @foreach ($posts as $post)
        <h2><a href="/blog/{{ $post->slug }}" class="text-decoration-none">
                {{ $post->title }}
            </a></h2>
        <p>Oleh: <a href="#" class="text-decoration-none">{{ $post->user->name }}</a>
        <p>{{ $post->exerpt }}</p>
        <a href="/blog/{{ $post->slug }}" class="text-decoration-none">Read more...</a>
    @endforeach
@endsection
