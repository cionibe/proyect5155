@extends('f413.layouts.main')

@section('title')

Control y Gestión de Regimenes Especiales de Jubilaciones y Pensiones

@endsection

@section('content')
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href={{asset("/")}}>Inicio</a></li>
		<li class="breadcrumb-item active"></li>
	</ol>

	<h1 class="page-head-line">
		Sistema de Supervision, Control y Seguimiento de Regimenes Prestacionales y Especiales de la {{config('app.name')}}
	</h1>
    <div class="alert alert-info">
    	<h3>{{$saludo}}: <a href="#" class="alert-link">{{$user->lastname1}} {{$user->name1}}</a></h3>
    </div>
	<div class="row">
		<div class="col-md-12">
			<div class="alert alert-info">
				<h1>Misión</h1>Proteger el sistema de seguridad social, a través de la vigilancia, supervisión y fiscalización de todo el sistema, con la finalidad de garantizar la universalidad, justicia y transparencia de los regímenes prestacionales, promoviendo la participación protagónica de los ciudadanos, para que se forme la cultura de seguridad social y el pueblo intendente.
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="alert alert-info">
				<h1>Visión</h1>Ser el órgano protector de la seguridad social, de vanguardia internacional; con un alto compromiso en la supervisión y fiscalización y con valores y principios de eficacia, eficiencia, confianza y transparencia, en el apoyo a la participación protagónica del pueblo intendente.
			</div>
		</div>
	</div>
@endsection
{{-- 
titulo del informe
<h1 class="page-head-line">Bienvenido al Sistema de Control y Gestión de Regimenes Especiales de Jubilaciones y Pensiones de la {{config('app.name')}}</h1> 
 --}}