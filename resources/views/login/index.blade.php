@extends('layouts.main')

@section('container')
    <div class="row justify-content-center">
        <div class="col-lg-5">
            <main class="form-signin mt-5 ">
                <h1 class="h3 mb-3 fw-normal text-center">Please Login</h1>
                <form action="/login" method="POST">
                    <div class="form-floating">
                        <input type="email" name="email" class="form-control @error('email')is-invalid @enderror"
                            id="floatingInput" placeholder="name@example.com">
                        <label for="floatingInput">Email address</label>
                    </div>
                    <div class="form-floating">
                        <input type="password" name="password" class="form-control @error('password')is-invalid @enderror"
                            id="floatingPassword" placeholder="Password">
                        <label for="floatingPassword">Password</label>
                    </div>
                    <button class="w-100 btn btn-lg btn-dark" type="submit">Login</button>
                </form>
                <small class="d-block text-center mt-3">Not Registered? <a href="/register">Register Now</a></small>
            </main>
        </div>
    </div>
@endsection
