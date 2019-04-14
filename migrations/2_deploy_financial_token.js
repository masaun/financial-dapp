const FinancialToken = artifacts.require("./FinancialToken.sol");

module.exports = function(deployer, network, accounts) {
    const name = "FinancialToken";
    const symbol = "FNL";
    const decimals = 18;
    //const initSupply = 10000e18;
    const initSupply = web3.utils.toBN(100*(10**decimals));
    
    return deployer.then(()=>{
        return deployer.deploy(
            FinancialToken,
            name,
            symbol,
            decimals,
            initSupply
        );
    });
}
