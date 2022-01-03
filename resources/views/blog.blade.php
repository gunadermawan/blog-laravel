@extends('layouts.main')
@section('container')
    <h1 class="mb-5">{{ $title }}</h1>

    @if ($blogs->count())
        <div class="card mb-3">
            <img src="https://source.unsplash.com/1200x400?{{ $blogs[0]->category->name }}" class="card-img-top"
                alt="...">
            <div class="card-body text-center">
                <h3 class="card-title">{{ $blogs[0]->title }}</h3>
                <small class="text-muted">
                    <p>Oleh: <a href="#" class="text-decoration-none">{{ $blogs[0]->user->name }}</a>
                        Kategori: <a href="/categories/{{ $blogs[0]->category->slug }}"
                            class="text-decoration-none">{{ $blogs[0]->category->name }}</a> updated
                        on: {{ $blogs[0]->created_at->diffForHumans() }} </p>
                </small>
                <p class="card-text">{{ $blogs[0]->exerpt }}</p>
                <a href="/blog/{{ $blogs[0]->slug }}" class="text-decoration-none btn btn-primary">Read more</a>
            </div>
        </div>
    @else
        <p class="text-center fs-4">Not Post Found!</p>

    @endif

    @foreach ($blogs as $blog)
        <article class="mb-5 border-bottom pb-4">
            <h2><a href="/blog/{{ $blog->slug }}" class="text-decoration-none">
                    {{ $blog->title }}
                </a></h2>
            <p>Oleh: <a href="#" class="text-decoration-none">{{ $blog->user->name }}</a>
            </p>
            <p>Kategori: <a href="/categories/{{ $blog->category->slug }}"
                    class="text-decoration-none">{{ $blog->category->name }}</a></p>
            <p>{{ $blog->exerpt }}</p>
            <a href="/blog/{{ $blog->slug }}" class="text-decoration-none">Read more...</a>
        </article>
    @endforeach
@endsection
