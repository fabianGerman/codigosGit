 
/**punto 1 */
function obtenerMultiplicacion(){
   var resultado = 0;
   for(let i = 1; i <= valor2.value; i++){
       resultado = resultado + parseInt(valor1.value); 
   }
   document.getElementById("resultado").innerHTML = resultado;
   alert(resultado);
}

/**punto 2 */
function obtenerMaximo() {
    let vector = [];
    
    let elementos = " ";
    for(let i = 0; i < parseInt(valor3.value); i++){
        var num = Math.floor(Math.random()*(100 - 1 + 1) + 1);
        vector.push(num);
        elementos = elementos + " " + vector[i];
    }
    resultado = Math.max(...vector);
    document.getElementById("elementos").innerHTML = elementos;
    document.getElementById("max").innerHTML = resultado;
    alert(resultado);
}

/**punto 4 */
function listarEstudiantes() {
    const estudiantes = [
        {
            nombre: "estudiante 1",
            lu: 0001,
            carrera: "APU"
        },
        {
            nombre: "estudiante 2",
            lu: 0002,
            carrera: "APU"
        },
        {
            nombre: "estudiante 3",
            lu: 0003,
            carrera: "APU"
        },
        {
            nombre: "estudiante 1",
            lu: 0001,
            carrera: "TDVJ"
        },
        {
            nombre: "estudiante 2",
            lu: 0002,
            carrera: "TDVJ"
        },
        {
            nombre: "estudiante 1",
            lu: 0001,
            carrera: "ING. INFORMATICA"
        },
        {
            nombre: "estudiante 1",
            lu: 0001,
            carrera: "LIC. SISTEMA"
        }
    ];

   for(let i = 0; i < estudiantes.length; i++){
       $("#tablaEstudiante").append(`
        <tr>
            <td>${estudiantes[i].lu}</td>
            <td>${estudiantes[i].nombre}</td>
            <td>${estudiantes[i].carrera}</td>
        </tr>
       `);
   }
    
   
}