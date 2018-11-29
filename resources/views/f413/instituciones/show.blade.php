@extends('f413.layouts.main')
@section('title')
  {{ $institucion -> name}}
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
    <li class="breadcrumb-item active">
        <a href={{asset("/instituciones/{$institucion->id}")}}>{{$institucion->name}}</a>
    </li>
</ol>

<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" data-toggle="tab" href="#Perfil"><h5>PERFIL</h5></a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#Estudio"><H5>ESTUDIO</H5></a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#Seguimiento"><H5>SEGUIMIENTO</H5></a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#Responsable"><H5>RESPONSABLE</H5></a>
  </li>
</ul>

<div id="myTabContent" class="tab-content">
  {{-- ---------------------- pestaña 1 sin novedad ---------------------- --}} 
  <div class="tab-pane fade show active" id="Perfil">


        {{$mes_actual }} <br>
        {{$mes_estudio  = $est_id[$i] -> fec_envio}} <br>

tipo de variable: 
        {{gettype($est_id[$i] -> fec_envio)}} <br>

extrayendo valor: 3 de  {{$mes_estudio}} <br>

        {{$mes_estudio[0]="$mes_estudio"}} <br>
 
varlor a int88888:
{{--         {{$mes_= (int)$mes_estudio}} <br>
 --}}


{{$est_id}}

    @can('edit user')
      <div class="d-flex flex-row-reverse">
        <a href="{{url('instituciones/'.$institucion->id.'/edit')}}">
        <input type="submit" value="Editar" class="btn btn-outline-secondary"></a>
      </div>
    @endcan
    <div class="card border-secondary mb-3" style="max-width: 200rem;">
      <div class="card-header">
        <h5>
          {{$institucion-> name}}
        </h5>
      </div>
      <div class="card-body">
        <div class="table-responsive">
          <table class="table table-striped table-bordered table-hover">
            <thead>
              <tr>
                <td>Acronomimo (SIGLAS)</td>
                <td>RIF</td>
                <td>NATURALEZA</td>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>{{$institucion-> acronimo}}</td>
                <td>{{$institucion-> _rif}}-{{$institucion-> rif}}</td>
                <td>{{$institucion-> naturaleza}}</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="form-row">
      <div class="col-md-6">
        <div class="card border-secondary mb-3" style="max-width: 200rem;">
          <div class="card-header"><h5>CONTACTO</h5></div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                      <td>Telefonos</td>
                      <td>Email</td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                      <td>{{$institucion-> tlfppal}}<br>{{$institucion -> tlfseg}}</td>
                      <td>{{$institucion-> email}}</td>
                    </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="card border-secondary mb-3" style="max-width: 200rem;">
          <div class="card-header"><h5>DIRECCIÓN</h5></div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-striped table-bordered table-hover">
                {{$institucion -> direccion}}
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  {{-- ---------------------- pestaña 2 sin novedad ---------------------- --}}
  <div class="tab-pane fade" id="Estudio">


    @if (empty($est_id[0] -> fec_envio))

      @can('create user')
        <div class="alert alert-warning">
          Esta institucion no posee caso de estudio,
          <a href="{{url('estudio+', ['idinst' => $institucion->id])}}">Agregar!</a>
        </div>
      @endcan
    
    @else
    
      @for ($i=0; $i<=count($est_id); $i++)
        @if ( $i == (count($est_id) -1))

        <div class="d-flex flex-row-reverse">
          @can('create user')
            <a href="{{url('estudio+', ['idinst' => $institucion->id])}}">
            <input type="submit" value="Agregar" class="btn btn-outline-primary"></a>
          @endcan


           {{-- 
          @can('edit user')
              <a href="{{url('usuarios/'.$usuario->id.'/edit')}}" class="btn btn-outline-secondary">Editar</a>
          @endcan --}}

          @can('edit user')
            <a href="{{url('estudios/'.$est_id[$i]->id.'/edit')}}">
            <input type="submit" value="Editar" class="btn btn-outline-secondary"></a>
          @endcan
        </div>
          <div class="card border-secondary mb-3" style="max-width: 200rem;">
            <div class="card-header">
              <h5>DATOS PRINCIPALES
              </h5>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover">
                  <thead>
                      <tr>
                        <td>Fecha de envìo</td>
                        <td>Fecha de respuesta</td>
                        <td>Nº Exp. Supervisión</td>
                        <td>Nº Oficio SiSS</td>
                        <td>Nº Entrega</td>
                      </tr>
                  </thead>
                  <tbody>
                      <tr>
                        <td>{{$est_id[$i] -> fec_envio}}</td>
                        <td>{{$est_id[$i] -> fec_respuesta}}</td>
                        <td>{{$est_id[$i] -> num_exp_supervision}}</td>
                        <td>{{$est_id[$i] -> num_oficio_siss}}</td>
                        <td>{{$est_id[$i] -> num_entrega}}</td>
                      </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

          <div class="card border-secondary mb-3" style="max-width: 200rem;">
            <div class="card-header"><h5>DATOS DE COTIZACION</h5></div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover">
                  <thead>
                    <tr>
                      <td>Cotiza a la Tesorería de Seguridad Social?</td>
                      <td>Cotiza al BANAVIH?</td>
                      <td>Cotiza al IVSS?</td>
                      <td>Porcentaje aportado por el trabajador</td>
                      <td>Porcentaje aportado por el patrono</td>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>
                        @if($est_id[$i] -> cot_tesoro)
                          Si
                        @else
                          No
                        @endif
                      </td>
                      <td>
                        @if($est_id[$i] -> cot_banavih)
                          Si
                        @else
                          No
                        @endif
                      </td>
                      <td>
                        @if($est_id[$i] -> cot_ivss)
                          Si
                        @else
                          No
                        @endif
                      </td>
                      <td>{{$est_id[$i] -> aport_trabajador}}%</td>
                      <td>{{$est_id[$i] -> aport_patron}}%</td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

          <div class="card border-secondary mb-3" style="max-width: 200rem;">
            <div class="card-header"><h5>NOMINAS</h5>
            </div>
          </div>
            <div class="form-row">
              <div class="col-md-6">
                <div class="card border-secondary mb-3" style="max-width: 200rem;">
                  <div class="card-header"><h5>PERSONAL ACTIVO</h5></div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-striped table-bordered table-hover">
                        <thead>
                          <tr>
                            <td>Fijos</td>
                            <td>Contratados</td>
                            <td>Otros tipos</td>
                            <td>Nomina adicional</td>
                            <td>Total del personal</td>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>{{$est_id[$i] -> fijos_act}}</td>
                            <td>{{$est_id[$i] -> contratados_act}}</td>
                            <td>{{$est_id[$i] -> otros_act}}</td>
                            <td>{{$est_id[$i] -> nomina_adic}}</td>
                            <td>{{
                                $est_id[$i] -> fijos_act + 
                                $est_id[$i] -> contratados_act + 
                                $est_id[$i] -> otros_act
                                }}
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="card border-secondary mb-3" style="max-width: 200rem;">
                  <div class="card-header"><h5>PERSONAL JUBILADO</h5></div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-striped table-bordered table-hover">
                        <thead>
                          <tr>
                            <td>Mujeres</td>
                            <td>Hombres</td>
                            <td>Monto anual</td>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>{{$est_id[$i] -> jubiladas}}</td>
                            <td>{{$est_id[$i] -> jubilados}}</td>
                            <td>Bs. {{$est_id[$i] -> jubilados_bs_anual}}</td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="form-row">
              <div class="col-md-6">
                <div class="card border-secondary mb-3" style="max-width: 200rem;">
                  <div class="card-header"><h5>PENSIONADOS POR INCAPACIDAD</h5></div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-striped table-bordered table-hover">
                        <thead>
                          <tr>
                            <td>Mujeres</td>
                            <td>Hombres</td>
                            <td>Monto anual</td>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>{{$est_id[$i] -> pensionadas_i}}</td>
                            <td>{{$est_id[$i] -> pensionados_i}}</td>
                            <td>Bs. {{$est_id[$i] -> pensionados_i_bs_anual}}</td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="card border-secondary mb-3" style="max-width: 200rem;">
                  <div class="card-header"><h5>PENSIONADOS POR SOBREVIVIENTE</h5></div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-striped table-bordered table-hover">
                        <thead>
                          <tr>
                            <td>Mujeres</td>
                            <td>Hombres</td>
                            <td>Monto anual</td>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>{{$est_id[$i] -> pensionadas_s}}</td>
                            <td>{{$est_id[$i] -> pensionados_s}}</td>
                            <td>Bs. {{$est_id[$i] -> pensionados_s_bs_anual}}</td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>

          <div class="form-row">
            <div class="col-md-6">
              <div class="card border-secondary mb-3" style="max-width: 200rem;">
                <div class="card-header"><h5>RÉGIMENES</h5></div>
                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover">
                      <tr>
                        <td>Posee régimen especial?</td>
                        <td>
                          @if($est_id[$i]->reg_especial === true)
                            Posee
                          @else
                            No Posee
                          @endif
                        </td>
                      </tr>
                      <tr>
                        <td>Posee decreto 1440??</td>
                        <td>
                          @if($est_id[$i] -> dec_1440)
                            Posee
                          @else
                            No Posee
                          @endif
                        </td>
                      </tr>
                      <tr>
                        <td>No posee régimen?</td>
                        <td>
                          @if($est_id[$i] -> sin_regimen)
                            Si
                          @else
                            No
                          @endif
                        </td>
                      </tr>
                      <tr>
                        <td>Cumple con la LOTTT?</td>
                        <td>
                          @if($est_id[$i] -> ley_trabajo)
                            Posee
                          @else
                            No Posee
                          @endif
                        </td>
                      </tr>
                      <tr>
                        <td>Posee contrato colectivo?</td>
                        <td>
                          @if($est_id[$i] -> con_colectivo)
                            Posee
                          @else
                            No Posee
                          @endif
                        </td>
                      </tr>
                      <tr>
                        <td>Cumple con todos los beneficios?</td>
                        <td>
                          @if($est_id[$i] -> tod_beneficio)
                            Si
                          @else
                            No
                          @endif
                        </td>
                      </tr>
                      <tr>
                        <td>Origen de los recursos:</td>
                        <td>{{$est_id[$i]->orig_recursos}}</td>
                      </tr>
                    </table>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="card border-secondary mb-3" style="max-width: 200rem;">
                <div class="card-header"><h5>DOCUMENTOS CONSIGNADOS</h5></div>
                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover">
                      <tr>
                        <td>RIF:</td>
                        <td>
                          @if($est_id[$i] ['doc_rif'])
                            consignado
                          @else
                            No consignado
                          @endif
                        </td>
                      </tr>
                      <tr>
                        <td>Acta de convención colectiva:</td>
                        <td>
                          @if($est_id[$i] -> doc_conv_colectiva)
                            consignado
                          @else
                            No consignado
                          @endif
                        </td>
                      </tr>
                      <tr>
                        <td>Acta Constitutiva:</td>
                        <td>
                          @if($est_id[$i] -> doc_acta_constitutiva)
                            consignado
                          @else
                            No consignado
                          @endif 
                        </td>
                      </tr>
                      <tr>
                        <td>Resolución:</td>
                        <td>
                          @if($est_id[$i] -> doc_resolucion)
                            consignado
                          @else
                            No consignado
                          @endif
                        </td>
                      </tr>
                      <tr>
                        <td>Decreto 1440:</td>
                        <td>
                          @if($est_id[$i] -> doc_decreto1440)
                            consignado
                          @else
                            No consignado
                          @endif
                        </td>
                      </tr>
                        <td>Respaldo Digital:</td>
                        <td>
                          @if($est_id[$i] -> doc_digital)
                            consignado
                          @else
                            No consignado
                          @endif
                        </td>
                      </tr>
                        <td>Respaldo Fisico:</td>
                        <td>
                          @if($est_id[$i] -> doc_fisico)
                            consignado
                          @else
                            No consignado
                          @endif
                        </td>
                      </tr>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="card border-secondary mb-3" style="max-width: 200rem;">
              <div class="card-header"><h5>OBSERVACIONES</h5></div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-striped table-bordered table-hover">
                    {{$est_id[$i] -> observaciones}}
                  </table>
                </div>
              </div>
            </div>
          </div>

        @endif
      @endfor
    @endif
  </div>

  {{-- ---------------------- pestaña 3 sin novedad ---------------------- --}}
  <div class="tab-pane fade" id="Seguimiento">
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>Nº Control</th>
              <th>Fecha de envìo</th>
              <th>Fecha de respuesta</th>
              <th>Nº Exp. Supervisión</th>
              <th>Nº Oficio SiSS</th>
              <th>Nº Entrega</th>
              <th>Detalles</th>
            </tr>
          </thead>
          <tbody>
            @for ($i=0; $i<count($est_id); $i++)
             <tr>
                <td>{{$est_id[$i]->fec_envio}}.{{$est_id[$i]->id}}</td>
                <td>{{$est_id[$i] -> fec_envio}}</td>
                <td>{{$est_id[$i] -> fec_respuesta}}</td>
                <td>{{$est_id[$i] -> num_entrega}}</td>
                <td>{{$est_id[$i] -> num_oficio_siss}}</td>
                <td>{{$est_id[$i] -> num_exp_supervision}}</td>
                <td>
                  <div class="panel-body">
                    <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#myModal2"><i class="fas fa-fw fa-search"></i></button>
                    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                      <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title" id="myModalLabel">Seguimiento:<br>{{$institucion -> name}}</h5>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                          </div>
                          <div class="modal-body">
                            <div class="card border-dark mb-3" style="max-width: 200rem;">

                              <div class="card-header">
                                <h5>
                                  <button type="button">
                                    {{-- <a href={{asset("/estudio/agregar")}}> --}}
                                      <i class="fas fa-edit"></i>
                                    </a>
                                  </button>
                                  DATOS PRINCIPALES
                                </h5>
                              </div>
                              <div class="card-body">
                                <div class="table-responsive">
                                  <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                          <td>OFICI0</td>
                                          <td>FECHA DE ENVÍO</td>
                                          <td>FECHA DE RESPUESTA</td>
                                          <td>Nº DE ENTREGA</td>
                                          <td>Nº OFICIO SISS</td>
                                          <td>EXP. SUPERVISION</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                          <td>{{$est_id[$i]->fec_envio.$est_id[$i]->id}}</td>
                                          <td>{{$est_id[$i] -> fec_envio}}</td>
                                          <td>{{$est_id[$i] -> fec_respuesta}}</td>
                                          <td>{{$est_id[$i] -> num_entrega}}</td>
                                          <td>{{$est_id[$i] -> num_oficio_siss}}</td>
                                          <td>{{$est_id[$i] -> num_exp_supervision}}</td>
                                        </tr>
                                    </tbody>
                                  </table>
                                </div>
                              </div>
                            </div>

                            <div class="card border-dark mb-3" style="max-width: 200rem;">
                              <div class="card-header">
                                <h5>DATOS DE COTIZACION</h5>
                              </div>
                              <div class="card-body">
                                <div class="table-responsive">
                                  <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                      <tr>
                                        <td>Cotiza a la Tesorería de Seguridad Social?</td>
                                        <td>Cotiza al BANAVIH?</td>
                                        <td>Cotiza al IVSS?</td>
                                        <td>Porcentaje aportado por el trabajador</td>
                                        <td>Porcentaje aportado por el patrono</td>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      <tr>
                                        <td>
                                          @if($est_id[$i] -> cot_tesoro)
                                            Si
                                          @else
                                            No
                                          @endif
                                        </td>
                                        <td>
                                          @if($est_id[$i] -> cot_banavih)
                                            Si
                                          @else
                                            No
                                          @endif
                                        </td>
                                        <td>
                                          @if($est_id[$i] -> cot_ivss)
                                            Si
                                          @else
                                            No
                                          @endif
                                        </td>
                                        <td>{{$est_id[$i] -> aport_trabajador}}%</td>
                                        <td>{{$est_id[$i] -> aport_patron}}%</td>
                                      </tr>
                                    </tbody>
                                  </table>
                                </div>
                              </div>
                            </div>

                            <div class="card border-dark mb-3" style="max-width: 200rem;">
                              <div class="card-header"><h5>NOMINAS</h5>
                              </div>
                            </div>

                              <div class="form-row">
                                <div class="col-md-6">
                                  <div class="card border-dark mb-3" style="max-width: 200rem;">
                                    <div class="card-header"><h5>PERSONAL ACTIVO</h5></div>
                                    <div class="card-body">
                                      <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover">
                                          <thead>
                                            <tr>
                                              <td>Personal fijo</td>
                                              <td>Personal contratado</td>
                                              <td>Otros</td>
                                              <td>Total de nominas</td>
                                            </tr>
                                          </thead>
                                          <tbody>
                                          <tr>
                                            <td>{{$est_id[$i] -> fijos_act}}</td>
                                            <td>{{$est_id[$i] -> contratados_act}}</td>
                                            <td>{{$est_id[$i] -> otros_act}}</td>
                                            <td>{{$est_id[$i]->fijos_act + $est_id[$i]->contratados_act + $est_id[$i]->otros_act}}</td>
                                          </tr>
                                          </tbody>
                                        </table>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="col-md-6">
                                  <div class="card border-dark mb-3" style="max-width: 200rem;">
                                    <div class="card-header"><h5>PERSONAL JUBILADO</h5></div>
                                    <div class="card-body">
                                      <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover">
                                          <thead>
                                            <tr>
                                              <td>Mjeres jubiladas</td>
                                              <td>Hombres jubilados</td>
                                              <td>Monto anual de la nomina</td>
                                            </tr>
                                          </thead>
                                          <tbody>
                                            <tr>
                                              <td>{{$est_id[$i] -> jubiladas}}</td>
                                              <td>{{$est_id[$i] -> jubilados}}</td>
                                              <td>Bs. {{$est_id[$i] -> jubilados_bs_anual}}</td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="form-row">
                                <div class="col-md-6">
                                  <div class="card border-dark mb-3" style="max-width: 200rem;">
                                    <div class="card-header"><h5>PENSIONADOS POR INCAPACIDAD</h5></div>
                                    <div class="card-body">
                                      <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover">
                                          <thead>
                                            <tr>
                                              <td>mujeres pensionadas</td>
                                              <td>Hombres pensionados</td>
                                              <td>Monto anual de la nomina</td>
                                            </tr>
                                          </thead>
                                          <tbody>
                                            <tr>
                                              <td>{{$est_id[$i] -> pensionadas_i}}</td>
                                              <td>{{$est_id[$i] -> pensionados_i}}</td>
                                              <td>Bs. {{$est_id[$i] -> pensionados_i_bs_anual}}</td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="col-md-6">
                                  <div class="card border-dark mb-3" style="max-width: 200rem;">
                                    <div class="card-header"><h5>PENSIONADOS POR SOBREVIVIENTE</h5></div>
                                    <div class="card-body">
                                      <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover">
                                          <thead>
                                            <tr>
                                              <td>Mujeres pensionadas</td>
                                              <td>Hombres pensionados</td>
                                              <td>Monto anual de la nomina</td>
                                            </tr>
                                          </thead>
                                          <tbody>
                                            <tr>
                                              <td>{{$est_id[$i] -> pensionadas_s}}</td>
                                              <td>{{$est_id[$i] -> pensionados_s}}</td>
                                              <td>Bs. {{$est_id[$i] -> pensionados_s_bs_anual}}</td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>

                            <div class="form-row">
                              <div class="col-md-6">
                                <div class="card border-dark mb-3" style="max-width: 200rem;">
                                  <div class="card-header"><h5>REGIMENES</h5></div>
                                  <div class="card-body">
                                    <div class="table-responsive">
                                      <table class="table table-striped table-bordered table-hover">
                                        <tr>
                                          <td>Posee regimen especial?</td>
                                          <td>
                                            @if($est_id[$i]->reg_especial === true)
                                              Posee
                                            @else
                                              No Posee
                                            @endif
                                          </td>
                                        </tr>
                                        <tr>
                                          <td>Posee decreto 1440?</td>
                                          <td>
                                            @if($est_id[$i] -> dec_1440)
                                              Posee
                                            @else
                                              No Posee
                                            @endif
                                          </td>
                                        </tr>
                                        <tr>
                                          <td>No posee regimen?</td>
                                          <td>
                                            @if($est_id[$i] -> sin_regimen)
                                              Si
                                            @else
                                              No
                                            @endif
                                          </td>
                                        </tr>
                                        <tr>
                                          <td>Cumple con la LOTTT?</td>
                                          <td>
                                            @if($est_id[$i] -> ley_trabajo)
                                              Posee
                                            @else
                                              No Posee
                                            @endif
                                          </td>
                                        </tr>
                                        <tr>
                                          <td>Posee contrato colectivo?</td>
                                          <td>
                                            @if($est_id[$i] -> con_colectivo)
                                              Posee
                                            @else
                                              No Posee
                                            @endif
                                          </td>
                                        </tr>
                                        <tr>
                                          <td>Cumple con todos los beneficios?</td>
                                          <td>
                                            @if($est_id[$i] -> tod_beneficio)
                                              Si
                                            @else
                                              No
                                            @endif
                                          </td>
                                        </tr>
                                        <tr>
                                          <td>Origen de los recursos:</td>
                                          <td>{{$est_id[$i]->orig_recursos}}</td>
                                        </tr>
                                      </table>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="col-md-6">
                                <div class="card border-dark mb-3" style="max-width: 200rem;">
                                  <div class="card-header"><h5>DOCUMENTOS</h5></div>
                                  <div class="card-body">
                                    <div class="table-responsive">
                                      <table class="table table-striped table-bordered table-hover">
                                        <tr>
                                          <td>RIF:</td>
                                          <td>
                                            @if($est_id[$i] ['doc_rif'])
                                              consignado
                                            @else
                                              No consignado
                                            @endif
                                          </td>
                                        </tr>
                                        <tr>
                                          <td>Convencion Colectiva:</td>
                                          <td>
                                            @if($est_id[$i] -> doc_conv_colectiva)
                                              consignado
                                            @else
                                              No consignado
                                            @endif
                                          </td>
                                        </tr>
                                        <tr>
                                          <td>Acta Constitutiva:</td>
                                          <td>
                                            @if($est_id[$i] -> doc_acta_constitutiva)
                                              consignado
                                            @else
                                              No consignado
                                            @endif 
                                          </td>
                                        </tr>
                                        <tr>
                                          <td>Resolucion:</td>
                                          <td>
                                            @if($est_id[$i] -> doc_resolucion)
                                              consignado
                                            @else
                                              No consignado
                                            @endif
                                          </td>
                                        </tr>
                                        <tr>
                                          <td>Decreto 1440:</td>
                                          <td>
                                            @if($est_id[$i] -> doc_decreto1440)
                                              consignado
                                            @else
                                              No consignado
                                            @endif
                                          </td>
                                        </tr>
                                          <td>Respaldo Digital:</td>
                                          <td>
                                            @if($est_id[$i] -> doc_digital)
                                              consignado
                                            @else
                                              No consignado
                                            @endif
                                          </td>
                                        </tr>
                                          <td>Respaldo Fisico:</td>
                                          <td>
                                            @if($est_id[$i] -> doc_fisico)
                                              consignado
                                            @else
                                              No consignado
                                            @endif
                                          </td>
                                        </tr>
                                      </table>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <div class="form-group">
                              <div class="card border-dark mb-3" style="max-width: 200rem;">
                                <div class="card-header"><h5>OBSERVACIONES</h5></div>
                                <div class="card-body">
                                  <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover">
                                      {{$est_id[$i] -> observaciones}}
                                    </table>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </td>
              </tr>
            @endfor
          </tbody>
        </table>
      </div>
    </div>
  </div>

  {{-- ---------------------- pestaña 4 ---------------------- --}}
    <div class="tab-pane fade" id="Responsable">
      @if (empty($resp[0] -> id))
        @can('create user')
          <div class="alert alert-warning">
            Esta institucion no posee un responsable,
            <a href="{{url('responsable+', ['idinst' => $institucion->id])}}">Agregar!</a>.
          </div>
        @endcan
      @else
    <div class="d-flex flex-row-reverse">
        @can('create user')
            <a href="{{url('responsables+', ['idinst' => $institucion->id])}}">
            <input type="submit" value="Nuevo" class="btn btn-outline-primary"></a>
        @endcan        
    </div>
        <div class="card border-dark mb-3" style="max-width: 200rem;">
          <div class="card-header"><h5>DATOS PRINCIPALES</h5></div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th>Nº Cédula</th>
                    <th>Nombres</th>
                    <th>Apellidos</th>
                    <th>Cargo </th>
                    <th>Departamento</th>
                    <th>Nº Teléfonico</th>
                    <th>Email</th>
                    <th>Status</th>
                    <th>Acciones</th>
                  </tr>
                </thead>
                <tbody>
                  @for ($i=0; $i<count($resp); $i++)
                    <tr>
                      <td>{{$resp[$i]-> cedula}}</td>
                      <td>{{$resp[$i]-> name1}} {{$resp[$i]-> name2}}</td>
                      <td>{{$resp[$i]-> lastname1}} {{$resp[$i]-> lastname2}}</td>
                      <td>{{$resp[$i]-> cargo}}</td>
                      <td>{{$resp[$i]-> dpto}}</td>
                      <td>{{$resp[$i]-> tlf}}</td>
                      <td>{{$resp[$i]-> email_r}}</td>
                      <td>
                        @if($resp[$i]-> status=== true)
                          Activo
                        @else
                          No Activo
                        @endif
                      </td>
                      <td>
                        @can('edit user')
                          <a href="{{url('responsables/'.$resp[$i]->id.'/edit')}}" class="btn btn-outline-secondary">Editar</a>
                        @endcan
                        @can('delete user')
                          <a href="{{url('responsables/'.$resp[$i]->id.'/edit')}}" class="btn btn-outline-warning">Eliminar</a>
                        @endcan
                      </td>
                    </tr>
                  @endfor
                </tbody>
              </table>
            </div>
          </div>
        </div>
      @endif
    </div>
  {{-- ---------------------- fin ---------------------- --}}
</div>
@endsection
{{-- 
<button type="button" class="btn btn-outline-primary">Agregar</button>
<button type="button" class="btn btn-outline-secondary">Editar</button>
<button type="button" class="btn btn-outline-success">Actualizar</button>
<button type="button" class="btn btn-outline-info">Info</button>
<button type="button" class="btn btn-outline-warning">Warning</button>
<button type="button" class="btn btn-outline-danger">Eliminar</button>
 --}}