<?php

namespace App\Http\Controllers\f413;

use Barryvdh\DomPDF\Facade as PDF;

use Carbon\Carbon;


use App\User;
use App\Responsable;
use App\Estudio;
use App\Institucion;
use App\Http\Requests\EstudioRequest;
use App\Http\Requests\InstitucionStoreRequest;
use App\Http\Requests\InstitucionUpdateRequest;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

class InstitucionController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function welcome()
    {   
        // $usuario = User::all();
        // return view('f413.index',compact('usuario'));

        $user = Auth::user();
        $usuarios = User::all();
        $rol = $user -> roles -> implode('name',',');

        switch ($rol) 
        {
            case 'root':
                $saludo = 'Bienvenido Root';
                return view('f413.index',compact('usuarios','saludo','user'));
                break;

            case 'capa8':
                $saludo = 'Bienvenido Usuario';
                return view('f413.index',compact('usuarios','saludo','user'));
                break;

            case 'invitado':
                $saludo = 'Bienvenido Invitado';
                return view('f413.index',compact('usuarios','saludo','user'));
                break;
        }
    }

    public function index()
    {
        $instituciones = Institucion::all();
        return view('f413/instituciones/index',compact('instituciones'));
    }

    public function create()
    {
	    $institucion = Institucion::all();
	    return view('f413/instituciones/create', compact('institucion'));
    }

	public function store(InstitucionStoreRequest $request)
	{
		Institucion::create(request()->all());
		return redirect('instituciones');
	}

    public function show($id)
    {
        $tst = Estudio::all();
        $estudio = Estudio::find($id);
        $institucion = Institucion::find($id);
        $est_id = Estudio::leftjoin("instituciones","estudios.institucion_id","=","instituciones.id")
                    ->where('estudios.institucion_id','=',"$id")
                    ->get();
        $resp = Responsable::leftjoin("instituciones","responsables.institucion_id","=","instituciones.id")
        		->where('responsables.institucion_id','=',"$id")
        		->get();
        $i=0;
        $j=0;


        # la fecha actual se obtiene con :
        # $fecha_actual es una instancia de Carbon, por lo que puedes formatearla según tus necesidades. Por ejemplo:

        // $month = $fecha_actual->format('m');
        // $day = $fecha_actual->format('d');
        // $year = $fecha_actual->format('Y');
        // $date = $fecha_actual->format('Y-m-d');

        // //o hacer algo como:
        // $datetime = $fecha_actual->toDateTimeString();


        $fecha_actual = Carbon::now();

        $mes_actual = $fecha_actual->format('m');

        

// $a = $est_id[0] -> fec_envio;
//     // $b = (array) $a;
// $c = (int) $a;
// dd($c);

    	return view('f413/instituciones/show',compact('institucion','est_id','resp','i','j','mes_actual'));
    }

    public function edit($id)
    {
        $institucion = Institucion::findOrFail($id);
        return view('f413.instituciones.edit',compact('institucion'));
    }

    public function update(InstitucionUpdateRequest $request, $id)
    {
        $institucion = Institucion::findOrFail($id);
        $institucion->fill($request->all())->save();
        return redirect('instituciones');
    }
    // public function edit($id)
    // {
    //     $institucion = Institucion::find($id);
    //     return view('f413/instituciones/edit',compact('institucion'));
    // }

    // public function update(InstitucionUpdateRequest $request, $id)
    // {
    //     $institucion = Institucion::find($id);
    //     $institucion->fill($request->all())->save();
    //     // return view('f413/instituciones/show',compact('institucion','estudio','est_id','resp','i','j'));
    //     return redirect('instituciones');
    // }

    public function pdf_nomina()
    {
        $est_id = Estudio::all();
        $instituciones = Institucion::all();
        $pdf = PDF::loadView('f413/pdf/nominas', compact('instituciones','est_id'));
        return $pdf -> stream('nominas.pdf');//$pdf->download('listado.pdf');

    }
    public function pdf_jubilados()
    {
        $est_id = Estudio::all();
        $instituciones = Institucion::all();
        $pdf = PDF::loadView('f413/pdf/jubilados', compact('instituciones','est_id'));
        return $pdf -> stream('jubilados.pdf');

    }
    public function pdf_pensionados()
    {
        $est_id = Estudio::all();
        $instituciones = Institucion::all();
        $pdf = PDF::loadView('f413/pdf/pensionados', compact('instituciones','est_id'));
        return $pdf -> stream('pensionados.pdf');//$pdf->download('listado.pdf');

    }

    public function destroy($id)
    {
        //
    }

   //  public function municipios()
   // {
   //      $estados_id=Input::get('estado_id');
   //      $municipios=Municipio::where('estado_id','=',$estados_id)->get();
   //      return response()->json($municipios);
   //  }




}

// esto trae todas las instituciones con casos de estudios, con sus respectivos casos de estudios
// $ce2=Institucion::with('casosdeestudios')
//                     ->Join('casos_estudios', 'casos_estudios.institucion_id', '=', 'instituciones.id')
//                     ->select('public.instituciones.*')
//                     ->groupBy('public.instituciones.id')
//                     ->get();
//
// $aux_id = $id;         //-----funciona igual que $ce_iid---------//
// $sql_ce_id = "select * from casos_estudios 
//               left join instituciones ON institucion_id = instituciones.id 
//               where institucion_id = '$aux_id'";    
// DB::select($sql_ce_id);
// $ce_id = DB::select($sql_ce_id);
// $caso_e = (object)$ce_id;