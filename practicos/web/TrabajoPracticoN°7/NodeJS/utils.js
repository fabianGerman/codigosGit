const suma = (num1, num2) => {
    return num1+num2;
}

const resta = (num1, num2) => {
    return num1-num2;
}

const multiplicacion = (num1, num2) => {
    return num1*num2;
}

const division = (num1,num2) => {
    let resultado;
        if(num2 != 0){
            resultado = num1/num2;
        }else{
            resultado = 0;
        }
    return resultado;
}

const mensaje = (persona) => {
    return "el apellido y nombre ingresado son "+persona.apellido+" "+persona.nombre;
}

module.exports = {
    obtenerResta : resta,
    obtenerSuma: suma,
    obtenerMultiplicacion: multiplicacion,
    obtenerDivision: division,
    obtenerPersona: mensaje
}