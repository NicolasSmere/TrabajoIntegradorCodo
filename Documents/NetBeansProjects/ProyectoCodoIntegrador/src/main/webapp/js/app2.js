// Campos con ingreso de informacion
let dni = document.querySelector('#Dni');
let nombre = document.querySelector('#Nombre');
let apellido = document.querySelector('#Apellido');
let correo = document.querySelector('#Correo');
let boton_borrar = document.querySelector('#Borrar');
let boton_agregar = document.querySelector('#Agregar');

// Funcion para calcular el total a pagar

// Verifico que todos los campos esten completos
function validacion_formulario(){


    if (dni.value === "" ) {
        alert("Por favor ingresa tu dni");
        return;
    }

    if (nombre.value === "" ) {
        alert("Por favor ingresa tu nombre");
        return;
    }

    if (apellido.value === "" ) {
        alert("Por favor ingresa tu apellido");
        return;
    }

    if (correo.value === "" ) {
        alert("Por favor ingresa un correo");
        return;
    }


}



// Funcion que borra
function borrar_total(){
    nombre.value = "";
    apellido.value = "";
    correo.value = "";
}

// Evento click del boton agregar
boton_agregar.addEventListener('click',validacion_formulario);

// Evento click del boton borrar
boton_borrar.addEventListener('click',borrar_total);
