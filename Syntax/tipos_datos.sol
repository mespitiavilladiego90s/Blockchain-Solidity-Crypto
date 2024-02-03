// SPDX-License-Identifier: MIT 
//Siempre se debe especificar la versión de solidity con la que se va a trabajar.
pragma solidity ^0.8.0;


contract tipoDatos{
    //Entero sin signo tiene tipo de dato uint
    uint sinSigno;

    /*
        En ambos casos, solidity interpreta que ambos tipos
        de datos son de 256 bits, pero se pueden especificar
        por defecto la cantidad de bits que recibe.
        Dichos bits van de 8 en 8 hasta llegar a 256.
    */

    //Entero con signo tiene tipo de dato int
    int conSigno;

    //Entero sin signo de 8 bits
    uint8 sinSigno8bits;

    //Entero con signo de 64 bits
    int64 conSigno64bits;

    //Entero sin signo inicializado
    uint diez = 10;

    //Entero con signo inicializado
    int menos64 = -64;

    //Variable de tipo string UTF-8
    string cadenaDeTexto;

    //string inicializado
    string holaMundo = "Hello World!";

    //Enumeracion de interruptor
    enum estado{ON, OFF}

    //Variable de tipo enum (estado) - Instancia
    estado state;

    function endender() public{
        state = estado.ON;
    }

    function fijarEstado(uint _k) public{
       state = estado(_k);
    }

    function Estado() public view returns(estado){
        return state;
    }

    //Enumeracion de direcciones
    enum direcciones{ARRIBA, ABAJO, DERECHA, IZQUIERDA}

    //Variable de tipo enum(direcciones)
    direcciones direction = direcciones.ARRIBA;

    function arriba() public{
        direction = direcciones.ARRIBA;
    }

    function abajo() public{
        direction = direcciones.ABAJO;
    }

    function derecha() public{
        direction = direcciones.DERECHA;
    }

    function izquierda() public{
        direction = direcciones.IZQUIERDA;
    }

    function fijarDirecciones(uint _k) public{
        direction = direcciones(_k);
    }

    function Direcciones() public view returns(direcciones){
        return direction;
    }
    
     


}