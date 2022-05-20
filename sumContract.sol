pragma solidity ^0.8.0;

contract sumContract {


    function sum(uint a, uint b) public returns(uint){
        return a+b;

    }
}

contract multipleContract is sumContract {


    function multiply(uint a, uint b) public returns(uint){
        return a*b;

    }
}

contract divideContract is sumContract {


    function devide(uint a, uint b) public returns(uint){
        return a/b;

    }
}

contract subContract is sumContract,divideContract,multipleContract {


    function sub(uint a, uint b) public returns(uint){
        if(a>b){
            return a-b;
        }
        else{
            return b-a;
        }

    }
}

contract client  {




    function workWithInheritance() public returns( uint, uint) {

        uint a =20;
        uint b= 10;

        subContract sc = new  subContract();
        return sc.sub(a,b);
        return sc.sum(a,b);
    }

}