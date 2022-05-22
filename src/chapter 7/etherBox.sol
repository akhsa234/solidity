pragma solidity ^0.8.0;

contract etherBox {
    uint balance;

    function setBalance() public{
        balance=+10;
    }

    function getBalance() public payable returns(uint){
        return balance;
    }

}

contract usingCall {

    function usingCall() public payable{
            }

    function simpleCall() public  returns(uint){
        bool status = true;
        etherBox eb = new etherBox();
        address myAddr = address (eb);
        status = myAddr.call(byte4(sha3("setBalance()")));
        return eb.getBalance();
    }

    function simpleCallWithGas() public returns(bool){
        bool status = true;
        etherBox eb = new etherBox();
        address myAddr = address (eb);
        status = myAddr.call.gas(2000)(byte4(sha3("getBalance()")));
        return status;
    }

    function simpleCallWithGasAndValue() public returns(bool){
        bool status = true;
        etherBox eb = new etherBox();
        address myAddr = address (eb);
        status = myAddr.call.gas(2000).value(1)(byte4(sha3("getBalance()")));
        return status;
    }

}