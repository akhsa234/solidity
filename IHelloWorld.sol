pragma solidity ^0.8.0;
//Interfaces
interface IHelloWorld {

    function getValue() public view returns (uint);
    function setValue(uint newValues) public ;
}


contract helloWorldImpl is IHelloWorld {

        uint private simpleInt;

        function getValue() public view returns (uint){
            return simpleInt;
        }

        function setValue(uint newSimpleInt) public  {
            simpleInt = newSimpleInt;
        }
}

contract client  {

    IHelloWorld myObj ;

    function client(){
        myObj = new helloWorldImpl();
    }

    function getSetIntegerValues() public returns( uint) {
        myObj.setValue(100);
        return myObj.getValue()(200);
    }

}