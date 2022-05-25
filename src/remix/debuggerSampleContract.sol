pragma solidity ^0.8.0;

contract debuggerSampleContract {

    int counter = 10;
    function loopCounter(int _input) public returns(int){

        int returnValue;

        for(;_input<counter;_input++){
            returnValue +=_input;

        }return returnValue;

    }
}
