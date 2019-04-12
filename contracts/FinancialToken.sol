pragma solidity ^0.5.0;

// import "openzeppelin-eth/contracts/ownership/Ownable.sol";
import "zos-lib/contracts/Initializable.sol";
//import "openzeppelin-eth/contracts/token/ERC20/IERC20.sol";
// import "openzeppelin-eth/contracts/drafts/ERC20Migrator.sol";
// import "openzeppelin-eth/contracts/token/ERC20/ERC20Mintable.sol";
// import "openzeppelin-eth/contracts/token/ERC20/ERC20Detailed.sol";
import "openzeppelin-solidity-2.1.1/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity-2.1.1/contracts/token/ERC20/IERC20.sol";
import "openzeppelin-solidity-2.1.1/contracts/token/ERC20/ERC20Detailed.sol";


contract FinancialToken is ERC20, ERC20Detailed {

    uint private INITIAL_SUPPLY = 10000e18;

    // Success
    constructor () public ERC20Detailed("FinancialToken", "FNL", 18) {
        _mint(msg.sender, INITIAL_SUPPLY);
    } 


    // function initialize(
    //     ERC20Detailed _legacyToken,
    //     ERC20Migrator ,
    //     string memory symbol,
    //     uint8 decimals
    // )
    //     public
    //     initializer
    //     ERC20()
    //     ERC20Detailed(name, symbol, decimals)  // Call constructor of ERC20Detailed.sol
    // {
    //     // name = "FinancialToken";
    //     // symbol = "FNL";
    //     // decimals = 18;
    //     // initSupply = 100;

    //     string memory name = "FinancialToken";
    //     string memory symbol = "FNL";
    //     uint256 decimals = 18;
    //     uint256 initSupply = 10000;

    //     _mint(msg.sender, initSupply);
    // }


    // in progress    

}
