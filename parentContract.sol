pragma solidity ^0.8.0;

contract parentContract {

    uint internal simpleInteger;

    function setValue(uint newValue) external{
         simpleInteger= newValue;
    }

}
contract childContract is parentContract {

    bool private simpleBool;

    function getValue() public view returns( uint) {
        return simpleInteger;
    }

}

contract client  {

    childContract pc = new  childContract();
    uint internal simpleInteger;

    function workWithInheritance() public returns( uint) {
        pc.setValue(100);
        return pc.getValue();
    }

}