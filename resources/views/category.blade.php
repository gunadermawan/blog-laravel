@extends('layouts.main')
@section('container')
    <h1 class="mb-3 text-center">{{ $title }}</h1>
    <div class="row justify-content-center">
        <div class="col-md-6 mb-3">
            <form action="/blog">

                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Search..." name="search"
                        value="{{ request('search') }}">
                    <button class="btn btn-danger" type="submit">Search</button>
                </div>
            </form>
        </div>
    </div>
    @if ($posts->count())
        <div class="card mb-3">
            <img src="https://source.unsplash.com/1200x400?{{ $posts[0]->category->name }}" class="card-img-top"
                alt="{{ $posts[0]->category->name }}">
            <div class="card-body text-center">
                <h3 class="card-title"><a href="/blog/{{ $posts[0]->slug }}"
                        class="text-decoration-none text-dark">{{ $posts[0]->title }}</a></h3>
                <small class="text-muted">
                    <p>Oleh: <a href="#" class="text-decoration-none">{{ $posts[0]->user->name }}</a>
                        Kategori: <a href="/categories/{{ $posts[0]->category->slug }}"
                            class="text-decoration-none">{{ $posts[0]->category->name }}</a> updated
                        on: {{ $posts[0]->created_at->diffForHumans() }} </p>
                </small>
                <p class="card-text">{{ $posts[0]->exerpt }}</p>
                <a href="/blog/{{ $posts[0]->slug }}" class="text-decoration-none btn btn-primary">Read more</a>
            </div>
        </div>
    @else
        <p class="text-center fs-4">Not Post Found!</p>
    @endif

    <div class="container">
        <div class="row">
            @foreach ($posts as $post)
                <div class="col-md-4">
                    <div class="card mb-3">
                        <div class="position-absolute bg-dark px-3 py-2 text-white"
                            style="background-color: rgba(0, 0, 0, 0.5)"><a
                                href="/categories/{{ $post->category->slug }}"
                                class="text-decoration-none text-white">{{ $post->category->name }}</a>
                        </div>
                        <img src=" https://source.unsplash.com/500x400?{{ $post->category->name }}"
                            class="card-img-top" alt="{{ $post->category->name }}">
                        <div class="card-body">
                            <h5 class="card-title"> {{ $post->title }}</h5>
                            <small class="text-muted">
                                <p>Oleh: <a href="#" class="text-decoration-none">{{ $post->user->name }}</a>
                                    updated on: {{ $post->created_at->diffForHumans() }} </p>
                            </small>
                            <p class="card-text">{{ $post->exerpt }}</p>
                            <a href="/blog/{{ $post->slug }}" class="btn btn-primary">Read more</a>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
@endsection
