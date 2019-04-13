const { BN, constants, expectEvent, shouldFail } = require('openzeppelin-test-helpers');
const should = require('chai').should();

const FinancialToken = artifacts.require('FinancialToken');

contract("financial_token", async () => {
  let financial_token;
  const value = new BN(9999);
  const add = new BN(1);

  beforeEach(async function () {
    financial_token = await FinancialToken.new();
    //counter.initialize(value, { from: owner });
  });
  
  // it("should have proper owner", async () => {
  //   (await counter.owner()).should.equal(owner);
  // });

  // it("should have proper default value", async () => {
  //   (await counter.getCounter()).should.bignumber.equal(value);
  // });

  it("burn", async () => {
    

  });

});
