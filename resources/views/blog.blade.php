@extends('layouts.main')
@section('container')
    <h1 class="mb-3 text-center pt-5">{{ $title }}</h1>
    <div class="row justify-content-center">
        <div class="col-md-6 mb-3">
            <form action="/blog">
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Search..." name="search"
                        value="{{ request('search') }}">
                    <button class="btn btn-dark" type="submit">Search</button>
                </div>
            </form>
        </div>
    </div>
    @if ($blogs->count())
        <div class="card mb-3">
            @if ($blogs[0]->image)
                <div class="" style="max-height: 400px; overflow: hidden">
                    <img src="{{ asset('storage/' . $blogs[0]->image) }}" alt="{{ $blogs[0]->category->name }}"
                        class="img-fluid">
                </div>
            @else
                <img src="https://source.unsplash.com/1200x400?{{ $blogs[0]->category->name }}" class="card-img-top"
                    alt="{{ $blogs[0]->category->name }}">
            @endif
            <div class="card-body text-center">
                <h3 class="card-title"><a href="/blog/{{ $blogs[0]->slug }}"
                        class="text-decoration-none text-dark">{{ $blogs[0]->title }}</a></h3>
                <small class="text-muted">
                    <p>Oleh: <a href="#" class="text-decoration-none">{{ $blogs[0]->user->name }}</a>
                        Kategori: <a href="/blog?category={{ $blogs[0]->category->slug }}"
                            class="text-decoration-none">{{ $blogs[0]->category->name }}</a> updated
                        on: {{ $blogs[0]->created_at->diffForHumans() }} </p>
                </small>
                <p class="card-text">{{ $blogs[0]->exerpt }}</p>
                <a href="/blog/{{ $blogs[0]->slug }}" class="text-decoration-none btn btn-dark">Read more</a>
            </div>
        </div>


        <div class="container">
            <div class="row">
                @foreach ($blogs as $blog)
                    <div class="col-md-4">
                        <div class="card mb-3">
                            <div class="position-absolute bg-dark px-3 py-2 text-white"
                                style="background-color: rgba(0, 0, 0, 0.5)"><a
                                    href="/blog?category={{ $blog->category->slug }}"
                                    class="text-decoration-none text-white">{{ $blog->category->name }}</a>
                            </div>
                            @if ($blog->image)
                                <img src="{{ asset('storage/' . $blog->image) }}" alt="{{ $blog->category->name }}"
                                    class="img-fluid">
                            @else
                                <img src=" https://source.unsplash.com/500x400?{{ $blog->category->name }}"
                                    class="card-img-top" alt="{{ $blog->category->name }}">
                            @endif
                            <div class="card-body">
                                <h5 class="card-title"> {{ $blog->title }}</h5>
                                <small class="text-muted">
                                    <p>Oleh: <a href="#" class="text-decoration-none">{{ $blog->user->name }}</a>
                                        updated on: {{ $blog->created_at->diffForHumans() }} </p>
                                </small>
                                <p class="card-text">{{ $blog->exerpt }}</p>
                                <a href="/blog/{{ $blog->slug }}" class="btn btn-dark">Read more</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    @else
        <p class="text-center fs-4">Not Post Found!</p>
    @endif
    <div class="d-flex justify-content-lg-center">
        {{ $blogs->links() }}
    </div>

@endsection
