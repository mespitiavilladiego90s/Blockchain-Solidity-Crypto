// SPDX-License-Identifier: MIT 
//Siempre se debe especificar la versión de solidity con la que se va a trabajar.
pragma solidity ^0.8.0;

//Para poder usar la función abi.econdePacked()
pragma experimental ABIEncoderV2;

contract keccakcontract{
    //keccak256 devuelve un byte de 32.
    function hash() public pure returns(bytes32){
        return keccak256(abi.encodePacked('Hello World!'));
    }
    
     //keccak256 devuelve un byte de 32.
    function calcularHash(string memory _text) public pure returns(bytes32){
        require(bytes(_text).length > 0, "El campo es totalmente requerido");
        return keccak256(abi.encodePacked(_text));
    }

    //Convierte en hash más de un parámetro
    function calcularHashMultiple(string memory _text, uint _k, address _direction) public pure returns(bytes32){
        require(bytes(_text).length > 0 && uint(_k) > 0, "El texto es totalmente requerido y el numero debe ser un entero positivo.");
        return keccak256(abi.encodePacked(_text, _k, _direction));
    }

}

