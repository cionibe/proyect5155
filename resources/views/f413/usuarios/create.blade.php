@extends('f413.layouts.main')
@section('title')
    Agregar Usuario
@endsection
@section('content')
<!-- Breadcrumbs-->
<ol class="breadcrumb">
    <li class="breadcrumb-item">
        <a href={{asset("/")}}>Inicio</a>
    </li>
    <li class="breadcrumb-item active">
        <a href={{url('usuarios')}}>Usuarios</a>
    </li>
</ol>
<div class="container">
  <div class="card border-danger mb-3" style="max-width: 256rem;">
    <div class="card-header"><h5>USUARIOS DE LA SISS</h5></div>
      <div class="card-body">
        <form action="{{url('usuarios')}}" method="post" role="form">
          {{ csrf_field() }}
          <div class="form-row">
            <div class="col-md-6">
              <div class="form-group{{ $errors->has('cedula') ? ' has-error' : '' }}">
                <div class="input-group-prepend">
                  <label class="input-group-text">Nº Cédula</label>
                  <input id="cedula" type="number" class="form-control" name="cedula" value="{{ old('cedula') }}" required="required">
                </div>
                  @if ($errors->has('cedula'))
                    <span class="help-block">
                      <div class="alert alert-danger">
                        <strong>{{ $errors->first('cedula') }}</strong>
                      </div>
                    </span>
                  @endif
                </div>
              </div>

              <div class="col-md-6">
                <div class="form-group{{ $errors->has('tlf') ? ' has-error' : '' }}">
                  <div class="input-group-prepend">
                    <label class="input-group-text">Teléfono Celular</label>
                    <input id="tlf" type="number" pattern="[0-9]{11}" class="form-control" name="tlf" value="{{ old('tlf') }}" required="required">
                  </div>
                  @if ($errors->has('tlf'))
                    <span class="help-block">
                      <div class="alert alert-danger">
                        <strong>{{ $errors->first('tlf') }}</strong>
                      </div>
                    </span>
                  @endif
                </div>
              </div>
            </div>

            <div class="form-row">
              <div class="col-md-6">
                <div class="form-group{{ $errors->has('name1') ? ' has-error' : '' }}">
                  <div class="input-group-prepend">
                    <label class="input-group-text">Primer Nombre</label>
                    <input id="name1" type="text" class="form-control" name="name1" value="{{ old('name1') }}" required="required">
                  </div>
                  @if ($errors->has('name1'))
                    <span class="help-block">
                      <div class="alert alert-danger">
                        <strong>{{ $errors->first('name1') }}</strong>
                      </div>
                    </span>
                  @endif
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group{{ $errors->has('name2') ? ' has-error' : '' }}">
                  <div class="input-group-prepend">
                    <label class="input-group-text">Segundo Nombre</label>
                    <input id="name2" type="text" class="form-control" name="name2" value="{{ old('name2') }}">
                  </div>
                  @if ($errors->has('name2'))
                    <span class="help-block">
                      <div class="alert alert-danger">
                        <strong>{{ $errors->first('name2') }}</strong>
                      </div>
                    </span>
                  @endif
                </div>
              </div>
            </div>

            <div class="form-row">
              <div class="col-md-6">
                <div class="form-group{{ $errors->has('lastname1') ? ' has-error' : '' }}">
                  <div class="input-group-prepend">
                    <label class="input-group-text">Primer Apellido</label>
                    <input id="lastname1" type="text" class="form-control" name="lastname1" value="{{ old('lastname1') }}" required="required">
                  </div>
                  @if ($errors->has('lastname1'))
                    <span class="help-block">
                      <div class="alert alert-danger">
                        <strong>{{ $errors->first('lastname1') }}</strong>
                      </div>
                    </span>
                  @endif
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group{{ $errors->has('lastname2') ? ' has-error' : '' }}">
                  <div class="input-group-prepend">
                    <label class="input-group-text">Segundo Apellido</label>
                    <input id="lastname2" type="text" class="form-control" name="lastname2" value="{{ old('lastname2') }}">
                  </div>
                  @if ($errors->has('lastname2'))
                    <span class="help-block">
                      <div class="alert alert-danger">
                        <strong>{{ $errors->first('lastname2') }}</strong>
                      </div>
                    </span>
                  @endif
                </div>
              </div>
            </div>

          <div class="form-row">
            <div class="col-md-6">
              <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                <div class="input-group-prepend">
                  <label class="input-group-text">Correo Electrónico</label>
                  <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required="required">
                </div>
                @if ($errors->has('email'))
                  <span class="help-block">
                    <div class="alert alert-danger">
                      <strong>{{ $errors->first('email') }}</strong>
                    </div>
                  </span>
                @endif
              </div>
            </div>
            <div class="col-md-6">
              <div class="input-group-prepend">
                <label class="input-group-text">Privilegio</label>
                <select name="rol" class="form-control">
                  @foreach($roles as $key => $value)
                    <option value="{{$value}}">{{$value}}</option>}
                  @endforeach
                </select>
              </div>
            </div>
          </div>

            <div class="form-row">
              <div class="col-md-6">
                <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                  <div class="input-group-prepend">
                    <label class="input-group-text">Contraseña</label>
                    <input id="password" type="password" class="form-control" name="password" required="required">
                  </div>
                      @if ($errors->has('password'))
                        <span class="help-block">
                          <div class="alert alert-danger">
                            <strong>{{ $errors->first('password') }}</strong>
                          </div>
                        </span>
                      @endif
                  </div>
                </div>
              <div class="col-md-6">
                <div class="input-group-prepend">
                  <label class="input-group-text">Confirmar Contraseña</label>
                  <input id="password-confirm" type="password" class="form-control" name="password_confirmation"required="required">
                </div>
              </div>
            </div>
            <div class="d-flex flex-row-reverse">
              <input type="submit" value="Agregar" class="btn-outline-primary">
            </div>
          </form>
        </div>
    </div>
</div>
@endsection