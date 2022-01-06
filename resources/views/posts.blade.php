@extends('layouts.main')

@section('container')
    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-8">
                <h2 class="mb-3 pt-5">{{ $post->title }}</h2>
                <p>Oleh: <a href="#" class="text-decoration-none">{{ $post->user->name }}</a>
                </p>
                <p>Kategori: <a href="/categories/{{ $post->category->slug }}"
                        class="text-decoration-none">{{ $post->category->name }}</a></p>
                @if ($post->image)
                    <div class="" style="max-height: 350px; overflow: hidden">
                        <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}"
                            class="img-fluid ">
                    </div>
                @else
                    <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}"
                        alt="{{ $post->category->name }}" class="img-fluid">
                @endif
                <article class="my-3 fs-5">
                    {!! $post->body !!}
                </article>
                <a href="/blog" class="mt-3 btn btn-outline-dark">Back</a>
            </div>
        </div>
    </div>
@endsection
