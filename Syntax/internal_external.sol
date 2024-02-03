// SPDX-License-Identifier: MIT
// Siempre se debe especificar la versión de solidity con la que se va a trabajar.
pragma solidity ^0.8.0;

contract Comida{

    struct plato{
        string nombre;
        string ingredientes;
        uint tiempo;
    }


    //Array dinámico de platos
    plato [] platos;

    //Relacionamos con mapping nombre del plato con sus ingredientes
    mapping(string => string) ingredientes;

    //Función que nos permite dar de alta un nuevo plato
    function nuevoPlato(string memory _nombre, string memory _ingredients, uint _tiempo) internal{
        platos.push(plato(_nombre, _ingredients, _tiempo));
        ingredientes[_nombre] = _ingredients;
    }

    //Visualizar un ingrediente
    function ingredient(string memory _nombre) internal view returns(string memory){
        return ingredientes[_nombre];
    }

}

contract Sandwich is Comida{

    function sandwich(string memory _ingredientes, uint _tiempo) external{
        nuevoPlato("Sandwich", _ingredientes, _tiempo);
    }

    function verIngredientes() external view returns (string memory){
        return ingredient("Sandwich");
    }

}


/*
We have visibility modifiers that control when and where the function can be called from: 
private means it's only callable from other functions inside the contract; 
internal is like private but can also be called by contracts that inherit from this one; 
external can only be called outside the contract; 
and finally public can be called anywhere, both internally and externally.
*/