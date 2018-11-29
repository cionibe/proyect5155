{{-- 04-11-18 funciona --}}

@extends('f413.layouts.main')
@section('title')
  Agregar Estudio
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
    <div class="card-header"><h5>ESTUDIO DE LA INSTITUCIÓN</h5></div>
    <div class="card-body">
      <form action="{{url('estudios')}}" method="post" role="form">
        {{ csrf_field() }}
        {{-- @include('f413.estudio._form_create') --}}
        <div class="form-group">
          <select class="form-control" name="institucion_id" required="required">
            @foreach($instituciones as $institucion)
              @if ($idinst == $institucion->id)
                <option value="{{$institucion->id}}">{{$institucion->name}}</option>
              @endif
            @endforeach
          </select>
        </div>

        <label><h5>PRINCIPALES DATOS</h5></label>
        <div class="form-row">
          <div class="col-md-6">
            <div class="form-group{{ $errors->has('fec_envio') ? ' has-error' : '' }}">
              <div class="input-group-prepend">
                <label class="input-group-text">Fecha de envio</label>
                <input id="fec_envio" type="date" class="form-control" name="fec_envio" value="{{old('fec_envio')}}" required="required">
              </div>
              @if ($errors->has('fec_envio'))
                <span class="help-block">
                  <div class="alert alert-danger">
                    <strong>{{ $errors->first('fec_envio') }}</strong>
                  </div>
                </span>
              @endif
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group{{ $errors->has('fec_respuesta') ? ' has-error' : '' }}">
              <div class="input-group-prepend">
                <label class="input-group-text">Fecha de respuesta</label>
                <input id="fec_respuesta" type="date" class="form-control" name="fec_respuesta" value="{{old('fec_respuesta')}}" required="required">
              </div>
              @if ($errors->has('fec_respuesta'))
                <span class="help-block">
                  <div class="alert alert-danger">
                    <strong>{{ $errors->first('fec_respuesta') }}</strong>
                  </div>
                </span>
              @endif
            </div>
          </div>
        </div>           
        <div class="form-row">
          <div class="col-md-4">
            <div class="form-group{{ $errors->has('num_exp_supervision') ? ' has-error' : '' }}">
              <div class="input-group-prepend">
                <label class="input-group-text">Nº Exp. Supervisión</label>
                <input id="num_exp_supervision" type="number" class="form-control" name="num_exp_supervision" value="{{old('num_exp_supervision')}}" required="required">
              </div>
              @if ($errors->has('num_exp_supervision'))
                <span class="help-block">
                  <div class="alert alert-danger">
                    <strong>{{ $errors->first('num_exp_supervision') }}</strong>
                  </div>
                </span>
              @endif
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group{{ $errors->has('num_oficio_siss') ? ' has-error' : '' }}">
              <div class="input-group-prepend">
                <label class="input-group-text">Nº Oficio SiSS</label>
                <input id="num_oficio_siss" type="number" class="form-control" name="num_oficio_siss" value="{{old('num_oficio_siss')}}" required="required">
              </div>
              @if ($errors->has('num_oficio_siss'))
                <span class="help-block">
                  <div class="alert alert-danger">
                    <strong>{{ $errors->first('num_oficio_siss') }}</strong>
                  </div>
                </span>
              @endif
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group{{ $errors->has('num_entrega') ? ' has-error' : '' }}">
              <div class="input-group-prepend">
                <label class="input-group-text">Nº Entrega</label>          
                <input id="num_entrega" type="number" class="form-control" name="num_entrega" value="{{old('num_entrega')}}" required="required">
              </div>
              @if ($errors->has('num_entrega'))
                <span class="help-block">
                  <div class="alert alert-danger">
                    <strong>{{ $errors->first('num_entrega') }}</strong>
                  </div>
                </span>
              @endif
            </div>
          </div>
        </div>
        <label><h5>COTIZACIÓN</h5></label>
        <div class="form-row">
          <div class="col-md-4">
            <div class="input-group-prepend">
              <div class="input-group-text">
                <label class="input-group-text">Cotiza a la Tesorería de Seguridad Social?</label>
                <input type="checkbox" value='1' name='cot_tesoro'>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="input-group-prepend">
              <div class="input-group-text">
                <label class="input-group-text">Cotiza al BANAVIH?</label>
                <input type="checkbox" value='1' name='cot_banavih'>
                </label>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="input-group-prepend">
              <div class="input-group-text">
                <label class="input-group-text">Cotiza al IVSS?</label>
                <input type="checkbox" value='1' name='cot_ivss'>           
              </div>
            </div>
          </div>
        </div>
        <label></label>
        <div class="form-row">
          <div class="col-md-6">
            <div class="form-group{{ $errors->has('aport_trabajador') ? ' has-error' : '' }}">
            <div class="input-group-prepend">
              <label class="input-group-text">Porcentaje aportado por el trabajador</label>
              <input id="aport_trabajador" type="number" class="form-control" name="aport_trabajador" value="{{old('aport_trabajador')}}" required="required">
            </div>
              @if ($errors->has('aport_trabajador'))
                <span class="help-block">
                  <div class="alert alert-danger">
                    <strong>{{ $errors->first('aport_trabajador') }}</strong>
                  </div>
                </span>
              @endif
            </div>
          </div>
            <div class="col-md-6">
              <div class="form-group{{ $errors->has('aport_patron') ? ' has-error' : '' }}">
              <div class="input-group-prepend">
                <label class="input-group-text">Porcentaje aportado por el patrono</label>
                <input id="aport_patron" type="number" class="form-control" name="aport_patron" value="{{old('aport_patron')}}" required="required">
              </div>
              @if ($errors->has('aport_patron'))
                <span class="help-block">
                  <div class="alert alert-danger">
                    <strong>{{ $errors->first('aport_patron') }}</strong>
                  </div>
                </span>
              @endif
              </div>
            </div>
        </div>
        <label><h5>DATOS DE LA NOMINA DEL PERSONAL ACTIVO</h5></label>
        <div class="form-row">
          <div class="col-md-3">
            <div class="form-group{{ $errors->has('fijos_act') ? ' has-error' : '' }}">
              <div class="input-group-prepend">
                <span class="input-group-text">Fijos</span>
                <input id="fijos_act" type="number" class="form-control" name="fijos_act" value="{{old('fijos_act')}}" required="required">
              </div>
              @if ($errors->has('fijos_act'))
                <span class="help-block">
                  <div class="alert alert-danger">
                    <strong>{{ $errors->first('fijos_act') }}</strong>
                  </div>
                </span>
              @endif
            </div>
          </div>
          <div class="col-md-3">
            <div class="form-group{{ $errors->has('contratados_act') ? ' has-error' : '' }}">
              <div class="input-group-prepend">
                <span class="input-group-text">Contratados</span>
                <input id="contratados_act" type="number" class="form-control" name="contratados_act" value="{{old('contratados_act')}}" required="required">
              </div>
              @if ($errors->has('contratados_act'))
                <span class="help-block">
                  <div class="alert alert-danger">
                    <strong>{{ $errors->first('contratados_act') }}</strong>
                  </div>
                </span>
              @endif
            </div>
          </div>
          <div class="col-md-3">
            <div class="form-group{{ $errors->has('otros_act') ? ' has-error' : '' }}">
              <div class="input-group-prepend">
                <span class="input-group-text">Otros tipos</span>
                <input id="otros_act" type="number" class="form-control" name="otros_act" value="{{old('otros_act')}}" placeholder="alto nivel, elección popular, etc." required="required">
              </div>
              @if ($errors->has('otros_act'))
                <span class="help-block">
                  <div class="alert alert-danger">
                    <strong>{{ $errors->first('otros_act') }}</strong>
                  </div>
                </span>
              @endif
            </div>
          </div>
          <div class="col-md-3">
            <div class="form-group{{ $errors->has('nomina_adic') ? ' has-error' : '' }}">
              <div class="input-group-prepend">
                <span class="input-group-text">Nomina adicional</span>
                <input id="nomina_adic" type="number" class="form-control" name="nomina_adic" value="{{old('nomina_adic')}}" required="required">
              </div>
              @if ($errors->has('nomina_adic'))
                <span class="help-block">
                  <div class="alert alert-danger">
                    <strong>{{ $errors->first('nomina_adic') }}</strong>
                  </div>
                </span>
              @endif
            </div>
          </div>
        </div>
        <label><h5>NOMINA DEL PERSONAL JUBILADO</h5></label>
        <div class="form-row">
          <div class="col-md-4">
            <div class="form-group{{ $errors->has('jubiladas') ? ' has-error' : '' }}">
              <div class="input-group-prepend">
                <span class="input-group-text">Mujeres</span>
                <input id="jubiladas" type="number" class="form-control" name="jubiladas" value="{{old('jubiladas')}}" required="required">
              </div>
              @if ($errors->has('jubiladas'))
                <span class="help-block">
                  <div class="alert alert-danger">
                    <strong>{{ $errors->first('jubiladas') }}</strong>
                  </div>
                </span>
              @endif
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group{{ $errors->has('jubilados') ? ' has-error' : '' }}">
              <div class="input-group-prepend">
                <span class="input-group-text">Hombres</span>
                <input id="jubilados" type="number" class="form-control" name="jubilados" value="{{old('jubilados')}}" required="required">
              </div>
              @if ($errors->has('jubilados'))
                <span class="help-block">
                  <div class="alert alert-danger">
                    <strong>{{ $errors->first('jubilados') }}</strong>
                  </div>
                </span>
              @endif
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group{{ $errors->has('jubilados_bs_anual') ? ' has-error' : '' }}">
              <div class="input-group-prepend">
                <span class="input-group-text">Monto anual Bs.</span>
                <input id="jubilados_bs_anual" type="number" class="form-control" name="jubilados_bs_anual" value="{{old('jubilados_bs_anual')}}" required="required">
              </div>
              @if ($errors->has('jubilados_bs_anual'))
                <span class="help-block">
                  <div class="alert alert-danger">
                    <strong>{{ $errors->first('jubilados_bs_anual') }}</strong>
                  </div>
                </span>
              @endif
            </div>
          </div>
        </div>
        <label><h5>NOMINA DEL PERSONAL PENSIONADOS POR INCAPACIDAD</h5></label>
        <div class="form-row">
          <div class="col-md-4">
            <div class="form-group{{ $errors->has('pensionadas_i') ? ' has-error' : '' }}">
              <div class="input-group-prepend">
                <span class="input-group-text">Mujeres</span>
                <input id="pensionadas_i" type="number" class="form-control" name="pensionadas_i" value="{{old('pensionadas_i')}}" required="required">
              </div>
              @if ($errors->has('pensionadas_i'))
                <span class="help-block">
                  <div class="alert alert-danger">
                    <strong>{{ $errors->first('pensionadas_i') }}</strong>
                  </div>
                </span>
              @endif
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group{{ $errors->has('pensionados_i') ? ' has-error' : '' }}">
              <div class="input-group-prepend">
                <span class="input-group-text">Hombres</span>
                <input id="pensionados_i" type="number" class="form-control" name="pensionados_i" value="{{old('pensionados_i')}}" required="required">
              </div>
              @if ($errors->has('pensionados_i'))
                <span class="help-block">
                  <div class="alert alert-danger">
                    <strong>{{ $errors->first('pensionados_i') }}</strong>
                  </div>
                </span>
              @endif
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group{{ $errors->has('pensionados_i_bs_anual') ? ' has-error' : '' }}">
              <div class="input-group-prepend">
                <span class="input-group-text">Monto anual Bs.</span>
                <input id="pensionados_i_bs_anual" type="number" class="form-control" name="pensionados_i_bs_anual" value="{{old('pensionados_i_bs_anual')}}" required="required">
              </div>
              @if ($errors->has('pensionados_i_bs_anual'))
                <span class="help-block">
                  <div class="alert alert-danger">
                    <strong>{{ $errors->first('pensionados_i_bs_anual') }}</strong>
                  </div>
                </span>
              @endif
            </div>
          </div>
        </div>
        <label><h5>NOMINA DEL PERSONAL PENSIONADOS POR SOBREVIVIENTE</h5></label>
        <div class="form-row">
          <div class="col-md-4">
            <div class="form-group{{ $errors->has('pensionadas_s') ? ' has-error' : '' }}">
              <div class="input-group-prepend">
                <span class="input-group-text">Mujeres</span>
                <input id="pensionadas_s" type="number" class="form-control" name="pensionadas_s" value="{{old('pensionadas_s')}}" required="required">
              </div>
              @if ($errors->has('pensionadas_s'))
                <span class="help-block">
                  <div class="alert alert-danger">
                    <strong>{{ $errors->first('pensionadas_s') }}</strong>
                  </div>
                </span>
              @endif
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group{{ $errors->has('pensionados_s') ? ' has-error' : '' }}">
              <div class="input-group-prepend">
                <span class="input-group-text">Hombres</span>
                <input id="pensionados_s" type="number" class="form-control" name="pensionados_s" value="{{old('pensionados_s')}}" required="required">
              </div>
              @if ($errors->has('pensionados_s'))
                <span class="help-block">
                  <div class="alert alert-danger">
                    <strong>{{ $errors->first('pensionados_s') }}</strong>
                  </div>
                </span>
              @endif
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group{{ $errors->has('pensionados_s_bs_anual') ? ' has-error' : '' }}">
              <div class="input-group-prepend">
                <span class="input-group-text">Monto anual Bs.</span>
                <input id="pensionados_s_bs_anual" type="number" class="form-control" name="pensionados_s_bs_anual" value="{{old('pensionados_s_bs_anual')}}" required="required">
              </div>
              @if ($errors->has('pensionados_s_bs_anual'))
                <span class="help-block">
                  <div class="alert alert-danger">
                    <strong>{{ $errors->first('pensionados_s_bs_anual') }}</strong>
                  </div>
                </span>
              @endif
            </div>
          </div>
        </div>
        <div class="form-row">
          <div class="col-md-6">
            <label><h6>RÉGIMENES:</h6></label>
            <div class="form-check">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox" value='1' name='reg_especial'>
                Posee régimen especial?
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
                No posee régimen?
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
          </div>
          <div class="col-md-5">
            <label><h6>DOCUMENTOS CONSIGNADOS</h6></label>
            <div class="form-check disabled">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox" value='1' name='doc_rif'>
                RIF
              </label>
            </div>
            <div class="form-check disabled">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox" value='1' name='doc_conv_colectiva'>
                Acta de convención colectiva
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
                Resolución
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
                Respaldo físico
              </label>
            </div>
          </div>
        </div>
        <div class="form-group">
          <div class="input-group-prepend">
            <span class="input-group-text">Origen de los recursos</span>
            <input name="orig_recursos" value="{{old('orig_recursos')}}" class="form-control" type="textarea">
          </div>
        </div>
        <div class="form-group">
          <div class="input-group-prepend">
            <span class="input-group-text">Observaciones</span>
            <input name="observaciones" id="observaciones" value="{{old('observaciones')}}" class="form-control" type="textarea" placeholder="Indique alguna observaciones, si existe" rows="3">
          </div>
        </div>
        <div class="d-flex flex-row-reverse">
          <input type="submit" value="Agregar" class="btn btn-outline-primary">
        </div>
      </form>
    </div>
  </div>
</div>
@endsection