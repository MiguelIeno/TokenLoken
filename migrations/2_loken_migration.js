const TokenLoken = artifacts.require("./TokenLoken.sol");

var  name = "Loken";
var  symbol = "LK";
var   owner = "0x2f31A4E3e657B5916ABa2B96CAbbBF838445ff84";
var decimal = 5; 
var tokenInit= 100000000000;
module.exports = function(deployer) {
  deployer.deploy(TokenLoken , name, symbol, decimal , owner, tokenInit);
};
