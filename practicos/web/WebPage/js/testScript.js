//se crea una clase Aplicacion
class Aplicacion{
    constructor(){
        this.registro = [];
    }

    /*el modulo int va a conetener los eventos*/
    ini(){
        this.registroUsuario();
        this.mostrarRegistro();
        this.limpiarRegistro();
        this.cargarRegistro();
    }
    
    /*reistrar usuarios*/
    registroUsuario(){
        $("#btnEnviar").click(function (e) {//llamaos al boton en el index.html atraves de su identificador "btnEnviar"
            /*creamos las variables para registrar al usuario
            y llamamos a los input a traves de sus identificadores*/
            var identificadorIngreso = $("#idingreso").val();
            var contraseña = $("#clave").val();
            var correoElectronico = $("#email").val();
            var nombreCompleto = $("#nombre").val();
            var apellidoCompleto = $("#apellido").val();
            //var vgenero = $("#genero").val(); 
            var fechaNacimiento = $("#fnacimiento").val();
            var paisOrigen = $("#combpais").val();

            /* opcion de seleccion de genero*/
            var generoPersona = document.getElementsByName("genero");
            for(var i=0; i < generoPersona.length; i++){
                var generoSeleccionado = generoPersona[i];
                if(generoSeleccionado.cheked){
                    var generoElegido = generoSeleccionado.value;
                }
            }
            var generoPersona = generoElegido;

            var registroPersona = new Registro(identificadorIngreso,contraseña,correoElectronico,nombreCompleto,apellidoCompleto,generoPersona,fechaNacimiento,paisOrigen);

            app.registro.push(registroPersona);

            console.log(app.registro);
            alert("registro realizado");
        });
    }

    /**gestiona el registro de usuario*/
    gestionarRegistro(idingreso){
        var idbuscado = idingreso;
        for(var i=0; i<this.registro.length;i++){
            if(this.registro[i].idingreso == idbuscado){
                $("idIngreso").val(this.registro[i].idingreso);
                $("#idApellido").val(this.registro[i].apellido);
                $("#idNombre").val(this.registro[i].nombre);
                $("#idEmail").val(this.registro[i].email);
                $("#idGenero").val(this.registro[i].genero);
            }
        }
        $("#btnEliminar").click(function (e){
            var idBuscado = document.getElementById("idIngreso").value;
            for(var i=0; i<app.registro.length;i++){
                if(app.registro[i].idingreso == idBuscado){
                    app.registro.splice(i,1);
                    $('#formulario2')[0].reset();
                    $("#dialogo1").modal('hide');
                    $("btnMostrar").trigger("click");
                }
            }
        });
    }

    /* limpia el formulario de rgistro*/
    limpiarRegistro(){
        $("#btnLimpiar").click(function (e){
            $('#formulario')[0].reset();
        });
    }
    /* muestra los usuarios registrado en la tabla de registros */
    mostrarRegistro(){
        $("#btnMostrar").click(function (e){
            $("#tbl-registros").find("tr:gt(0)").remove();
            app.registro.forEach(registros =>{
                var $unTr = $("<tr></tr>")//se crea un elemento html de tipo tr
                var $tdidingreso = $("<td></td>").html(registros.idingreso);
                var $tdnombre = $("<td></td>").html(registros.nombre);
                var $tdapellido = $("<td></td>").html(registros.apellido);
                var $tdemail = $("<td></td>").html(registros.email);
                var $tdgenero = $("<td></td>").html(registros.genero);
                var $tdfechanac = $("<tr></tr>").html(registros.fechanac);
                
                
                var $btngestionar = $("<button class='btn' onclick=app.gestionarRegistro('" + registros.idingreso + "') data-toggle='modal' data-target='#dialogo1'>Gestionar</button>");
                var $tdcomando = $("<td></td>");
                $tdcomando.append($btngestionar);
                
                $unTr.append($tdidingreso);
                $unTr.append($tdnombre);
                $unTr.append($tdapellido);
                $unTr.append($tdemail);
                $unTr.append($tdgenero);
                $unTr.append($tdfechanac);
                $unTr.append($tdcomando);
                $("#tbl-registros").append($unTr);
            });
        });
    }
    cargarRegistros() {
        var unRegistro;
        $.getJSON("registros.json", function (datos) {
            $.each(datos, function (clave, registro) {
                unRegistro = new Registro(registro.idingreso, registro.clave, registro.email, registro.nombre, registro.apellido, registro.genero, registro.fnacimiento, registro.pais);
                app.registro.push(unRegistro);
            });
        });
    }
}
//inicio la aplicacion
$("document").ready(function(){
    app = new Aplicacion();
    app.ini(); //ini tiene el control de que eventos habilito/deshabilito
});