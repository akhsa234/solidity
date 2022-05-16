pragma solidity ^0.8.0;

contract Election {
    function Election() public{
        owner=msg.sender;
    }


    address owner;
    //  string name;
    uint128 candidateCount;
    // bool visible;
    //  uint8 count;

    struct candidate{
        uint personID;
        string name;
        uint16 voteCount;
    }

//    constructor() public{
//        owner=msg.sender;
//    }

    mapping (uint=>candidate) candidates;
    mapping (address=>bool) participant;



    function setCandidate(string memory newName)public returns (string memory){
        require(msg.sender==owner, "access denied");
        candidateCount++; // set first count of every candidate
        candidates[candidateCount]=candidate(candidateCount,newName,0); //set or add first candidate info
        return " Candidate was Added Successfully...";

    }

    function voting(uint16 newPersonID)public returns(string memory){

        require (newPersonID<= candidateCount && _personID>0 , "not found");
        require (participant[msg.sender]== false);
        candidates[newPersonID].voteCount++;
        participant[msg.sender]=true;
        return "Okkk, Your vote was entered Successfully";

    }

    function showResult() public returns(string memory){
        uint winnerId=0;
        uint winnerVote=0;

        for(uint i=1; i<=candidateCount; i++){
            if(candidates[i].voteCount>=winnerVote){
                winnerId=i;
                winnerVote = candidates[i].voteCount;
            }
        }
        return candidates[winnerId].name;
    }






}

contract B {

}

// contract c{

// }

contract h{}

contract x{}
contract c is B{}
contract s is h{}
contract y is B{}
