const e = require("express");

let estudiantes = [
    {
        apellido: "apellido1",
        nombre: "nombre1",
        lu: 1
    },
    {
        apellido: "apellido2",
        nombre: "nombre2",
        lu: 2
    },
    {
        apellido: "apellido3",
        nombre: "nombre3",
        lu: 3
    },
    {
        apellido: "apellido4",
        nombre: "nombre4",
        lu: 4
    },
    {
        apellido: "apellido5",
        nombre: "nombre5",
        lu: 5
    },
    {
        apellido: "apellido6",
        nombre: "nombre6",
        lu: 6
    },
    {
        apellido: "apellido7",
        nombre: "nombre7",
        lu: 7
    },
    {
        apellido: "apellido8",
        nombre: "nombre8",
        lu: 8
    },
    {
        apellido: "apellido9",
        nombre: "nombre9",
        lu: 9
    },
    {
        apellido: "apellido10",
        nombre: "nombre10",
        lu: 10
    },
];


const buscar = (lu) => {
    let studentFind = estudiantes.find(e => e.lu === lu);
    return studentFind;
}

const mostrar = () =>{
    return estudiantes;
}

module.exports = {
    buscar, mostrar
}