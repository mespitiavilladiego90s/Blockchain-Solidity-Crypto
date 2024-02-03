// SPDX-License-Identifier: MIT 
//Siempre se debe especificar la versión de solidity con la que se va a trabajar.
pragma solidity ^0.8.0;

contract funciones_globales{
    
        //Function msg.sender
    function MsgSender() public view returns(address){
        return msg.sender;
    }

        //Function now es un alias para timestamp, devuelve el tiempo en segundos del bloque actual
        //now ha sido descontinuado, se usa block.timestamp instead
    function Now() public view returns(uint){
        return block.timestamp;
    }

        //Function block.coinbase dirección del minero que está procesando el bloque
    function BlockCoinBase() public view returns(address){
        return block.coinbase;
    }


        //block.difficulty ahora se le conoce como block.prevrandao
     function BlockDifficulty() public view returns(uint){
        return block.prevrandao;
    }

        //Function block.number devuelve el bloque actual

    function BlockNumber() public view returns(uint){
        return block.number;
    }

    /*
        - view: Se utiliza para funciones que solo leen el estado del contrato o de otras variables, pero no realizan 
            modificaciones en el estado del contrato.
        - pure: Se utiliza para funciones que no acceden ni modifican el estado del contrato ni leen el estado de otras 
            variables. Estas funciones son puramente deterministas y solo se basan en los parámetros que se les pasan.
    */

    /*
        Un ejemplo de cuando utiliza view y cuando utilizar pure:
        La función BlockNumber() utiliza block.number para obtener el número del bloque actual, 
        lo cual accede al estado de la cadena de bloques. Por lo tanto, es apropiado marcarla como 
        view en lugar de pure para indicar que solo está leyendo el estado sin realizar modificaciones en él.
    */

    function MsgSig() public pure returns(bytes4){
        return msg.sig;
    }

    /*
        La función MsgSig() solo devuelve el valor de msg.sig, que es un campo que contiene la firma de la función que 
        se llamó. Esta función no modifica el estado del contrato y solo devuelve un valor basado en la información 
        proporcionada por la transacción. Por lo tanto, es apropiado marcar esta función como pure en lugar de view.
    */

    //Función tx.gasprice que devuelve el gas de la transacción

    function txGasPrice() public view returns(uint){
        return tx.gasprice;
    }



}