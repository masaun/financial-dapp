pragma solidity ^0.5.0;

import "zos-lib/contracts/Initializable.sol";
import "openzeppelin-solidity-2.1.1/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity-2.1.1/contracts/token/ERC20/IERC20.sol";
import "openzeppelin-solidity-2.1.1/contracts/token/ERC20/ERC20Detailed.sol";
import "openzeppelin-solidity-2.1.1/contracts/token/ERC20/ERC20Mintable.sol";
import "openzeppelin-solidity-2.1.1/contracts/token/ERC20/ERC20Burnable.sol";
// import "openzeppelin-eth/contracts/token/ERC20/ERC20Detailed.sol";


contract FinancialToken is Initializable, ERC20, ERC20Detailed, ERC20Mintable, ERC20Burnable {
    
    string _name = "FinancialToken";
    string _symbol = "FNL";
    uint8 _decimals = 18;

    uint private INITIAL_SUPPLY = 10000e18;

    // Success
    constructor (
        string memory name,
        string memory symbol,
        uint8 decimals
    ) public ERC20Detailed(_name, _symbol, _decimals) 
    {
        _mint(msg.sender, INITIAL_SUPPLY);
    } 

    // Success
    // constructor () public ERC20Detailed("FinancialToken", "FNL", 18) {
    //     _mint(msg.sender, INITIAL_SUPPLY);
    // } 





}
