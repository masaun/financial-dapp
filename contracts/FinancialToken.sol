pragma solidity ^0.5.0;

//import "openzeppelin-solidity-2.1.1/contracts/token/ERC20/ERC20.sol";
//import "openzeppelin-solidity-2.1.1/contracts/token/ERC20/IERC20.sol";
//import "openzeppelin-solidity-2.1.1/contracts/token/ERC20/ERC20Detailed.sol";
//import "openzeppelin-solidity-2.1.1/contracts/token/ERC20/ERC20Mintable.sol";
//import "openzeppelin-solidity-2.1.1/contracts/token/ERC20/ERC20Burnable.sol";

import "zos-lib/contracts/Initializable.sol";
import "openzeppelin-eth/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-eth/contracts/token/ERC20/ERC20Detailed.sol";


contract FinancialToken is Initializable {
    
    string _name = "FinancialToken";
    string _symbol = "FNL";
    uint8 _decimals = 18;

    //uint private INITIAL_SUPPLY = 10000e18;

    ERC20 public token;

    /* @notice pattern 1 of initialize function by using ZeppelinOS */
    // function initialize() public initializer {
    //     //token = new ERC20Detailed(_name, _symbol, _decimals); // This contract will not be upgradeable
    //     token = new ERC20Detailed("FinancialToken", "FNL", 18); // This contract will not be upgradeable
    // } 


    /* @notice pattern 2 of initialize function by using ZeppelinOS */
    function initialize(ERC20 _token) public initializer {
        token = _token;  // This contract will be upgradeable if it was created via ZeppelinOS
    }
    







    /* @notice pattern 1 of initialize function by using OpenZeppelin-solidity */
    // constructor (
    //     string memory name,
    //     string memory symbol,
    //     uint8 decimals
    // ) public ERC20Detailed(_name, _symbol, _decimals) 
    // {
    //     _mint(msg.sender, INITIAL_SUPPLY);
    // } 


    /* @notice pattern 2 of initialize function by using OpenZeppelin-solidit */
    // Success
    // constructor () public ERC20Detailed("FinancialToken", "FNL", 18) {
    //     _mint(msg.sender, INITIAL_SUPPLY);
    // } 
    


}
