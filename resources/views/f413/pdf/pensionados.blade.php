@extends('f413.pdf.layout')

@section('content')
<img src={{asset("vendor/13/siss.png")}} alt="Logotipo de HTML5" width="128" height="64">
<h5>INSTITUCIONES CON SUS NOMINAS DE PERSONAL PENSIONADOS</h5>
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
	  				<caption>PENSIONADOS POR INCAPACIDAD</caption>
	                <thead>
	                  <tr>
                        <td>Mujeres</td>
                        <td>Hombres</td>
                        <td>Total del personal</td>
                        <td>Monto anual</td>
                      </tr>
	                </thead>
	                <tbody>
	                  <tr>
	                    <td>{{$est_id[$j] -> pensionadas_i}}</td>
	                    <td>{{$est_id[$j] -> pensionados_i}}</td>
	                    <td>
	                    	{{
	                    		$est_id[$j] -> pensionadas_i +
	                    		$est_id[$j] -> pensionados_i
	                    	}}
	                    </td>
	                    <td>Bs. {{$est_id[$j] -> pensionados_i_bs_anual}}</td>
	                  </tr>
	                </tbody>
	              </table>
	            </div>
	            <div class="table-responsive">
	              <table class="table table-striped table-bordered table-hover" width="100%" cellspacing="0">
	  				<caption>PENSIONADOS POR SOBREVIVIENTE</caption>
	                <thead>
	                  <tr>
                        <td>Mujeres</td>
                        <td>Hombres</td>
                        <td>Total del personal</td>
                        <td>Monto anual</td>
                      </tr>
	                </thead>
	                <tbody>
	                  <tr>
	                    <td>{{$est_id[$j] -> pensionadas_s}}</td>
	                    <td>{{$est_id[$j] -> pensionados_s}}</td>
	                    <td>
	                    	{{
	                    		$est_id[$j] -> pensionadas_s +
	                    		$est_id[$j] -> pensionados_s
	                    	}}
	                    </td>
	                    <td>Bs. {{$est_id[$j] -> pensionados_s_bs_anual}}</td>
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