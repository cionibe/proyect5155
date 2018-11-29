<?php

namespace App\Http\Controllers\f413;

use App\Http\Requests\EstudioRequest;
use App\Estudio;
use App\Institucion;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
class EstudioController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function create($idinst)
    {

        $instituciones = Institucion::all();//->pluck('name','id');
        $estudio = Estudio::all();
        return view('f413/estudio/create', compact('instituciones','estudio','idinst','diasDiferencia'));
    }

    public function store(EstudioRequest $request)
    {
        Estudio::create(request()->all());
        return redirect('instituciones');
    }

    public function edit($id)
    {
        $estudio = Estudio::findOrFail($id);
        return view('f413/estudio/edit',compact('estudio'));
    }

    public function update(Request $request, $id)
    {
        $estudio = Estudio::findOrFail($id);
        $estudio->fill($request->all())->save();
        return redirect('instituciones');
    }
}


//             /******//******//******/
//             /***    ESTUDIO     ***/
//             /******//******//******/

//     public function create_study()
//     {
   
// // $id = DB :: table ('estudios')->insertGetId (['institucion_id' => $id]);
// // dd($id);

//         $instituciones = Institucion::all();
//         $estudio = Estudio::all();
//         return view('f413/estudio/create', compact('instituciones','estudio'));
//     }

//     public function store_study(EstudioRequest $request)
//     {
//         Estudio::create(request()->all());
//         return redirect('instituciones');
//     }

//     public function edit_study($id)
//     {
//         $estudio = Estudio::find($id);
//         return view('f413/estudio/edit',compact('estudio'));
//     }

//     public function update_study(Request $request, $id)
//     {
//         $estudio = Estudio::find($id);
//         $estudio->fill($request->all())->save();
//         return view('f413/instituciones/show',compact('estudio'));
//     }