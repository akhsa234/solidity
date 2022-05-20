pragma solidity 0.4.19;

contract newStructure {
    function newStructure(){

    }

    struct myStruct {
        string name;
        uint myAge;
        bool isMarried;
        uint[] bankAccountNumbers;

    }
    myStruct struct1= myStruct("Ritesh", 10, true, new uint[](2));
    myStruct struct2;

    function getAge() returns(uint){

      myStruct memory localStruct = myStruct("Mofid", 20, false, new uint[](2));

      myStruct pointerStruct = struct1;

      myStruct memory pointerLocalStruct = localStruct;

      localStruct.myAge=30;

    struct2 = myStruct("Ritesh", 10, true, new uint[](2));

        return pointerLocalStruct.myAge;
    }
}
