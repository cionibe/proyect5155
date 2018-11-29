@extends('f413.layouts.app')

@section('content')
<div class="container">
  <div class="card card-login mx-auto mt-5">
    <div class="card-header">
        <link href={{asset("vendor/bootstrap/css/bootstrap.min.css")}} rel="stylesheet">
        <img src={{asset("vendor/13/siss.png")}} alt="Logotipo de HTML5" width="370" height="256">
    </div>
    <div class="card-body">
        <form class="form-horizontal" method="POST" action="{{ route('login') }}">
            {{ csrf_field() }}

            <div class="form-group{{ $errors->has('cedula') ? ' has-error' : '' }}">
                <label for="cedula">Cédula</label>
                <div>
                    <input id="cedula" type="" class="form-control" name="cedula" value="{{ old('cedula') }}" required autofocus>
                    @if ($errors->has('cedula'))
                        <span class="help-block">
                            <strong>{{ $errors->first('cedula') }}</strong>
                        </span>
                    @endif
                </div>
            </div>
{{--
            <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                <label for="email">Cédula</label>
                <div>
                    <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required autofocus>
                    @if ($errors->has('email'))
                        <span class="help-block">
                            <strong>{{ $errors->first('email') }}</strong>
                        </span>
                    @endif
                </div>
            </div>
 --}}
            <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                <label for="password" ">Contraseña</label>

                <div>
                    <input id="password" type="password" class="form-control" name="password" required>

                    @if ($errors->has('password'))
                        <span class="help-block">
                            <strong>{{ $errors->first('password') }}</strong>
                        </span>
                    @endif
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-6 col-md-offset-4">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> Recordarmeme
                        </label>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-8 col-md-offset-4">
                    <button type="submit" class="btn btn-primary">
                        Ingresar
                    </button>
{{-- 
                    <a class="btn btn-link" href="{{ route('password.request') }}">
                        Olvido su contraseña?
                    </a> --}}
                </div>
            </div>
        </form>
    </div>
  </div>
</div>
 
@endsection