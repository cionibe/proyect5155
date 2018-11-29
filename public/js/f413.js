// function onSelectEstadoChange(){
// 	var estado_id = $(this).val();
// 	alert(estado_id);
// };
$('#estados').on('change', function(e){
  console.log(e);
  var estado_id = e.target.value;
  $.get('/json-estados?estado_id=' + estado_id,function(data) {
    console.log(data);
    $('#municipios').empty();
    $('#municipios').append('<option value="0" disable="true" selected="true">=== Select municipio===</option>');

    $.each(data, function(index, municipiosObj){
    $('#municipios').append('<option value="'+ municipiosObj.id +'">'+ municipiosObj.nombre +'</option>');
    })
  });
});