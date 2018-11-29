@extends('f413.layouts.main')

@section('content')


<div class="container">
  <div class="card card-register mx-auto mt-5">
    <div class="card-header">Registro de Usuario</div>
    <div class="card-body">
      <form class="form-horizontal" role="form" method="POST" action="{{ route('register') }}">
        {{ csrf_field() }}

        <div class="form-row">
          <div class="col-md-6">
            <div class="form-group{{ $errors->has('name1') ? ' has-error' : '' }}">
              <input id="name1" type="text" class="form-control" name="name1" value="{{ old('name1') }}" placeholder="Primer Nombre" required="required" autofocus="autofocus">
                @if ($errors->has('name1'))
                   <span class="help-block">
                    <strong>{{ $errors->first('name1') }}</strong>
                  </span>
                @endif
                <label for="name1">Primer Nombre</label>
            </div>
          </div>
          <div class="col-md-6">
            <input id="name2" type="text" class="form-control" name="name2" value="{{ old('name2') }}" placeholder="Segundo Nombre" autofocus="autofocus">
            <label for="name2">Segundo Nombre</label>
          </div>
        </div>

        <div class="form-row">
          <div class="col-md-6">
            <div class="form-group{{ $errors->has('lastname1') ? ' has-error' : '' }}">
              <input id="lastname1" type="text" class="form-control" name="lastname1" value="{{ old('lastname1') }}" placeholder="Primer Apellido" required="required" autofocus="autofocus">
              @if ($errors->has('lastname1'))
                <span class="help-block">
                  <strong>{{ $errors->first('lastname1') }}</strong>
                </span>
              @endif
              <label for="lastname1">Primer Apellido</label>
            </div>
          </div>
          <div class="col-md-6">
            <input id="lastname2" type="text" class="form-control" name="lastname2" value="{{ old('lastname2') }}" placeholder="Segundo Apellido" autofocus="autofocus">
            <label for="name2">Segundo Apellido</label>
          </div>
        </div>
{{-- problema para validar cedula y telefono --}}
        <div class="form-row">
          <div class="col-md-6">
            <div class="form-group{{ $errors->has('cedula') ? ' has-error' : '' }}">
              <input id="cedula" type="number" class="form-control" name="cedula" value="{{ old('cedula') }}" placeholder="Cedula" required="required" autofocus="autofocus">
              @if ($errors->has('cedula'))
                <span class="help-block">
                  <strong>{{ $errors->first('cedula') }}</strong>
                </span>
              @endif
              <label for="cedula">No. Cedula</label>
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group{{ $errors->has('tlf') ? ' has-error' : '' }}">
              <input id="tlf" type="number" class="form-control" name="tlf" value="{{ old('tlf') }}" placeholder="Telefono" required="required" autofocus="autofocus">
              @if ($errors->has('tlf'))
                <span class="help-block">
                  <strong>{{ $errors->first('tlf') }}</strong>
                </span>
              @endif
              <label for="tlf">Telefono de Contacto</label>
            </div>
          </div>
        </div>
{{-- problema para validar cedula y telefono --}}

        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
          <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" placeholder="Correo Electronico" required="required" autofocus="autofocus">
          @if ($errors->has('email'))
            <span class="help-block">
              <strong>{{ $errors->first('email') }}</strong>
            </span>
          @endif
          <label for="email">Correo Electronico</label>
        </div>

        <div class="form-row">
          <div class="col-md-6">
              <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                <input id="password" type="password" class="form-control" name="password" placeholder="Contraseña" required="required" autofocus="autofocus">
                  @if ($errors->has('password'))
                    <span class="help-block">
                    <strong>{{ $errors->first('password') }}</strong>
                    </span>
                  @endif
                <label for="password">Contraseña</label>
              </div>
            </div>
          <div class="col-md-6">
            <input id="password-confirm" type="password" class="form-control" name="password_confirmation" placeholder="Confirmar Contraseña" required="required" autofocus="autofocus">
            <label for="password-confirm">Confirmar Contraseña</label>
          </div>
        </div>
        <div class="form-group">
          <div class="col-md-6 col-md-offset-4">
            <button type="submit" class="btn btn-primary">Registrar</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>



@endsection
