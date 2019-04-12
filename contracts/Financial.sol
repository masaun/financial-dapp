pragma solidity ^0.5.0;

// import "openzeppelin-eth/contracts/ownership/Ownable.sol";
import "zos-lib/contracts/Initializable.sol";


contract Financial is Initializable {

    uint private count;
    address private _owner;

    function initialize(uint num) public initializer {
        _owner = msg.sender;
        count = num;
    }


    function owner() public view returns (address) {
        return _owner;
    }
    

    // in progress    

}
