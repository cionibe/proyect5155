<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>@yield('title')</title>
  <!-- Bootstrap core CSS-->
  <link href={{asset("vendor/bootstrap/css/bootstrap.min.css")}} rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href={{asset("vendor/fontawesome-free/css/all.min.css")}} rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href={{asset("vendor/datatables/dataTables.bootstrap4.css")}} rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href={{asset("css/sb-admin.css")}} rel="stylesheet">
</head>

<body id="page-top">
  <nav class="navbar navbar-expand navbar-dark bg-dark static-top">
    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
      <i class="fas fa-bars"></i>
    </button>
    <a class="navbar-brand mr-1" href={{asset("/")}}><h6>Control y Gestión de Regimenes<br>Especiales de Jubilaciones y Pensiones</h6></a>
    <!-- Right Side Of Navbar -->
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0"></form>
    <ul class="nav navbar-nav navbar-right">
        <!-- Authentication Links -->
      @guest
        <li><a class="navbar-brand" href="{{ route('login') }}">Ingresar</a></li>
{{--         <li><a class="navbar-brand" href="{{ route('register') }}">Registrarse</a></li>
 --}}      @else
        <li class="dropdown">
          <a {{-- href="#" class="dropdown-toggle" data-toggle="dropdown" --}} role="button" aria-expanded="false" aria-haspopup="true" v-pre>
            {{ Auth::user()->name }}<span class="caret"></span>
          </a>
{{-- <ul class="dropdown-menu">  --}}
    <ul class="nav navbar-nav navbar-right">
             <li>
              <a class="navbar-brand" href="{{ route('logout') }}"onclick="event.preventDefault();
              document.getElementById('logout-form').submit();">
              Salir</a>

              <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                {{ csrf_field() }}
              </form>
            </li>
          </ul>
        </li>
      @endguest
    </ul>
  </nav>
  <div id="wrapper">


<!-- Sidebar -->

    <ul class="sidebar navbar-nav">     
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-industry"></i>
          <span>Instituciones</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
          <a class="dropdown-item" href={{asset("/instituciones")}}>
          <i class="fas fa-list"></i> Listar</a>
          <a class="dropdown-item" href="{{url('instituciones/create')}}">
          <i class="fas fa-folder-plus"></i> Institucion</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-fw fa-folder-plus"></i>
          <span>Reportes</span>
        </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <h6 class="dropdown-header"><strong>Personal:</strong></h6>
            <a href="{{ route('nominas.pdf') }}" class="dropdown-item">
            <i class="fas fa-paper-plane"></i> Activo</a>
            <a href="{{ route('jubilados.pdf') }}" class="dropdown-item">
            <i class="fas fa-paper-plane"></i> Jubilado</a>
            <a href="{{ route('pensionados.pdf') }}" class="dropdown-item">
            <i class="fas fa-paper-plane"></i> Pensionado</a>
          </div>
      </li>
      <li class="nav-item dropdown">
        @role('root')
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-fw fa-user"></i>
          <span>Usuarios</span>
        </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href={{url('usuarios')}}>
            <i class="fas fa-list"></i> Listar</a>
            <a class="dropdown-item" href="{{url('/usuarios/create')}}">
            <i class="fas fa-user-plus"></i> Agregar</a>
          </div>
        @else
        @endrole
      </li>
    </ul>

 
    <div id="content-wrapper">
      <div class="container-fluid">
        <!-- Page Content in-->
        @yield('content')
        <!-- Page Content out-->
      </div>
      <footer class="sticky-footer">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Superintendencia de Seguridad Social (0212-5978800) | <a href="http://www.siss.gob.ve/">www.siss.gob.ve</a></span>
          </div>
        </div>
      </footer>
    </div>
  </div>

<!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

<!-- Bootstrap core JavaScript-->
<script src={{asset("vendor/jquery/jquery.min.js")}}></script>
<script src={{asset("vendor/bootstrap/js/bootstrap.bundle.min.js")}}></script> 
<!-- Core plugin JavaScript-->
<script src={{asset("vendor/jquery-easing/jquery.easing.min.js")}}></script>
<!-- Custom scripts for all pages-->
<script src={{asset("js/sb-admin.min.js")}}></script>
<!-- Page level plugin JavaScript-->
<script src={{asset("vendor/datatables/jquery.dataTables.js")}}></script>
<script src={{asset("vendor/datatables/dataTables.bootstrap4.js")}}></script>
<!-- Demo scripts for this page-->
<script src={{asset("js/demo/datatables-demo.js")}}></script>


<script src={{asset("js/f413.js")}}></script>


</body>
</html>