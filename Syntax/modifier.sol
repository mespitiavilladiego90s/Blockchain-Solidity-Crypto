// SPDX-License-Identifier: MIT
// Siempre se debe especificar la versión de solidity con la que se va a trabajar.
pragma solidity ^0.8.0;

contract Modifier{

    //Ejemplo de solo propietario del contrato
    //Puede ejecutar una función
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    modifier soloPropietario(){
        require(msg.sender==owner, "No posees permisos para ejecutar la funcion");
        _;
    }

    function ejemplo1() public soloPropietario(){
        //Código de la función para el propietario del contrato
    }

    
}


/*
We also have state modifiers, which tell us how the function interacts with the BlockChain: 
view tells us that by running the function, no data will be saved/changed. 
pure tells us that not only does the function not save any data to the blockchain, but it also doesn't read any data from the blockchain. 
Both of these don't cost any gas to call if they're called externally from outside the contract (but they do cost gas if called internally by another function).
*/