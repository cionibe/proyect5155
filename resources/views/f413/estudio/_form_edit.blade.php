{{-- 04-11-18 funciona --}}


<label><h5>PRINCIPALES DATOS</h5></label>

  <div class="form-group">
    <select class="form-control" name="institucion_id" required="required">
      <option value="">---Seleccione una Institucion---</option>
      @foreach($instituciones as $institucione)
        <option value="{{$institucione->id}}">{{$institucione->name}}</option>
      @endforeach
    </select>{{-- @include('f413.layouts._validation-errors') --}}
  </div>

<div class="form-row">
  <div class="col-md-6">
    <label for="fec_envio">Fecha de envio</label>
    <div class="form-group{{ $errors->has('fec_envio') ? ' has-error' : '' }}">
      <input id="fec_envio" type="date" class="form-control" name="fec_envio" value="{{isset($casos_estudios) ? $casos_estudios-> fec_envio : ''}}" required="required" autofocus="autofocus">
      @if ($errors->has('fec_envio'))
        <span class="help-block">
          <strong>{{ $errors->first('fec_envio') }}</strong>
        </span>
      @endif
    </div>
  </div>
  <div class="col-md-6">
    <label for="fec_respuesta">Fecha de envio</label>
    <div class="form-group{{ $errors->has('fec_respuesta') ? ' has-error' : '' }}">
      <input id="fec_respuesta" type="date" class="form-control" name="fec_respuesta" value="{{isset($casos_estudios) ? $casos_estudios-> fec_respuesta : ''}}" required="required" autofocus="autofocus">
      @if ($errors->has('fec_respuesta'))
        <span class="help-block">
          <strong>{{ $errors->first('fec_respuesta') }}</strong>
        </span>
      @endif
    </div>
  </div>
</div>           
<div class="form-row">
  <div class="col-md-4">
    <label for="num_exp_supervision">Nº Expediente de Supervision</label>
    <div class="form-group{{ $errors->has('num_exp_supervision') ? ' has-error' : '' }}">
      <input id="num_exp_supervision" type="number" class="form-control" name="num_exp_supervision" value="{{isset($casos_estudios) ? $casos_estudios-> num_exp_supervision : ''}}" placeholder="Nº Expediente de Supervision" required="required" autofocus="autofocus">
      @if ($errors->has('num_exp_supervision'))
        <span class="help-block">
          <strong>{{ $errors->first('num_exp_supervision') }}</strong>
        </span>
      @endif
    </div>
  </div>
  <div class="col-md-4">
    <label for="num_oficio_siss">Nº Oficio SiSS</label>
    <div class="form-group{{ $errors->has('num_oficio_siss') ? ' has-error' : '' }}">
      <input id="num_oficio_siss" type="number" class="form-control" name="num_oficio_siss" value="{{isset($casos_estudios) ? $casos_estudios-> num_oficio_siss : ''}}" placeholder="Nº Oficio SiSS" autofocus="autofocus">
      @if ($errors->has('num_oficio_siss'))
        <span class="help-block">
          <strong>{{ $errors->first('num_oficio_siss') }}</strong>
        </span>
      @endif
    </div>
  </div>
  <div class="col-md-4">
    <label for="num_entrega">Nº Entrega</label>
    <div class="form-group{{ $errors->has('num_entrega') ? ' has-error' : '' }}">
      <input id="num_entrega" type="number" class="form-control" name="num_entrega" value="{{isset($casos_estudios) ? $casos_estudios-> num_entrega : ''}}" placeholder="Nº Entrega" autofocus="autofocus">
      @if ($errors->has('num_entrega'))
        <span class="help-block">
          <strong>{{ $errors->first('num_entrega') }}</strong>
        </span>
      @endif
    </div>
  </div>
</div>
<label><h5>COTIZACION</h5></label>
<div class="form-row">
  <div class="col-md-4">
    <div class="form-group">
      <div class="form-check disabled">
        <label class="form-check-label">
        <input class="form-check-input" type="checkbox" value='1' name='cot_tesoro'>
          Cotiza al Tesoro Nacional?
        </label>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="form-group">
      <div class="form-check disabled">
        <label class="form-check-label">
            <input class="form-check-input" type="checkbox" value='1' name='cot_banavih'>
          Cotiza al BANAVIH?
        </label>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="form-group">
      <div class="form-check disabled">
        <label class="form-check-label">
            <input class="form-check-input" type="checkbox" value='1' name='cot_ivss'>
          Cotiza al IVSS?                              
        </label>
      </div>
    </div>
  </div>
</div>

<div class="form-row">
    <div class="col-md-6">
        <div class="form-group{{ $errors->has('aport_trabajador') ? ' has-error' : '' }}">
            <input id="aport_trabajador" type="number" class="form-control" name="aport_trabajador" value="{{isset($casos_estudios) ? $casos_estudios-> aport_trabajador : ''}}" placeholder="Porcentaje aportado por el trabajador" required="required" autofocus="autofocus">
            @if ($errors->has('aport_trabajador'))
                <span class="help-block">
                    <strong>{{ $errors->first('aport_trabajador') }}</strong>
                </span>
            @endif
            <label for="aport_trabajador">Porcentaje aportado por el trabajador</label>
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group{{ $errors->has('aport_patron') ? ' has-error' : '' }}">
            <input id="aport_patron" type="number" class="form-control" name="aport_patron" value="{{isset($casos_estudios) ? $casos_estudios-> aport_patron : ''}}" placeholder="Porcentaje aportado por el patrono" autofocus="autofocus">
            @if ($errors->has('aport_patron'))
                <span class="help-block">
                    <strong>{{ $errors->first('aport_patron') }}</strong>
                </span>
            @endif
            <label for="aport_patron">Porcentaje aportado por el patrono</label>
        </div>
    </div>
</div>
<label><h5>DATOS DE LA NOMINA DEL PERSONAL ACTIVO</h5></label>
<div class="form-row">
  <div class="col-md-3">
    <label for="fijos_act">Cantidad del personal fijo</label>
    <div class="form-group{{ $errors->has('fijos_act') ? ' has-error' : '' }}">
      <input id="fijos_act" type="number" class="form-control" name="fijos_act" value="{{isset($casos_estudios) ? $casos_estudios-> fijos_act : ''}}" placeholder="Cantidad del personal fijo" required="required" autofocus="autofocus">
      @if ($errors->has('fijos_act'))
        <span class="help-block">
          <strong>{{ $errors->first('fijos_act') }}</strong>
        </span>
      @endif
    </div>
  </div>
  <div class="col-md-3">
    <label for="contratados_act">Cantidad del personal contratado</label>
    <div class="form-group{{ $errors->has('contratados_act') ? ' has-error' : '' }}">
      <input id="contratados_act" type="number" class="form-control" name="contratados_act" value="{{isset($casos_estudios) ? $casos_estudios-> contratados_act : ''}}" placeholder="Cantidad del personal contratado" autofocus="autofocus">
      @if ($errors->has('contratados_act'))
        <span class="help-block">
          <strong>{{ $errors->first('contratados_act') }}</strong>
        </span>
      @endif
    </div>
  </div>
  <div class="col-md-3">
    <label for="otros_act">Cantidad de otro tipo de personal, nominas especiales</label>
    <div class="form-group{{ $errors->has('otros_act') ? ' has-error' : '' }}">
      <input id="otros_act" type="number" class="form-control" name="otros_act" value="{{isset($casos_estudios) ? $casos_estudios-> otros_act : ''}}" placeholder="(HP, alto nivel, elección pupilar, comisión de servicios, etc.)" autofocus="autofocus">
      @if ($errors->has('otros_act'))
        <span class="help-block">
          <strong>{{ $errors->first('otros_act') }}</strong>
        </span>
      @endif
    </div>
  </div>
  <div class="col-md-3">
    <label for="nomina_adic">Nomina adicional</label>
    <div class="form-group{{ $errors->has('nomina_adic') ? ' has-error' : '' }}">
      <input id="nomina_adic" type="number" class="form-control" name="nomina_adic" value="{{isset($casos_estudios) ? $casos_estudios-> nomina_adic : ''}}" placeholder="(HP, alto nivel, elección pupilar, comisión de servicios, etc.)" autofocus="autofocus">
      @if ($errors->has('nomina_adic'))
        <span class="help-block">
          <strong>{{ $errors->first('nomina_adic') }}</strong>
        </span>
      @endif
    </div>
  </div>
</div>
<label><h5>NOMINA DEL PERSONAL JUBILADO</h5></label>
<div class="form-row">
  <div class="col-md-4">
    <label for="jubiladas">Cantidad mujeres</label>
    <div class="form-group{{ $errors->has('jubiladas') ? ' has-error' : '' }}">
      <input id="jubiladas" type="number" class="form-control" name="jubiladas" value="{{isset($casos_estudios) ? $casos_estudios-> jubiladas : ''}}" required="required" autofocus="autofocus">
      @if ($errors->has('jubiladas'))
        <span class="help-block">
          <strong>{{ $errors->first('jubiladas') }}</strong>
        </span>
      @endif
    </div>
  </div>
  <div class="col-md-4">
    <label for="jubilados">Cantidad hombres</label>
    <div class="form-group{{ $errors->has('jubilados') ? ' has-error' : '' }}">
      <input id="jubilados" type="number" class="form-control" name="jubilados" value="{{isset($casos_estudios) ? $casos_estudios-> jubilados : ''}}" autofocus="autofocus">
      @if ($errors->has('jubilados'))
        <span class="help-block">
          <strong>{{ $errors->first('jubilados') }}</strong>
        </span>
      @endif
    </div>
  </div>
  <div class="col-md-4">
    <label for="jubilados_bs_anual">Monto anual de la nomina en Bs.</label>
    <div class="form-group{{ $errors->has('jubilados_bs_anual') ? ' has-error' : '' }}">
      <input id="jubilados_bs_anual" type="number" class="form-control" name="jubilados_bs_anual" value="{{isset($casos_estudios) ? $casos_estudios-> jubilados_bs_anual : ''}}" autofocus="autofocus">
      @if ($errors->has('jubilados_bs_anual'))
        <span class="help-block">
          <strong>{{ $errors->first('jubilados_bs_anual') }}</strong>
        </span>
      @endif
    </div>
  </div>
</div>
<label><h5>NOMINA DEL PERSONAL PENSIONADOS POR INCAPACIDAD</h5></label>
<div class="form-row">
  <div class="col-md-4">
    <label for="pensionadas_i">Cantidad mujeres</label>
    <div class="form-group{{ $errors->has('pensionadas_i') ? ' has-error' : '' }}">
      <input id="pensionadas_i" type="number" class="form-control" name="pensionadas_i" value="{{isset($casos_estudios) ? $casos_estudios-> pensionadas_i : ''}}" required="required" autofocus="autofocus">
      @if ($errors->has('pensionadas_i'))
        <span class="help-block">
          <strong>{{ $errors->first('pensionadas_i') }}</strong>
        </span>
      @endif
    </div>
  </div>
  <div class="col-md-4">
    <label for="pensionados_i">Cantidad hombres</label>
    <div class="form-group{{ $errors->has('pensionados_i') ? ' has-error' : '' }}">
      <input id="pensionados_i" type="number" class="form-control" name="pensionados_i" value="{{isset($casos_estudios) ? $casos_estudios-> pensionados_i : ''}}" autofocus="autofocus">
      @if ($errors->has('pensionados_i'))
        <span class="help-block">
          <strong>{{ $errors->first('pensionados_i') }}</strong>
        </span>
      @endif
    </div>
  </div>
  <div class="col-md-4">
    <label for="pensionados_i_bs_anual">Monto anual de la nomina en Bs.</label>
    <div class="form-group{{ $errors->has('pensionados_i_bs_anual') ? ' has-error' : '' }}">
      <input id="pensionados_i_bs_anual" type="number" class="form-control" name="pensionados_i_bs_anual" value="{{isset($casos_estudios) ? $casos_estudios-> pensionados_i_bs_anual : ''}}" autofocus="autofocus">
      @if ($errors->has('pensionados_i_bs_anual'))
        <span class="help-block">
          <strong>{{ $errors->first('pensionados_i_bs_anual') }}</strong>
        </span>
      @endif
    </div>
  </div>
</div>
<label><h5>NOMINA DEL PERSONAL PENSIONADOS POR SOBREVIVIENTE</h5></label>
<div class="form-row">
  <div class="col-md-4">
    <label for="pensionadas_s">Cantidad mujeres</label>
    <div class="form-group{{ $errors->has('pensionadas_s') ? ' has-error' : '' }}">
      <input id="pensionadas_s" type="number" class="form-control" name="pensionadas_s" value="{{isset($casos_estudios) ? $casos_estudios-> pensionadas_s : ''}}" required="required" autofocus="autofocus">
      @if ($errors->has('pensionadas_s'))
        <span class="help-block">
          <strong>{{ $errors->first('pensionadas_s') }}</strong>
        </span>
      @endif
    </div>
  </div>
  <div class="col-md-4">
    <label for="pensionados_s">Cantidad hombres</label>
    <div class="form-group{{ $errors->has('pensionados_s') ? ' has-error' : '' }}">
      <input id="pensionados_s" type="number" class="form-control" name="pensionados_s" value="{{isset($casos_estudios) ? $casos_estudios-> pensionados_s : ''}}" autofocus="autofocus">
      @if ($errors->has('pensionados_s'))
        <span class="help-block">
          <strong>{{ $errors->first('pensionados_s') }}</strong>
        </span>
      @endif
    </div>
  </div>
  <div class="col-md-4">
    <label for="pensionados_s_bs_anual">Monto anual de la nomina en Bs.</label>
    <div class="form-group{{ $errors->has('pensionados_s_bs_anual') ? ' has-error' : '' }}">
      <input id="pensionados_s_bs_anual" type="number" class="form-control" name="pensionados_s_bs_anual" value="{{isset($casos_estudios) ? $casos_estudios-> pensionados_s_bs_anual : ''}}"autofocus="autofocus">
      @if ($errors->has('pensionados_s_bs_anual'))
        <span class="help-block">
          <strong>{{ $errors->first('pensionados_s_bs_anual') }}</strong>
        </span>
      @endif
    </div>
  </div>
</div>
<div class="form-row">
  <div class="col-md-6">
    <label><h6>REGIMENES:</h6></label>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" value='1' name='reg_especial'>
        Posee regimen especial?
      </label>
    </div>
    <div class="form-check disabled">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" value='1' name='dec_1440'>
        Posee decreto 1440?
      </label>
    </div>
    <div class="form-check disabled">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" value='1' name='sin_regimen'>
        No posee regimen?
      </label>
    </div>
    <div class="form-check disabled">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" value='1' name='ley_trabajo'>
        Cumple con la LOTTT?
      </label>
    </div>
    <div class="form-check disabled">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" value='1' name='con_colectivo'>
        Posee contrato colectivo?
      </label>
    </div>
    <div class="form-check disabled">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" value='1' name='tod_beneficio'>
        Cumple con todos los beneficios?
      </label>
    </div>
    <div class="form-group">
      <label>Origen de los recursos:</label>
        <input name="orig_recursos" value="{{isset($casos_estudios) ? $casos_estudios-> orig_recursos : ''}}" class="form-control" type="textarea" placeholder="Indique el origen de los recursos">
    </div>
  </div>

  <div class="col-md-5">
    <label><h6>DOCUMENTOS CONSIGNADOS:</h6></label>
    <div class="form-check disabled">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" value='1' name='doc_rif'>
        RIF
      </label>
    </div>
    <div class="form-check disabled">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" value='1' name='doc_conv_colectiva'>
        Acta de convencion colectiva
      </label>
    </div>
    <div class="form-check disabled">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" value='1' name='doc_acta_constitutiva'>
        Acta constitutiva
      </label>
    </div>
    <div class="form-check disabled">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" value='1' name='doc_resolucion'>
        Resolucion
      </label>
    </div>
    <div class="form-check disabled">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" value='1' name='doc_decreto1440'>
        Decreto 1440
      </label>
    </div>
    <div class="form-check disabled">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" value='1' name='doc_digital'>
        Respaldo digital
      </label>
    </div>
    <div class="form-check disabled">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" value='1' name='doc_fisico'>
        Respaldo fisico
      </label>
    </div>
  </div>
</div>
<label><h5>OBSERVACIONES</h5></label>
<div class="form-group">
    <input name="observaciones" id="observaciones" value="{{isset($casos_estudios) ? $casos_estudios-> observaciones : ''}}" class="form-control" type="textarea" placeholder="Indique alguna observaciones, si existe" rows="3">
</div>