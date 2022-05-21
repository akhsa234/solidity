pragma solidity ^0.8.0;

//contract Polymorphism

contract parentContractVersion2 {

    uint internal simpleInteger;

    function setValue(uint newValue) external{
        simpleInteger= newValue;
    }

    function getValue() public view returns( uint) {
        return 10;
    }

}
contract childContract is parentContract {

    function getValue() public view returns( uint) {
        return simpleInteger;
    }

}

contract client  {

    parentContractVersion2 pc = new  childContract();
    uint internal simpleInteger;

    function workWithInheritance() public returns( uint) {
        pc.setValue(100);
        return pc.getValue();
    }

}