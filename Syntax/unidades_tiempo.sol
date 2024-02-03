// SPDX-License-Identifier: MIT 
//Siempre se debe especificar la versión de solidity con la que se va a trabajar.
pragma solidity ^0.8.0;

contract tiempo{

    //Unidades de tiempo

    /*  Se declaran públicas para poder acceder a ellas
        Al momento de darle deploy al contrato 
    */
    uint public tiempo_Actual = block.timestamp;
    uint public un_minuto = 1 minutes;
    uint public dos_horas = 2 hours;
    uint public cincuenta_dias = 50 days;
    uint public una_semana = 1 weeks;

    function MasSegundos() public view returns(uint){
        return block.timestamp + 50 seconds;
    }

    function MasHoras() public view returns(uint){
        return block.timestamp + 1 hours;
    }

}