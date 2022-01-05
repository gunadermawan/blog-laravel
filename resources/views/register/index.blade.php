@extends('layouts.main')

@section('container')
    <div class="row justify-content-center">
        <div class="col-lg-5">
            <main class="form-registration mt-5 ">
                <h1 class="h3 mb-3 fw-normal text-center">Registration</h1>
                <form action="/register" method="POST">
                    @csrf
                    <div class="form-floating">
                        <input type="text" name="name" class="form-control rounded-top @error('name')is-invalid @enderror"
                            id="name" placeholder="name" autofocus required value="{{ old('name') }}">
                        @error('name')
                            <div id="validationServerUsernameFeedback" class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                        <label for="name">Name</label>
                    </div>
                    <div class="form-floating">
                        <input type="text" name="username" class="form-control @error('username')is-invalid @enderror"
                            id="username" placeholder="Username" required value="{{ old('username') }}">
                        @error('username')
                            <div id="validationServerUsernameFeedback" class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                        <label for="username">Username</label>
                    </div>
                    <div class="form-floating">
                        <input type="email" name="email" class="form-control @error('email')is-invalid @enderror" id="email"
                            placeholder="name@example.com" required value="{{ old('email') }}">
                        @error('email')
                            <div id="validationServerUsernameFeedback" class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                        <label for="email">Email address</label>
                    </div>
                    <div class="form-floating">
                        <input type="password" name="password"
                            class="form-control rounded-bottom @error('password')is-invalid @enderror" id="password"
                            placeholder="Password" required>
                        @error('password')
                            <div id="validationServerUsernameFeedback" class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                        <label for="password">Password</label>
                    </div>
                    <button class="w-100 btn btn-lg btn-dark mt-3" type="submit">Register</button>
                </form>
                <small class="d-block text-center mt-3">Already Registered? <a href="/login">Login</a></small>
            </main>
        </div>
    </div>

@endsection
