// SPDX-License-Identifier: MIT
// Siempre se debe especificar la versión de solidity con la que se va a trabajar.
pragma solidity ^0.8.0;
//Para poder usar la función abi.econdePacked()
pragma experimental ABIEncoderV2;

abstract contract public_private_internal{

    //Modificador public
    //Se pueden llamar dentro del contrato y también fuera de él

    uint public mi_entero = 45;
    string public mi_string = 'Miguel Espitia';
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    //Modificar private
    //Solo visibles en el contrato en el que se definieron
    uint private mi_entero_privado = 10;
    bool private flag = true;

    //Prueba de que se puede interactuar con él en el contrato
    function test(uint _k) public{
        mi_entero_privado = _k;
    }

    //Modificador internal
    bytes32 internal hash = keccak256(abi.encodePacked('hola'));
    address internal direccion;


}

