// $(function() {
	
// 	$('#select-estado').on('change',onSelectEstadoChange);

// });

// function onSelectEstadoChange(){
// 	var estado_id = $(this).val();
// 	alert(estado_id);
// };

// $(function() {
// 	$('#select-estado').on('change',onSelectEstadoChange);
// });

// function onSelectEstadoChange(){
// 	var estado_id = $(this).val();

// 	$.get('/api/estado/'+estado_id+'/municipios', function(data){
// 		var html_select = '<option value="">---Municipio---</option>';
// 		for (var i=0; i<data.length; ++i)
// 			html_select += '<option value="'+data[i].id+'">'+data[i].nombre+'</option>';
// 		$('#select-municipio').html(html_select);
// 	});

// $(function() {
// 	$('#select-estado').on('change',onSelectEstadoChange);
// });

// function onSelectEstadoChange() {

// 	var estado_id = $(this).val();

// 	$.get('/api/estado/1/municipios', function(data){
// 		for (var i=0; i<data.length; ++i)
// 			console.log(data[i]);
// 	});
// }


// +++++++++++++++++++++++++++++

$('#select-estado').on('change', function(e){
	console.log(e);
    var estado_id = e.target.estado;
	$.get('/json-municipio?estado_id=' + estado_id,function(data) {
	  console.log(data);
	});
});

