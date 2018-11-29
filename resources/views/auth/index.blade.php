@extends('f413.layouts.main')
@section('title')
	Usuarios
@endsection
@section('content')
<!-- Breadcrumbs-->
<ol class="breadcrumb">
    <li class="breadcrumb-item">
        <a href={{asset("/")}}>Inicio</a>
    </li>
</ol>
<!-- DataTables -->
        <div class="card border-dark mb-3" style="max-width: 200rem;">
          <div class="card-header"><h5>DATOS PRINCIPALES</h5></div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th>CEDULA</th>
                    <th>NOMBRES</th>
                    <th>APELLIDOS</th>
                    <th>Nº TELEFONICO</th>
                    <th>EMAIL</th>
                    <th>STATUS</th>
                  </tr>
                </thead>
                <tbody>
                	@foreach ($users as $user)
                    <tr>
                      <td>{{$user-> cedula}}</td>
                      <td>{{$user-> name1}} {{$user-> name2}}</td>
                      <td>{{$user-> lastname1}} {{$user-> lastname2}}</td>
                      <td>{{$user-> tlf}}</td>
                      <td>{{$user-> email}}</td>
                    </tr>
                  @endforeach
                </tbody>
              </table>
            </div>
          </div>
        </div>
@endsection