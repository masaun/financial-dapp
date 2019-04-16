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
        const hoge = FinancialToken.deployed()
                      .then((i) => {
                          instance = i;
                          instance_name = instance.name();
                          console.log('=== instance_name ===', instance_name); // Promise { <pending> }
                      });
    });


    it("Get name of financialTokenInstance", async () => {
        // Get instance of FinancialToken contract
        // const hoge = FinancialToken.deployed()
        //               .then((i) => {
        //                   instance = i;
        //                   instance_name = instance.name();
        //                   console.log('=== instance_name ===', instance_name);
        //               });

        const instance = await FinancialToken.deployed()
        //console.log('=== name of financialToken ===', instance.name())
        instance.name().then((result) => {
          console.log('=== name of financialToken ===', result);  // Success（"FinancialToken"）
        });
    });


    it("Get name of totalSupply", async () => {
        const instance = await FinancialToken.deployed()

        /*** Display totalSupply by uint of Wei ***/
        instance.totalSupply().then((result) => {
          console.log('=== totalSupply of financialToken (unit of Wei) ===', result);  // Success（"<BN: 56bc75e2d63100000>"）
        });

        /*** Display totalSupply by uint of Ether ***/
        instance.totalSupply().then((result) => {
          const b = web3.utils.fromWei(result, 'ether')
          console.log('=== totalSupply of financialToken (unit of Ehter) ===', b);  // Success（"100"）
        });
    });


    it("Mint token", async () => {
        const accounts = await web3.eth.getAccounts();
        //console.log('=== accounts ===', accounts);  // Success

        const _to = '0x5Eb9CdAE61c07ADD7bf703Eb12eDFD1cecc22A41';
        const _value = 10;

        let financial_token = await new web3.eth.Contract(FinancialToken.abi, FinancialToken.address);
        //console.log('=== financial_token ===', financial_token);

        let response_mintToken = await financial_token.methods.mintToken(_to, _value).send({from: accounts[0]});
        console.log('=== mintToken function ===', response_mintToken);   // Success (be able to check log of Tx)
    });

});
