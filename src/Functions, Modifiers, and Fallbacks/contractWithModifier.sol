pragma solidity ^0.8.0;

contract contractWithModifier {
    function contractWithModifier(){
        owner = msg.sender;
    }

    address owner;
    int public myData;

    modifier isOwner(){
        //require(msg.sender== owner);
        if(msg.sender== owner){
            _;

        }
    }
    function assignDoubleValues(int _data) public isOwner {
             myData= _data *2 ;
     }

    function assignTenfoldValues(int _data) public {
         myData= _data* 10;
      }


}
