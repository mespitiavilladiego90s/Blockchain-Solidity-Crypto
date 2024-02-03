// SPDX-License-Identifier: MIT
// Siempre se debe especificar la versión de solidity con la que se va a trabajar.
pragma solidity ^0.8.0;

contract Arrays{
    //Array de enteros de longitud fija 5
    uint[5] array_enteros = [1, 2, 3, 4, 5];

    //Array de enteros de 32 bits de longitud fija 7
    uint32[7] array_enteros_32bits;

    //Array de strings de longitud fija 15
    string[15] array_strings;

    //Array dinámico de enteros
    uint [] array_dinamico_enteros;

    struct Persona{
        string nombre;
        uint edad;
    }

    //Array dinámico de tipos de persona
    Persona [] public array_dinamico_personas;

    function agregarPersona(string memory _nombre, uint _edad) public {
        Persona memory nuevaPersona = Persona(_nombre, _edad);
        array_dinamico_personas.push(nuevaPersona);
    }

    function obtenerPersona(uint _pos) public view returns(Persona memory){
        require(_pos < array_dinamico_personas.length && array_dinamico_personas.length > 0, "El indice esta fuera de rango o no se encuentra ninguna persona agregada.");
        return array_dinamico_personas[_pos];
    }

    function obtenerInfoPersona(uint _pos) public view returns (string memory, uint) {
        require(_pos < array_dinamico_personas.length && array_dinamico_personas.length > 0, "El indice esta fuera de rango o no se encuentra ninguna persona agregada.");
        string memory nombre = array_dinamico_personas[_pos].nombre;
        uint edad = array_dinamico_personas[_pos].edad;
        return (nombre, edad);
    }




}