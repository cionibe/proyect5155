@extends('f413.pdf.layout')
@section('content')

<img src={{asset("vendor/13/siss.png")}} alt="Logotipo de HTML5" width="128" height="64">
<h5>INSTITUCIONES CON SUS NOMINAS DE PERSONAL ACTIVO</h5>
	@for ($i=0; $i<count($instituciones); $i++)
		@for ($j=0; $j<count($est_id); $j++)
			@if ($instituciones[$i] -> id == $est_id[$j] -> institucion_id)

	            <h5>Periodo:</h5>{{$est_id[$j] -> fec_envio}} al {{$est_id[$j] -> fec_respuesta}}
	            <div class="table-responsive">
	              <table class="table table-striped table-bordered table-hover" width="100%" cellspacing="0">
		          <thead>
		            <tr>
			            <th>ID</th>
			            <th>ACRONIMO</th>
			            <th>NOMBRE</th>
			            <th>RIF</th>
		            </tr>
		          </thead>
		          <tbody>
		              <tr>
		                <td>{{$instituciones[$i] -> id}}</td>
		                <td>{{$instituciones[$i] -> acronimo}}</td>
		                <td>{{$instituciones[$i] -> name}}</td>
		                <td>{{$instituciones[$i] -> _rif}}-{{$instituciones[$i] -> rif}}</td>
		              </tr>
		          </tbody>
		          </table>
	            </div>
	            <div class="table-responsive">
	              <table class="table table-striped table-bordered table-hover" width="100%" cellspacing="0">
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
                            <td>{{$est_id[$j] -> fijos_act}}</td>
                            <td>{{$est_id[$j] -> contratados_act}}</td>
                            <td>{{$est_id[$j] -> otros_act}}</td>
                            <td>{{$est_id[$j] -> nomina_adic}}</td>
                            <td>{{
                                $est_id[$j] -> fijos_act + 
                                $est_id[$j] -> contratados_act + 
                                $est_id[$j] -> otros_act
                                }}
                            </td>
                          </tr>
                        </tbody>

	
	              </table>
	            </div>
			@endif
		@endfor
	@endfor
@endsection
{{-- 
	@for ($i=0; $i<count($instituciones); $i++)
		@for ($j=0; $j<count($est_id); $j++)

			@if ($instituciones[$i] -> id == $est_id[$j] -> institucion_id)
				en hora buena {{ $instituciones[$i] -> id}} =={{ $est_id[$j] -> institucion_id}}<br>
			@endif
		@endfor
	@endfor
 --}}