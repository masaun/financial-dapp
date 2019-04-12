pragma solidity ^0.5.0;

import "zos-lib/contracts/Initializable.sol";
import "openzeppelin-solidity-2.1.1/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity-2.1.1/contracts/token/ERC20/IERC20.sol";
import "openzeppelin-solidity-2.1.1/contracts/token/ERC20/ERC20Detailed.sol";
// import "openzeppelin-eth/contracts/token/ERC20/ERC20Mintable.sol";
// import "openzeppelin-eth/contracts/token/ERC20/ERC20Detailed.sol";


contract FinancialToken is ERC20, ERC20Detailed {

    uint private INITIAL_SUPPLY = 10000e18;

    // Success
    constructor () public ERC20Detailed("FinancialToken", "FNL", 18) {
        _mint(msg.sender, INITIAL_SUPPLY);
    } 

    // Fail
    // function initialize() public initializer ERC20Detailed("FinancialToken", "FNL", 18) {
    //     _mint(msg.sender, INITIAL_SUPPLY);
    // }

}
