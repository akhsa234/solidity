pragma solidity ^0.8.0;
//Abstracts contracts

contract abstractHelloWorld {

    function getValue() public view returns (uint);
    function setValue(uint newValues) public ;
    function addNumber(uint newValues) public returns(uint){
        return 100;

    }
}
contract helloWorld is abstractHelloWorld {

    function getValue() public view returns (uint);
    function setValue(uint newValues) public ;
    function addNumber(uint newValues) public returns(uint){
        return simpleInt + newValues ;

    }

    uint private simpleInt;

    function getValue() public view returns (uint){
        return simpleInt;
    }

    function setValue(uint newSimpleInt) public  {
        simpleInt = newSimpleInt;
    }
}
contract client  {

    abstractHelloWorld myObj ;

    function client(){
        myObj = new helloWorld();
    }

    function getSetIntegerValues() public returns( uint) {
        myObj.setValue(100);
        return myObj.addNumber(200);
    }

}