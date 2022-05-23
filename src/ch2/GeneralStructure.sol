pragma solidity ^0.8.0;

contract GeneralStructure {

    int public stateIntVariable;
    string stateStringVariable;
    myStruct human;
    address personIdentifier;
    bool constant hasIncome = true;


    function GeneralStructure(){

    }

    struct myStruct {
        string name;
        uint myAge;
        bool isMarried;
        uint[] bankAccountNumbers;

    }

    modifier onlyBy(){
        if (msg.sender == personIdentifier) {
            _;
        }
    }

    event ageRead(address, int);

    enum getGender{male,female}

    function getAge(address newPersonIdentifier) onlyBy() payable external returns (uint){
    human = myStruct ("Ritesh", 10, true, uint[](13));
    gender newGender=gender.male;
    ageRead(personIdentifier,stateIntVariable);
    return myStruct.myAge;
}

}
