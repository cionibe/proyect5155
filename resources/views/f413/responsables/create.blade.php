@extends('f413.layouts.main')
@section('title')
    Agregar Responsable
@endsection
@section('content')
<!-- Breadcrumbs-->
<ol class="breadcrumb">
    <li class="breadcrumb-item">
        <a href={{asset("/")}}>Inicio</a>
    </li>
    <li class="breadcrumb-item active">
        <a href={{asset("/instituciones")}}>Instituciones/</a>
    </li>  
</ol>
<div class="container">
  <div class="card border-danger mb-3" style="max-width: 256rem;">
    <div class="card-header"><h5>RESPONSABLE DE LA INSTITUCIÓN</div>
      <div class="card-body">
        <form action="{{url('responsables')}}" method="post" role="form">
          {{ csrf_field() }}
          <div class="form-group">
            <select class="form-control" name="institucion_id" required="required">
              @foreach($instituciones as $institucion)
                @if ($idinst == $institucion->id)
                  <option value="{{$institucion->id}}">{{$institucion->name}}</option>
                @endif
              @endforeach
            </select>
          </div>
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
                    <label class="input-group-text">Nº Teléfonico</label>
                    <input id="tlf" type="number" class="form-control" name="tlf" value="{{ old('tlf') }}" required="required">
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

            <div class="form-group">
              <div class="form-group{{ $errors->has('email_r') ? ' has-error' : '' }}">
                <div class="input-group-prepend">
                  <label class="input-group-text">Correo Electrónico</label>
                  <input id="email_r" type="email_r" class="form-control" name="email_r" value="{{ old('email_r') }}" required="required">
                </div>
                @if ($errors->has('email_r'))
                  <span class="help-block">
                    <div class="alert alert-danger">
                      <strong>{{ $errors->first('email_r') }}</strong>
                    </div>
                  </span>
                @endif
              </div>
            </div>
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-group{{ $errors->has('cargo') ? ' has-error' : '' }}">
                  <div class="input-group-prepend">
                    <label class="input-group-text">Cargo</label>
                    <input id="cargo" type="text" class="form-control" name="cargo" value="{{ old('cargo') }}" required="required">
                  </div>
                  @if ($errors->has('cargo'))
                    <span class="help-block">
                      <strong>{{ $errors->first('cargo') }}</strong>
                    </span>
                  @endif
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group{{ $errors->has('dpto') ? ' has-error' : '' }}">
                  <div class="input-group-prepend">
                    <label class="input-group-text">Departamento</label>
                    <input id="dpto" type="text" class="form-control" name="dpto" value="{{ old('dpto') }}" required="required">
                  </div>
                  @if ($errors->has('dpto'))
                    <span class="help-block">
                      <strong>{{ $errors->first('dpto') }}</strong>
                    </span>
                  @endif
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