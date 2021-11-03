const { obtenerSuma, obtenerResta, obtenerMultiplicacion, obtenerDivision, obtenerPersona } = require('./utils.js');

let persona = {
    apellido: 'Ontiveros',
    nombre: 'German Jonatan Fabian',
    
}

console.log("la suma es "+obtenerSuma(2,2));
console.log("la resta es "+obtenerResta(5,3));
console.log("la multplicacion es "+obtenerMultiplicacion(6,6));
console.log("la division es "+obtenerDivision(10,5)); 
console.log("la persona es "+obtenerPersona(persona));