@extends('layouts.main')

@section('container')
    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-8">
                <h2 class="mb-3">{{ $post->title }}</h2>
                <p>Oleh: <a href="#" class="text-decoration-none">{{ $post->user->name }}</a>
                </p>
                <p>Kategori: <a href="/categories/{{ $post->category->slug }}"
                        class="text-decoration-none">{{ $post->category->name }}</a></p>
                <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}"
                    alt="{{ $post->category->name }}" class="img-fluid">
                <article class="my-3 fs-5">
                    {!! $post->body !!}
                </article>

                </article>
                <a href="/blog" class="mt-3 ">Back</a>
            </div>
        </div>
    </div>
    <article>
    @endsection
