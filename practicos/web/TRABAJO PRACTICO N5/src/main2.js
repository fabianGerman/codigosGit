alert("Puntos 1 al 4 mostrados en consola");
let numero =  parseInt (prompt("Ingrese un numero.Punto1:"));
let array = [1,2,3,4,5,6,7,8,9];

//prompt("La suma es:" + suma);
console.log("La suma Sucesiva de: " + numero + "-es:" + sumaSusesivas(numero));

//Sumas susecivas
function sumaSusesivas(numero){
    let suma = 0;
    console.log(document.getElementById("numero_ingresado"));
    for(let i=0; i < numero;i++){
        suma += numero;
    }
    return suma;
}
console.log("Punto2-Maximo valor");
//manera simple
let mayor = Math.max.apply(null,array);
console.log("El mayor es:"+ mayor);


//manera larga
let mayorAux = array[0];
for(let i=1; i< array.length;i++){
    if(mayorAux < array[i]){
        mayorAux = array[i];
    }
}
console.log("El mayor es:"+ mayorAux); 

console.log("Punto3al04-JSON");

const estudiantes = [
    {
      nombre: "Fabian",
      edad: 23,
      carrera: "Ingieneria en Informatica"
    },
    {
      nombre: "Dario",
      edad: 18,
      carrera: "Tecnicatura Diseño Integral de Videojuegos"
    },
    {
      nombre: "Ivan",
      edad: 21,
      carrera: "Analista Programador Universitario"
    }
  ];
  
  for (let estudiante of estudiantes) {
    console.log(estudiante);
  }