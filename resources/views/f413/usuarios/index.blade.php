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
    <div class="d-flex flex-row-reverse">
        @can('create user')
            <a href="{{url('/usuarios/create')}}" class="btn btn-outline-primary">Nuevo</a>
        @endcan        
    </div>
  <div class="table-responsive">
    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
      <thead>
        <tr>
            <th>ID</th>
            <th>CEDULA</th>
            <th>PRIVILEGIO</th>
            <th>APELLIDOS</th>
            <th>NOMBRES</th>
            <th>TELEFONO</th>
            <th>EMAIL</th>
            <th>ACCIONES</th>
        </tr>
      </thead>
      <tfoot>
        <tr>
            <th>ID</th>
            <th>CEDULA</th>
            <th>PRIVILEGIO</th>
            <th>APELLIDOS</th>
            <th>NOMBRES</th>
            <th>TELEFONO</th>
            <th>EMAIL</th>
            <th>ACCIONES</th>
        </tr>
      </tfoot>
      <tbody>
        @foreach ($usuarios as $usuario)
        <tr>
            <td>{{ $usuario -> id}}</td>   
            <td>{{ $usuario -> cedula}}</td> 
            <td>{{ $usuario -> roles -> implode('name',',')}}</td>
            <td>{{ $usuario -> lastname1}} {{ $usuario -> lastname2}}</td>
            <td>{{ $usuario -> name1}} {{ $usuario -> name2}}</td>
            <td>{{ $usuario -> tlf}}</td>
            <td>{{ $usuario -> email}}</td>
            <td>
                @can('edit user')
                    <a href="{{url('usuarios/'.$usuario->id.'/edit')}}" class="btn btn-outline-secondary">Editar</a>
                @endcan
                @can('delete user')
                    @include('f413.usuarios.delete',['usuario'=>$usuario])
                    {{-- <a href="{{url('usuarios/'.$usuario->id.'/edit')}}" class="btn btn-outline-warning">Eliminar</a> --}}
                @endcan
            </td>
        </tr>
        @endforeach
      </tbody>
    </table>
  </div>
</div>
@endsection