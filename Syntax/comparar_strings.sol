// SPDX-License-Identifier: MIT
// Siempre se debe especificar la versión de solidity con la que se va a trabajar.
pragma solidity ^0.8.0;
//Para poder usar la función abi.econdePacked()
pragma experimental ABIEncoderV2;

contract compararStrings{

    function Comparar(string memory _i, string memory _j) public pure returns(bool){
        bytes32 hash_i = keccak256(abi.encodePacked(_i));
        bytes32 hash_j = keccak256(abi.encodePacked(_j));

        return hash_i == hash_j;
    }
}