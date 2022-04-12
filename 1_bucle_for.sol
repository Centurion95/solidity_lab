// SPDX-License-Identifier: GPL-3.0
//Especificar la version
pragma solidity >=0.7.0 <0.9.0;

contract Pruebas {

    function contar_hasta_10() public pure returns(uint){
        uint contador = 0;

        for(uint i = 0; i<10; i++){
            contador += 1;
        }
        return contador;
    }


    //suma de los primeros 100 numeros a partir del numero ingresado..
    //"pure" porque solo va a depender del parametro ingresado
    function sumar(uint _numero) public pure returns(uint){
        uint suma = 0;

        for(uint i = _numero; i<(100+_numero); i++){
            suma = suma + i;
        }
        return suma;
    }

    address private owner;
}
