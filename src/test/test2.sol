pragma solidity >=0.4.25 <0.6.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/MetaCoin.sol";

contract test2 {
    function testGetDoublePositiveUsingDeployedContract(){
        First.meta = First(DeployedAddresses.First());
        assert.equal(meta.getDouble(10),20,"positive input wil be get double value.");
    }
}
