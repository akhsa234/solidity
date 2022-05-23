pragma solidity ^0.8.0;

// version 1 --> Using the new keyword

contract helloWorld {
    uint private simpleInt;

    function getValue() public view returns (uint){
        return simpleInt;
    }

    function setValue(uint newSimpleInt) public  {
        simpleInt = newSimpleInt;
    }
}

contract client {

//    address obj; //version 2
//
//    function setObject(address newObj) external  { //version 2
//        obj = newObj;
//    }




    function useNewKeyword() public returns (uint){ //version 1
        helloWorld myObj = new helloworld();
        myObj.setValue(10);
        return myObj.getValue();
    }
}
