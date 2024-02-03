// SPDX-License-Identifier: MIT
// Siempre se debe especificar la versión de solidity con la que se va a trabajar.
pragma solidity ^0.8.0;

contract funciones{
    //Añadir dentro de un array de direcciones
    //La dirección de la persona que llame la función
    address[] private direcciones;

    function agregarDireccion() public {
        // Verificar si la dirección del remitente ya existe en el array
        for (uint i = 0; i < direcciones.length; i++) {
            require(direcciones[i] != msg.sender, "Esta direccion ya ha sido agregada.");
        }

        direcciones.push(msg.sender);
    }

    function mostrarDireccion(uint _pos) public view returns(address){
        require(_pos < direcciones.length && direcciones.length > 0, "El indice esta fuera de rango o no se encuentra ninguna direccion agregada.");
        return direcciones[_pos];
    }

}