// SPDX-License-Identifier: MIT
// Siempre se debe especificar la versión de solidity con la que se va a trabajar.
pragma solidity ^0.8.0;

contract Estructuras{

    //Cliente de una página web de pago
    struct Cliente{
        uint id;
        string name;
        string dni;
        string mail;
        uint phoneNumber;
        uint creditNumber;
        uint secretNumber;
    
    }

    //Amazon (Cualquier página de compraventa de productos)
    
    struct Producto{
        string nombre;
        uint precio;
    }

    //Instancia de una struct
    Producto product = Producto('NVidia Gforce 940MX', 1000000);
}