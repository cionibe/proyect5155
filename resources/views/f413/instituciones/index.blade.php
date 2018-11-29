@extends('f413.layouts.main')
@section('title')
    Instituciones
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
<!-- DataTables -->
<div class="card-body">
  <div class="table-responsive">
    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
      <thead>
        <tr>
            <th>ID</th>
            <th>ACRONIMO</th>
            <th>NOMBRE</th>
            <th>RIF</th>
        </tr>
      </thead>
      <tfoot>
        <tr>
            <th>ID</th>
            <th>ACRONIMO</th>
            <th>NOMBRE</th>
            <th>RIF</th>
        </tr>
      </tfoot>
      <tbody>
        @foreach ($instituciones as $institucion)
        <tr>
            <td>
                <a href={{url('instituciones/'.$institucion->id)}}>
                {{ $institucion -> id}}</a>
            </td>   
            <td>
                <a href={{url('instituciones/'.$institucion->id)}}>
                {{ $institucion -> acronimo}}</a>
            </td>
            <td>
                <a href={{url('instituciones/'.$institucion->id)}}>
                {{ $institucion -> name}}</a>
            </td>
            <td>
                <a href={{url('instituciones/'.$institucion->id)}}>
                {{$institucion-> _rif}}-{{$institucion-> rif}}</a>
            </td>
        </tr>
        @endforeach
      </tbody>
    </table>
  </div>
</div>
@endsection