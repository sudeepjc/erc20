const MyERC20 = artifacts.require("MyERC20");
const MyERC20Faucet = artifacts.require("MyERC20Faucet");

module.exports = async (deployer) => {
  await deployer.deploy(MyERC20,20000);
  var instance = await MyERC20.deployed();

  // instance.owner().then( console.log);
  var owner = await instance.owner();
  console.log(owner);
  await deployer.deploy(MyERC20Faucet, MyERC20.address, owner);
};