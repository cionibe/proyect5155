<?php

namespace App\Http\Controllers\f413;

use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;

use App\Responsable;
use App\Institucion;

use App\Http\Requests\ResponsableRequest;
use App\Http\Controllers\Controller;

class ResponsableController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        //
    }

    public function create($idinst)
    {
      $responsable = Responsable::all();
      $instituciones = Institucion::all();
      return view('f413/responsables/create', compact('responsable','instituciones','idinst'));
    }
    
    public function store(ResponsableRequest $request)
    {
      Responsable::create(request()->all());
      return redirect('instituciones');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }
}
