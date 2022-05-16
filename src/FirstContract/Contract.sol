pragma solidity ^0.8.0;

contract Contract {
    function Contract(){
        owner=msg.sender;
    }

    address owner;
    string name;
    bool visible;
    uint8 count;

//    constructor() {
//        owner=msg.sender;
//    }
    // constructor() public{
    //     owner=msg.sender;
    // }

    function setName(string memory _name) public returns(string memory){

        if(msg.sender==owner){
            name=_name;
            return "successfulllll!!!!! ";
        }
        else{
            return "access denied!!!!! ";
        }
    }

    function getName() view public returns(string memory){

        return name;
    }

}
