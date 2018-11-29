<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
// use Illuminate\Support\FacadesInput;
use Illuminate\Support\Facades\Input;

use App\Provinces;
use App\Regencies;
use App\Districts;
use App\Villages;

// use App\Estados;    // use App\Provinces;
// use App\Municipios; // use App\Regencies;
// use App\Parroquias; // use App\Districts;
// use App\Villages;

class CountryController extends Controller
{
    public function provinces(){
      $provinces = Provinces::all();
// dd($provinces);
      return view('indonesia', compact('provinces'));
    }

    public function regencies(){
      // $provinces_id = Input::get('province_id');
      $provinces_id = Input::get('estado_id');
      // $regencies = Regencies::where('province_id', '=', $provinces_id)->get();
      $regencies = Regencies::where('estado_id', '=', $provinces_id)->get();

      return response()->json($regencies);
    }

    // public function districts(){
    //   // $regencies_id = Input::get('regencies_id');
    //   $regencies_id = Input::get('municipio_id');
    //   // $districts = Districts::where('regency_id', '=', $regencies_id)->get();
    //   $districts = Districts::where('municipio_id', '=', $regencies_id)->get();
    //   return response()->json($districts);
    // }

    // public function villages(){
    //   $districts_id = Input::get('districts_id');
    //   $villages = Villages::where('district_id', '=', $districts_id)->get();
    //   return response()->json($villages);
    // }
}
