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
    <div class="card-header"><h5>Responsable de la Institución</h5></div>
      <div class="card-body">
        <form action="{{url('responsables')}}" method="post" role="form">
            {{ csrf_field() }}
            @include('f413.responsables._form_responsable')
            <div class="d-flex flex-row-reverse">
              <button type="submit" class="btn-outline-primary">Agregar</button>
            </div>
        </form>
        </div>
    </div>
</div>
@endsection