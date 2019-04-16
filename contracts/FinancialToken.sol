pragma solidity ^0.5.0;

import "openzeppelin-solidity-2.1.1/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity-2.1.1/contracts/token/ERC20/ERC20Detailed.sol";
import "openzeppelin-solidity-2.1.1/contracts/token/ERC20/ERC20Mintable.sol";
import "openzeppelin-solidity-2.1.1/contracts/token/ERC20/ERC20Burnable.sol";



contract FinancialToken is ERC20, ERC20Detailed, ERC20Mintable, ERC20Burnable {
    
    //ERC20 public token;


    /* @notice pattern 1 of initialize function by using OpenZeppelin-solidity */
    constructor (
        string memory name,
        string memory symbol,
        uint8 decimals,
        uint256 initSupply
    ) 
        public 
        ERC20Detailed(name, symbol, decimals)
        ERC20Mintable()
        ERC20Burnable()
    {
        _mint(msg.sender, initSupply);
    } 


    /* @notice pattern 2 of initialize function by using OpenZeppelin-solidit */
    // Success
    // constructor () public ERC20Detailed("FinancialToken", "FNL", 18) {
    //     _mint(msg.sender, INITIAL_SUPPLY);
    // }


    function mintToken(address to, uint256 value) public returns (bool) {
        mint(msg.sender, value);

        return true;
    }
    
    
    function burnToken(uint256 value) public returns (bool) {
        burn(value);

        return true;
    }


    function totalSupply() public view returns (uint256)  {
        return totalSupply();
    }


    function balanceOf(address owner) public view returns (uint256) {
        return balanceOf(owner);
    }
    
}
