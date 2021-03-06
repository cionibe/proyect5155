@extends('f413.layouts.main')
@section('title')
  Actualizar Perfil de la Institucion
@endsection
@section('content')
<!-- Breadcrumbs-->
<ol class="breadcrumb">
  <li class="breadcrumb-item">
    <a href={{asset("/")}}>Inicio</a>
  </li>
  <li class="breadcrumb-item active">
    <a href={{asset("/instituciones")}}>Instituciones</a>
  </li>
</ol>
<div class="container">
  <div class="card border-danger mb-3" style="max-width: 256rem;">
    <div class="card-header"><h5>Editar perfil de la institucion:<br>{{$institucion-> name}}</h5></div>
      <div class="card-body">
        {{-- <form action="{{asset("/institucion/{$institucion -> id}")}}" method="post" role="form">
          {{ method_field('patch') }}
          {{ csrf_field() }} --}}
        <form action="{{route('instituciones.update', $institucion->id)}}" method="post" role="form">
            {{ method_field('put') }}
            {{ csrf_field() }}
            <div class="form-row">
              <div class="col-md-6">
                <div class="input-group-prepend">
                  <label class="input-group-text">Acrónico</label>
                  <input id="acronimo" type="text" class="form-control" name="acronimo" value="{{$institucion->acronimo}}" placeholder="Acronimo (siglas)">
                </div>
              </div>
            
              <div class="col-md-2">
                <div class="input-group-prepend">
                  <label class="input-group-text">RIF</label>
                  <select class="form-control" id="_rif" name="_rif" value="">
                    <option>G</option>
                    <option>J</option>
                    <option>P</option>
                    <option>V</option>
                  </select>
                </div>
              </div>

              <div class="col-md-4">
                <div class="form-group{{ $errors->has('rif') ? ' has-error' : '' }}">
                    <input id="rif" type="number" class="form-control" name="rif" value="{{$institucion->rif}}" required="required">
                  @if ($errors->has('rif'))
                    <span class="help-block">
                      <div class="alert alert-danger">
                      <strong>{{ $errors->first('rif') }}</strong>
                      </div>
                    </span>
                  @endif
                </div>
              </div>
            </div>

            <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
              <div class="input-group-prepend">
                <label class="input-group-text">Nombre</label>
                <input id="name" type="text" class="form-control" name="name" value="{{$institucion->name}}" required="required">
              </div>
              @if ($errors->has('name'))
                <span class="help-block">
                  <div class="alert alert-danger">
                    <strong>{{ $errors->first('name') }}</strong>
                  </div>
                </span>
              @endif
            </div>

            <div class="form-row">
              <div class="col-md-6">
                <div class="form-group{{ $errors->has('tlfppal') ? ' has-error' : '' }}">
                  <div class="input-group-prepend">
                    <label class="input-group-text">Nº Telefónico Principal</label>
                    <input id="tlfppal" type="number" class="form-control" name="tlfppal" value="{{$institucion->tlfppal}}" required="required">
                  </div>
                  @if ($errors->has('tlfppal'))
                    <span class="help-block">
                      <div class="alert alert-danger">
                        <strong>{{ $errors->first('tlfppal') }}</strong>
                      </div>
                    </span>
                  @endif
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group{{ $errors->has('tlfseg') ? ' has-error' : '' }}">
                  <div class="input-group-prepend">
                    <label class="input-group-text">Nº Telefónico Segundario</label>
                    <input id="tlfseg" type="number" class="form-control" name="tlfseg" value="{{$institucion->tlfseg}}">
                  </div>
                  @if ($errors->has('tlfseg'))
                    <span class="help-block">
                      <div class="alert alert-danger">
                        <strong>{{ $errors->first('tlfseg') }}</strong>
                      </div>
                    </span>
                  @endif
                </div>
              </div>
            </div>
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-group{{ $errors->has('naturaleza') ? ' has-error' : '' }}">
                  <div class="input-group-prepend">
                    <label class="input-group-text">Naturaleza</label>
                    <input id="naturaleza" type="text" class="form-control" name="naturaleza" value="{{$institucion->naturaleza}}" required="required">
                  </div>
                  @if ($errors->has('naturaleza'))
                    <span class="help-block">
                      <div class="alert align="" ert-danger">
                        <strong>{{ $errors->first('naturaleza') }}</strong>
                      </div>
                    </span>
                  @endif
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group{{ $errors->has('jerarquia') ? ' has-error' : '' }}">
                  <div class="input-group-prepend">
                    <label class="input-group-text">Rol</label>
                    <input id="jerarquia" type="text" class="form-control" name="jerarquia" value="{{$institucion->jerarquia}}" placeholder="Lugar en la estructura del poder publico nacional">
                  </div>
                  @if ($errors->has('jerarquia'))
                    <span class="help-block">
                      <div class="alert alert-danger">
                        <strong>{{ $errors->first('jerarquia') }}</strong>
                      </div>
                    </span>
                  @endif
                </div>
              </div>
            </div>
            <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
              <div class="input-group-prepend">
                <label class="input-group-text">Correo Electrónico</label>
                <input id="email" type="email" class="form-control" name="email" value="{{$institucion->email}}" required="required">
              </div>
              @if ($errors->has('email'))
                <span class="help-block">
                  <div class="alert alert-danger">
                    <strong>{{ $errors->first('email') }}</strong>
                  </div>
                </span>
              @endif
            </div>
            <div class="form-group{{ $errors->has('direccion') ? ' has-error' : '' }}">
              <div class="input-group-prepend">
                <label class="input-group-text">Dirección</label>
                  {{-- <div class="form-group">
                  <select class="form-control" name="institucion_id" required="required">
                  <option>---Estado---</option>
                  </select>
                  <select class="form-control" name="institucion_id" required="required">
                  <option>---Municipio---</option>
                  </select>
                  <select class="form-control" name="institucion_id" required="required">
                  <option>---Parroquia---</option>
                  </select>
                  </div> --}}
                  <input id="direccion" type="text" class="form-control" name="direccion" value="{{$institucion->direccion}}" placeholder="Escriba el resto de la dirección" rows="3" required>
              </div>
              @if ($errors->has('direccion'))
                <span class="help-block">
                  <div class="alert alert-danger">
                    <strong>{{ $errors->first('direccion') }}</strong>
                  </div>
                </span>
              @endif
            </div>
            <div class="d-flex flex-row-reverse">
              <button type="submit" class="btn-outline-success">Actualizar</button>
            </div>
        </form>
        </form>
      </div>
  </div>
</div>
@endsection