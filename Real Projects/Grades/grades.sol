// SPDX-License-Identifier: MIT
// Siempre se debe especificar la versión de solidity con la que se va a trabajar.
pragma solidity ^0.8.0;
//Para poder usar la función abi.econdePacked()
pragma experimental ABIEncoderV2;


//Iniciamos creando el contrato que manejará las notas
contract notas{
    //Dirección del profesor
    address private profesor;

    //Constructor
    constructor(){
        profesor = msg.sender;
    }

    //Mapping para relacionar el hash del alumno
    //Con su nota del examen
    mapping (bytes32 => uint) Notas;

    //Array de los alumnos que pidan revisiones de examen
    string [] private revisiones;

    //Eventos
    event alumno_evaluado(bytes32);
    event evento_revision(string);


    //Función para evaluar a alumnos
    function Evaluar(string memory _idAlumno, uint _nota) public UnicamenteProfesor(msg.sender){
        //has de la indentificación del alumno
        bytes32 hash_idAlumno = keccak256(abi.encodePacked( _idAlumno));
        //relacion entre el hash del id del alumno y su nota
        Notas[hash_idAlumno] = _nota;
        //Emision del evento
        emit alumno_evaluado(hash_idAlumno);
    }

    //Control de las funciones ejecutables
    modifier UnicamenteProfesor(address _direccion){
        //La dirección introducida por parámetro tiene que ser igual a la del owner del contrato (profesor)
        require(_direccion==profesor, "No eres profesor, por ende no posees los permisos para ejecutar esta funcion");
        _;
    }

    //Funcion para ver las notas de un alumno
    function verNotas(string memory _idAlumno) public view returns(uint){
        //has de la indentificación del alumno
        bytes32 hash_idAlumno = keccak256(abi.encodePacked( _idAlumno));
        //Nota asociada al hash del alumno
        uint nota_alumno = Notas[hash_idAlumno];
        //Visualizar la nota
        return nota_alumno;
    }

    //Función para pedir una revisión del examen
    function Revision(string memory _idAlumno) public{
        //Almacenamiento de la identidad del alumno en un array
        revisiones.push(_idAlumno);
        //Emisión del evento
        emit evento_revision(_idAlumno);

    }

    //funcion para ver los alumnos que han solicitado revision
    function verRevisiones() public view UnicamenteProfesor(msg.sender) returns(string [] memory){
        return revisiones;
    }


}
