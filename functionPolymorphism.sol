pragma solidity ^0.8.0;

// Function polymorphism or method overloading
contract functionPolymorphism {

    function getVarData(int8 data) public constant returns(int8 output){
        return data;

    }


    function overloadingFunc(int16 data) public constant returns(int16 output){
        return data;

    }

}
