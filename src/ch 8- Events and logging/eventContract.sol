pragma solidity ^0.8.0;

contract eventContract {

    event logFunctionFlow(string);

    function validateInt8(int _data) public returns(uint8){
        logFunctionFlow(" integers were validated int8 in this function.");
        if(_data < 0 || _data > 255){
            revert;
        }
        logFunctionFlow(" value is in acceptable range.");
        logFunctionFlow(" returning value from function.");

        return _data;
    }
}
