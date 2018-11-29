<?php

namespace App\Http\Controllers\f413;

use App\Project;


use Carbon\Carbon;

use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;

use App\User;
use Spatie\Permission\Models\Role;
use App\Http\Requests\UserRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class UserController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $user = Auth::user();
        $rol = $user -> roles -> implode('name',',');
        $usuarios = User::all();

        return view('f413.usuarios.index',compact('usuarios'));
    }

    public function create()
    {
        $roles = Role::all()->pluck('name','id');
        $usuario = User::all();
        return view('f413/usuarios/create',compact('usuario','roles'));
    }

    // public function store(UserRequest $request)
    // {
    //     User::create(request()->all());
    //     return redirect('/usuarios');
    // }

    public function store(Request $request)
    {
        $this->validate($request, [
            'name1'     => 'required|alpha|string|min:3|max:255',
            'lastname1' => 'required|alpha|string|min:3|max:255',
            'cedula'    => 'numeric|required|digits_between:6,8|unique:users',
            'tlf'       => 'numeric|required|digits_between:11,11',
            'email'     => 'required|string|email|max:255|unique:users',
            'password'  => 'required|string|min:6|confirmed',
            'rol'       => 'required',
        ]);
        $usuario = new User;
        $usuario->name1     = $request->name1;
        $usuario->name2     = $request->name2;
        $usuario->lastname1 = $request->lastname1;
        $usuario->lastname2 = $request->lastname2;
        $usuario->cedula    = $request->cedula;
        $usuario->tlf       = $request->tlf;
        $usuario->email     = $request->email;
        $usuario->password  = bcrypt($request->password);

        if ($usuario->save()) 
        {
            $usuario->assignRole($request->rol);
        }
        return redirect('/usuarios');
    }

    public function edit($id)
    {
        $projects = Project::all();
        $user = User::findOrFail($id);



        $roles = Role::all()->pluck('name','id');
        $usuario = User::findOrFail($id);
        return view('f413.usuarios.edit',compact('usuario','roles','projects','user'));
    }

    public function update(Request $request, $id)
    {
        $usuario = User::findOrFail($id);
        $usuario->name1     = $request->name1;
        $usuario->lastname1 = $request->lastname1;
        $usuario->cedula    = $request->cedula;
        $usuario->tlf       = $request->tlf;
        $usuario->email     = $request->email;
        $usuario->password  = bcrypt($request->password);
        $usuario->assignRole($request->rol);

        $usuario->save();
        return redirect('/usuarios');
    }

    public function destroy($id)
    {
        $usuario = User::findOrFail($id);

        # eliminar el rol
        $usuario->removeRole($usuario->roles->implode('name',','));

        # eliminar usuario
        if ($usuario->delete())
        {
            return redirect('/usuarios');
        } 
        else 
        {
            return response()->json([
                'mensaje' => 'Error al eliminar el usuario'
            ]);
        }
        
    }
}
