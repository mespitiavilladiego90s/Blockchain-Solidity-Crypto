// SPDX-License-Identifier: MIT 
//Siempre se debe especificar la versión de solidity con la que se va a trabajar.
pragma solidity ^0.8.0;
import "./ERC20.sol";

//Bloque de construcción más básico para crear un contrato
contract primerContrato{

    //Iniciliamos nuestras variables
    address owner;
    ERC20Basic token;

    //El constructor se ejecuta cuando se le da deploy al contrato
    constructor() public{
        //Se guarda la dirección de la persona que haya deploy al contrato
        owner = msg.sender;
        token = new ERC20Basic(1000);
    }


    

}

