pragma solidity ^0.8.0;

import "./First.sol";
contract Second {
    address firstAddress;
    int public _data;

    function Second(address _first) public {
        firstAddress = _first;
    }

    function SetData() public {
        First h = First(firstAddress);
        _data = h.GetDouble(21);
    }
}