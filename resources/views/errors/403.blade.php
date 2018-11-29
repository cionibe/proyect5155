@extends('f413.layouts.main')
@section('title')
	403
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

<div class="error-page">
  <h1 class="display-3">403</h1>
  <h3><i class="fa fa-warning text-yellow"></i>Oops! Acceso no autorizado.</h3>
  <hr class="my-4">
  <p>Regresar al <a href={{asset("/")}}>Inicio</a></p>
</div>

@endsection