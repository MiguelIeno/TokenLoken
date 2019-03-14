const TokenLoken = artifacts.require("./TokenLoken.sol");

var  name = "Loken";
var  symbol = "LK";
var   owner = '0xd599f5016EFd80038a1f1b2312a72C3901271a9D';
var decimal = 5; 
var tokenInit= 100000000000;
module.exports = function(deployer) {
  deployer.deploy(TokenLoken , name, symbol, decimal , owner, tokenInit);
};
