// SPDX-License-Identifier: MIT
// Siempre se debe especificar la versión de solidity con la que se va a trabajar.
pragma solidity ^0.8.0;

contract Mappings{

    //Declaramos un mapping para elegir un número
    //Espeficamos el key y el value con el que se va a trabajar

    mapping(address => uint) public elegirNumero;


    //Llenamos el mapping con números
    function checkNumero(uint _numero) public {
        elegirNumero[msg.sender] = _numero;
    }


    function consultarNumero() public view returns(uint){
        return elegirNumero[msg.sender];
    }

    //Declaramos un mapping que relaciona el nombre
    //De una persona con su cantidad de dinero
    mapping(string => uint) public cantidadDinero;

    function Dinero(string memory _nombre, uint _cantidad) public{
        cantidadDinero[_nombre] = _cantidad;
    }

    function consultarDinero(string memory _nombre) public view returns(uint){
        return cantidadDinero[_nombre];
    }

    //Mapping con struct
    struct Persona{
        string nombre;
        uint edad;
    }

    mapping(uint => Persona) personas;

    function dni_Persona(uint _dni, string memory _nombre, uint _edad) public{
        personas[_dni] = Persona(_nombre, _edad);
    }

    function visualizarPersona(uint  _dni) public view returns(Persona memory){
        return personas[_dni];
    }



}