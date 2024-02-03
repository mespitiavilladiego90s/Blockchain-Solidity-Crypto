// SPDX-License-Identifier: MIT
// Siempre se debe especificar la versión de solidity con la que se va a trabajar.
pragma solidity ^0.8.0;

contract Banco{
    
    //Definimos un tipo de dato complejo
    struct cliente{
        string nombre;
        address direccion;
        uint dinero;
    }

    //mapping que nos relaciona el nombre del cliente
    //Con el tipo de dato cliente
    mapping(string => cliente) internal clientes;

    //Función que nos permita dar de alta un nuevo cliente
    function nuevoCliente(string memory _nombre) internal{
        clientes[_nombre] = cliente(_nombre, msg.sender, 0);
    }

}

contract Cliente is Banco{

    function AltaCliente(string memory _nombre) public{
        nuevoCliente(_nombre);
    }

    function IngresarDinero(string memory _nombre, uint _cantidad) public{
        require(uint(_cantidad) != 0, "La cantidad a ingresar no puede ser 0.");
        clientes[_nombre].dinero += _cantidad;
    }

    function verificarDinero(string memory _nombre) public view returns(uint){
        return clientes[_nombre].dinero;
    }

}