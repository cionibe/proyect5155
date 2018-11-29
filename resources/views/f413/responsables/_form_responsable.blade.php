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
    <label for="cedula">Nº Cédula</label>
    <div class="form-group{{ $errors->has('cedula') ? ' has-error' : '' }}">
      <input id="cedula" type="number" class="form-control" name="cedula" value="{{ old('cedula') }}" required="required" autofocus="autofocus">
      @if ($errors->has('cedula'))
        <span class="help-block">
          <strong>{{ $errors->first('cedula') }}</strong>
        </span>
      @endif
    </div>
  </div>
  <div class="col-md-6">
    <label for="tlf">Teléfono Celular</label>
    <div class="form-group{{ $errors->has('tlf') ? ' has-error' : '' }}">
      <input id="tlf" type="number" pattern="[0-9]{11}" class="form-control" name="tlf" value="{{ old('tlf') }}" required="required" autofocus="autofocus">
      @if ($errors->has('tlf'))
        <span class="help-block">
          <strong>{{ $errors->first('tlf') }}</strong>
        </span>
      @endif
    </div>
  </div>
</div>

<div class="form-row">
  <div class="col-md-6">
    <label for="name1">Primer Nombre</label>
    <div class="form-group{{ $errors->has('name1') ? ' has-error' : '' }}">
      <input id="name1" type="text" class="form-control" name="name1" value="{{ old('name1') }}" required="required" autofocus="autofocus">
      @if ($errors->has('name1'))
        <span class="help-block">
          <strong>{{ $errors->first('name1') }}</strong>
        </span>
      @endif
    </div>
  </div>
  <div class="col-md-6">
    <label for="name2">Segundo Nombre</label>
    <div class="form-group{{ $errors->has('name2') ? ' has-error' : '' }}">
      <input id="name2" type="text" class="form-control" name="name2" value="{{ old('name2') }}" autofocus="autofocus">
      @if ($errors->has('name2'))
        <span class="help-block">
          <strong>{{ $errors->first('name2') }}</strong>
        </span>
      @endif
    </div>
  </div>
</div>

<div class="form-row">
  <div class="col-md-6">
    <label for="lastname1">Primer Apellido</label>
    <div class="form-group{{ $errors->has('lastname1') ? ' has-error' : '' }}">
      <input id="lastname1" type="text" class="form-control" name="lastname1" value="{{ old('lastname1') }}" required="required" autofocus="autofocus">
      @if ($errors->has('lastname1'))
        <span class="help-block">
          <strong>{{ $errors->first('lastname1') }}</strong>
        </span>
      @endif
    </div>
  </div>
  <div class="col-md-6">
    <label for="lastname2">Segundo Apellido</label>
    <div class="form-group{{ $errors->has('lastname2') ? ' has-error' : '' }}">
      <input id="lastname2" type="text" class="form-control" name="lastname2" value="{{ old('lastname2') }}" autofocus="autofocus">
      @if ($errors->has('lastname2'))
        <span class="help-block">
          <strong>{{ $errors->first('lastname2') }}</strong>
        </span>
      @endif
    </div>
  </div>
</div>

<div class="form-row">
  <div class="col-md-6">
    <label for="cargo">Cargo</label>
    <div class="form-group{{ $errors->has('cargo') ? ' has-error' : '' }}">
      <input id="cargo" type="text" class="form-control" name="cargo" value="{{ old('cargo') }}" required="required" autofocus="autofocus">
      @if ($errors->has('cargo'))
        <span class="help-block">
          <strong>{{ $errors->first('cargo') }}</strong>
        </span>
      @endif
    </div>
  </div>
  <div class="col-md-6">
    <label for="dpto">Departamento</label>
    <div class="form-group{{ $errors->has('dpto') ? ' has-error' : '' }}">
      <input id="dpto" type="text" class="form-control" name="dpto" value="{{ old('dpto') }}" required="required" autofocus="autofocus">
      @if ($errors->has('dpto'))
        <span class="help-block">
          <strong>{{ $errors->first('dpto') }}</strong>
        </span>
      @endif
    </div>
  </div>
</div>


<div class="form-group">
  <label for="email">Correo Electrónico</label>
  <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
    <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required="required" autofocus="autofocus">
    @if ($errors->has('email'))
      <span class="help-block">
        <strong>{{ $errors->first('email') }}</strong>
      </span>
    @endif
  </div>
</div>