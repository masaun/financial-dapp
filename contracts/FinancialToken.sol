pragma solidity ^0.5.0;

// import "openzeppelin-eth/contracts/ownership/Ownable.sol";
import "zos-lib/contracts/Initializable.sol";
// import "openzeppelin-eth/contracts/token/ERC20/IERC20.sol";
// import "openzeppelin-eth/contracts/token/ERC20/StandaloneERC20.sol";
// import "openzeppelin-eth/contracts/ownership/Ownable.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/DetailedERC20.sol";


contract FinancialToken is Initializable, ERC20, ERC20Detailed {

    //uint private count;
    //address private _owner;

    function initialize(
        string memory name,
        string memory symbol,
        uint8 decimals,
        uint256 initSupply
    ) 
        public 
        initializer 
        ERC20Detailed(name, symbol, decimals)  // Call constructor of ERC20Detailed.sol
    {
        name = "FinancialToken";
        symbol = "FNL";
        decimals = 18;
        initSupply = 100;

        _mint(msg.sender, initSupply);
    }


    function owner() public view returns (address) {
        return _owner;
    }
    

    // in progress    

}
