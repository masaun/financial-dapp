const FinancialToken = artifacts.require("./FinancialToken.sol");

contract("FinancialToken", accounts => {
    it("...should put 100FNL in the first account.", async () => {
        // Get instance of FinancialToken contract
        const financialTokenInstance = await FinancialToken.deployed();

        // Get balance of account[0]
        let balance = await financialTokenInstance.balanceOf(accounts[0]);

        // Convert unit from wei to ether
        balance = web3.utils.fromWei(balance, "ether");

        // Compare between balance and 100
        // If both is same, it is successful
        assert.equal(balance, 100, "First account don't have 100 FNL.");
    });


    it("Get name of financialTokenInstance", async () => {
        // Get instance of FinancialToken contract
        //const financialTokenInstance = await FinancialToken.deployed();

        const financialToken_name = await FinancialToken.deployed().then(i => instance = i);

        console.log('=== instance.name() ===', instance.name());
        //console.log(financialToken_name.name());
    });
});
