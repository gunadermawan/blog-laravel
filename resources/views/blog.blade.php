@extends('layouts.main')
@section('container')
    @foreach ($blogs as $blog)
        <article class="mb-5 border-bottom pb-4">
            <h2><a href="/blog/{{ $blog->slug }}" class="text-decoration-none">
                    {{ $blog->title }}
                </a></h2>
            <p>Oleh: <a href="#" class="text-decoration-none">{{ $blog->user->name }}</a> </p>
            <p>Kategori: <a href="/categories/{{ $blog->category->slug }}"
                    class="text-decoration-none">{{ $blog->category->name }}</a></p>
            <p>{{ $blog->exerpt }}</p>
            <a href="/blog/{{ $blog->slug }}" class="text-decoration-none">Read more...</a>
        </article>
    @endforeach
@endsection
