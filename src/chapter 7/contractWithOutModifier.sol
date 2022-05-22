pragma solidity ^0.8.0;

contract contractWithOutModifier {
    address owner;
    int public myData;

    function contractWithOutModifier(){
        owner = msg.sender;

    }

    function assignDoubleValues(int _data) public {
        if(msg.sender== owner){
            myData= _data *2 ;
        }

    }
    function assignTenfoldValues(int _data) public {
        if(msg.sender== owner){
            myData= _data* 10;
        }

    }
}
