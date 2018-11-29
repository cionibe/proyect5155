<form action="{{ route('usuarios.destroy',$usuario->id) }}" method="post" style="display: inline-block;">
	{{ method_field('DELETE') }}
	{{ csrf_field() }}
	<button type="submit" class="btn btn-outline-warning">Eliminar</button>
</form>
