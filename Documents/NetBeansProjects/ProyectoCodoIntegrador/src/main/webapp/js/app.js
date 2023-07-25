// Campos con ingreso de informacion
let nombre = document.querySelector('#Nombre');
let apellido = document.querySelector('#Apellido');
let correo = document.querySelector('#Correo');
let categoria = document.querySelector('#Categoria');
let cantidad = document.querySelector('#Cantidad');
let boton_borrar = document.querySelector('#Borrar');
let boton_resumen = document.querySelector('#Resumen');
let total_pagar = document.querySelector('#TotalPagar');

// Valores constantes para calculos
const Ticket_valor = 200;
const Descuento_estudiante = 0.8;
const Descuento_trainee = 0.5;
const Descuento_junior = 0.15;

// Funcion para calcular el total a pagar

// Verifico que todos los campos esten completos
function validacion_formulario(){

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

    if ((parseInt(cantidad.value) < 1)  || (isNaN(parseInt((cantidad.value)))) ) {
        alert("La cantidad minima de entradas es 1");
        return;
    }
    
    if (categoria.value < 1) {
        alert("Debe seleccionar una categoria");
        return;
    }
}

function Total_pago(){
    
    validacion_formulario();

    //Valor ticket/cantidad
    let total_valor = parseFloat(cantidad.value) * Ticket_valor;


    //Tengo en cuenta los descuentos

    if (categoria.value == 1) {
        total_valor -= total_valor * Descuento_estudiante;
    }
    else if(categoria.value == 2) {
        total_valor -= total_valor * Descuento_trainee;
    }
    else if(categoria.value == 3) {
        total_valor -= total_valor * Descuento_junior;
    }

    // Calculo final

    total_pagar.innerHTML = `Total a pagar: $ ${total_valor}`
}

// Funcion que borra el total conseguido anteriormente
function borrar_total(){
    total_pagar.innerHTML = "Total a pagar: $";
    nombre.value = "";
    apellido.value = "";
    correo.value = "";
    cantidad.value = "";
    categoria.value= 0;
}

// Evento click del boton resumen donde hace uso de la funcion para calcular el total
boton_resumen.addEventListener('click',Total_pago);

// Evento click del boton borrar donde hace uso de la funcion para borrar el total mostrado
boton_borrar.addEventListener('click',borrar_total);
