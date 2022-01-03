@extends('layouts.main')

@section('container')
    <div class="text-center">
        <h1>About social coding</h1>
        <h3>{{ $nama }}</h3>
        <p>{{ $email }}</p>
        <img src="img/{{ $image }}" alt={{ $nama }} width="200" class="img-thumbnail rounded">
    </div>
@endsection
