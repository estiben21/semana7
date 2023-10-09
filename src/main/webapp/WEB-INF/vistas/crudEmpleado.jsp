<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script type="text/javascript" src="js/global.js"></script>

<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>
<title>Ejemplos de CIBERTEC - Jorge Jacinto </title>
</head>
<body>
 <div class="container">  
 <h3>Crud de Empleado</h3>
 
 <div class="row" >  
		   <div class="row" style="height: 70px">
				<div class="col-md-2" >
						<input class="form-control" id="id_txt_filtro"  name="filtro" placeholder="Ingrese el nombre" type="text" maxlength="30"/>
				</div>
				<div class="col-md-2" >
					<button type="button" class="btn btn-primary" id="id_btn_filtrar" style="width: 150px">FILTRA</button>
				</div>
				<div class="col-md-2">
					<button type="button" data-toggle='modal'  data-target="#id_div_modal_registra"  class='btn btn-success' style="width: 150px">REGISTRA</button>
				</div>
			</div>
			<div class="row" > 
				<div class="col-md-12">
						<div class="content" >
							<table id="id_table" class="table table-striped table-bordered" >
								<thead>
									<tr>
										<th style="width: 5%">Código</th>
										<th style="width: 20%">Nombres</th>
										<th style="width: 20%">Apellidos</th>
										<th style="width: 15%">F.Nacimiento</th>
										<th style="width: 20%">País</th>
										<th style="width: 10%">Actualiza</th>
										<th style="width: 10%">Elimina</th>
									</tr>
								</thead>
									<tbody>
									</tbody>
								</table>
						</div>	
				</div>
			</div>
</div>
</div>

  	 <div class="modal fade" id="id_div_modal_registra" >
			<div class="modal-dialog" style="width: 60%">
		
				<!-- Modal content-->
				<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Registro de Empleado</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
						<form id="id_form_registra" accept-charset="UTF-8" action="registraActualizaCrudModalidad" class="form-horizontal"     method="post">
		                    <div class="panel-group" id="steps">
		                        <!-- Step 1 -->
		                        <div class="panel panel-default">
		                            <div class="panel-heading">
		                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos de Empleado</a></h4>
		                            </div>
		                            <div id="stepOne" class="panel-collapse collapse in">
		                                <div class="panel-body">
		                                     <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_nombres">Nombres</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_reg_nombres" name="nombres" placeholder="Ingrese el nombre" type="text" maxlength="40"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_apellidos">Apellidos</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_reg_apellidos" name="apellidos" placeholder="Ingrese el apellidos" type="text" maxlength="40"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_fecha_nacimiento">F.Nacimiento</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_reg_fecha_nacimiento" name="fechaNacimiento" type="date"/>
		                                        </div>
		                                    </div>		   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_pais">País</label>
		                                        <div class="col-lg-3">
													 <select id="id_reg_pais" name="pais" class='form-control'>
							                            	<option value=" ">[Seleccione]</option>    
							                         </select>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <div class="col-lg-9 col-lg-offset-3">
		                                        	<button type="button" class="btn btn-primary" id="id_btn_registra">REGISTRA</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        
		                    </div>
		                </form>   
				
				</div>
			</div>
		</div>
			
		</div>
		
		<div class="modal fade" id="id_div_modal_actualiza" >
			<div class="modal-dialog" style="width: 60%">
		
				<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Actualiza Empleado</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
						<form id="id_form_actualiza" accept-charset="UTF-8"  action="registraActualizaCrudEmpleado" class="form-horizontal"     method="post">
		                    <div class="panel-group" id="steps">
		                        <!-- Step 1 -->
		                        <div class="panel panel-default">
		                            <div class="panel-heading">
		                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos de Empleado</a></h4>
		                            </div>
		                            <div id="stepOne" class="panel-collapse collapse in">
		                                <div class="panel-body">
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_ID">ID</label>
		                                        <div class="col-lg-8">
		                                           <input class="form-control" id="id_ID" readonly="readonly" name="idEmpleado" type="text" maxlength="8"/>
		                                        </div>
		                                     </div>
		                                     <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_nombres">Nombre</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_act_nombres" name="nombres" placeholder="Ingrese el Nombre" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_apellidos">Apellidos</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_act_apellidos" name="apellidos" placeholder="Ingrese el apellidos" type="text" maxlength="40"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_fechaNacimiento">Fecha de Nacimiento</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_act_fechaNacimiento" name="fechaNacimiento" placeholder="Ingrese la fecha de Nacimiento" type="date" maxlength="100"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_pais">Pais</label>
		                                        <div class="col-lg-3">
													<select id="id_act_pais" name="pais" class='form-control'>
							                            	<option value=" ">[Seleccione]</option>    
							                         </select>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <div class="col-lg-9 col-lg-offset-3">
		                                        	<button type="button" class="btn btn-primary" id="id_btn_actualiza">ACTUALIZA</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        </div>

		                </form>   
				
				</div>
			</div>
		</div>
			
		</div>


<script type="text/javascript">
$.getJSON("listaPais", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_pais").append("<option value="+item.idPais +">"+ item.nombre +"</option>");
		$("#id_act_pais").append("<option value="+item.idPais +">"+ item.nombre +"</option>");
	});
});

$(document).ready(function() {
	$.getJSON("consultaCrudEmpleado",{"filtro":""}, function (lista){
		agregarGrilla(lista);
	});
});

$("#id_btn_filtrar").click(function(){
	var fil=$("#id_txt_filtro").val();
	$.getJSON("consultaCrudEmpleado",{"filtro":fil}, function (lista){
		agregarGrilla(lista);
	});
});


function agregarGrilla(lista){
	 $('#id_table').DataTable().clear();
	 $('#id_table').DataTable().destroy();
	 $('#id_table').DataTable({
			data: lista,
			searching: false,
			ordering: true,
			processing: true,
			pageLength: 5,
			lengthChange: false,
			columns:[
				{data: "idEmpleado"},
				{data: "nombres"},
				{data: "apellidos"},
				{data: "fechaNacimiento"},
				{data: "pais.nombre"},
				{data: function(row, type, val, meta){
					var salida='<button type="button" style="width: 90px" class="btn btn-info btn-sm" onclick="editar(\''+row.idEmpleado + '\',\'' + row.nombres +'\',\'' + row.apellidos  +'\',\'' + row.fechaNacimiento + '\',\'' + row.pais.idPais + '\')">Editar</button>';
					return salida;
				},className:'text-center'},	
				{data: function(row, type, val, meta){
				    var salida='<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="accionEliminar(\'' + row.idEmpleado + '\')">'+ (row.estado == 1? 'Activo':'Inactvo') +  '</button>';
					return salida;
				},className:'text-center'},													
			]                                     
	    });
}

function accionEliminar(id){	
    $.ajax({
          type: "POST",
          url: "eliminaCrudEmpleado", 
          data: {"id":id},
          success: function(data){
        	  agregarGrilla(data.lista);
          },
          error: function(){
        	  mostrarMensaje(MSG_ERROR);
          }
     });
}

function editar(id,nombres,apellidos,fechaNacimiento,idPais){	
	$('#id_ID').val(id);
	$('#id_act_nombres').val(nombres);
	$('#id_act_apellidos').val(apellidos);
	$('#id_act_fechaNacimiento').val(fechaNacimiento);
	$('#id_act_pais').val(idPais);
	$('#id_div_modal_actualiza').modal("show");
}

$("#id_btn_registra").click(function(){
	var validator = $('#id_form_registra').data('bootstrapValidator');
    validator.validate();
	
    if (validator.isValid()) {
        $.ajax({
          type: "POST",
          url: "registraCrudEmpleado", 
          data: $('#id_form_registra').serialize(),
          success: function(data){
        	  agregarGrilla(data.lista);
        	  $('#id_div_modal_registra').modal("hide");
        	  mostrarMensaje(data.mensaje);
        	  limpiarFormulario();
        	  validator.resetForm();
          },
          error: function(){
        	  mostrarMensaje(MSG_ERROR);
          }
        });
        
    }
});

$("#id_btn_actualiza").click(function(){
	var validator = $('#id_form_actualiza').data('bootstrapValidator');
    validator.validate();
    if (validator.isValid()) {
        $.ajax({
          type: "POST",
          url: "actualizaCrudEmpleado", 
          data: $('#id_form_actualiza').serialize(),
          success: function(data){
        	  agregarGrilla(data.lista);
        	  $('#id_div_modal_actualiza').modal("hide");
        	  mostrarMensaje(data.mensaje);
          },
          error: function(){
        	  mostrarMensaje(MSG_ERROR);
          }
        });
    }
});

function limpiarFormulario(){	
	$('#id_reg_nombres').val('');
	$('#id_reg_apellidos').val('');
	$('#id_reg_fecha_nacimiento').val('');
	$('#id_reg_pais').val(' ');
}

$('#id_form_registra').bootstrapValidator({
    message: 'This value is not valid',
    feedbackIcons: {
        valid: 'glyphicon glyphicon-ok',
        invalid: 'glyphicon glyphicon-remove',
        validating: 'glyphicon glyphicon-refresh'
    },
    fields: {
    	"nombres": {
    		selector : '#id_reg_nombres',
            validators: {
                notEmpty: {
                    message: 'El nombre es un campo obligatorio'
                },
                stringLength :{
                	message:'El nombre es de 3 a 100 caracteres',
                	min : 3,
                	max : 100
                }
            }
        },
        "apellidos": {
    		selector : '#id_reg_apellidos',
            validators: {
                notEmpty: {
                    message: 'El apellido es un campo obligatorio'
                },
                stringLength :{
                	message: 'El apellido es de 3 a 100 caracteres',
                	min : 3,
                	max : 100
                }
            }
        },
        "fechaNacimiento": {
    		selector : '#id_reg_fecha_nacimiento',
            validators: {
            	notEmpty: {
                    message: 'La fecha de Nacimiento es un campo obligatorio'
                },
                remote :{
                	delay   : 1000,
                	url     : 'buscaEmpleadoMayorEdad',
                	message : 'El empleado debe ser mayor de edad'
                }
            }
        },
        "pais.idPais": {
    		selector : '#id_reg_pais',
            validators: {
            	notEmpty: {
                    message: 'El país un campo obligatorio'
                },
            }
        },
    	
    }   
});
</script>
<script type="text/javascript">
	$('#id_form_actualiza').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	"nombres": {
        		selector : '#id_act_nombres',
                validators: {
                    notEmpty: {
                        message: 'El nombre es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El nombre es de 5 a 100 caracteres',
                    	min : 5,
                    	max : 100
                    }
                }
            },
            "apellidos": {
        		selector : '#id_act_apellidos',
                validators: {
                    notEmpty: {
                        message: 'El apellido es un campo obligatorio'
                    },
                    stringLength :{
                    	message: 'El apellido es de 3 a 100 caracteres',
                    	min : 3,
                    	max : 100
                    }
                }
            },
            "fechaNacimiento":{
                selector: "#id_act_fechaNacimiento",
                validators:{
                    notEmpty: {
                         message: 'La fecha es obligatorio'
                    },
                    remote :{
                    	delay   : 1000,
                    	url     : 'buscaEmpleadoMayorEdad',
                    	message : 'El empleado debe ser mayor de edad'
                    }
                }
            },
            "pais.idPais": {
        		selector : '#id_act_pais',
                validators: {
                	notEmpty: {
                        message: 'El pais es un campo obligatorio'
                    },
                }
            },
          
        }   
    });
</script>
</body>
</html>