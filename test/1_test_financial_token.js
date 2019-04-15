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
                          console.log('=== instance_name ===', instance_name);
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



    //const to = '0x5Eb9CdAE61c07ADD7bf703Eb12eDFD1cecc22A41';
    //const value = 10;
    it("Mint token", async () => {
        const accounts = await web3.eth.getAccounts();
        console.log('=== accounts ===', accounts);  // Success

        const _to = '0x5Eb9CdAE61c07ADD7bf703Eb12eDFD1cecc22A41';
        const _value = 10;

        let financial_token = await new web3.eth.Contract(FinancialToken.abi, FinancialToken.address);
        //console.log('=== financial_token ===', financial_token);

        let response_mintToken = financial_token.methods.mintToken(_to, _value).send({from: accounts[0]});
        console.log('=== mintToken function ===', response_mintToken);


        response_mintToken.then((result) => {
          console.log('==== mintToken function v2 ===', result);
        });

    });



    // it("Mint token", async () => {
    //     const accounts = await web3.eth.getAccounts();
    //     console.log('=== accounts ===', accounts);  // Success

    //     const _to = '0x5Eb9CdAE61c07ADD7bf703Eb12eDFD1cecc22A41';
    //     const _value = 10;

    //     const financial_token = await new web3.eth.Contract(FinancialToken.abi, FinancialToken.address);
    //     //console.log('=== financial_token ===', financial_token);

    //     const response_mintToken = financial_token.methods.mintToken(_to, _value).send({from: accounts[0]});
    //     console.log('=== mintToken function ===', response_mintToken);
    // });
});
