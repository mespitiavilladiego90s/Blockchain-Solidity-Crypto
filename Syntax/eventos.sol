// SPDX-License-Identifier: MIT
// Siempre se debe especificar la versión de solidity con la que se va a trabajar.
pragma solidity ^0.8.0;

contract eventos{
    //Declaramos los eventos a utilizar
    event nombre_evento_1 (string _nombrePersona);


    function EmitirEvento1(string memory _nombrePersona) public{
        emit nombre_evento_1(_nombrePersona);
    }
}

