pragma solidity ^0.4.0;
import  "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/Owned.sol";


/**
*  Token Loken
* Autor : Miguel Ieno
*/
contract TokenLoken is ERC20 , ERC20Detailed , Owned{


    
    constructor(
        string name,
        string  symbol,
        uint8  decimales,
        uint256 tokensInit
    ) 
        public 
        ERC20Detailed(name, symbol, decimales)
        ERC20()
        Owned()
    {
		tokensInit = INITIAL_SUPPLY * (10 ** uint (decimales));
		balances[msg.sender] = tokensInit;
        _mint(owner, tokensInit); // assigning all tokens to owner initially.
    }

	function setON(string _n) public onlyOwner returns (bool) {
    Owner = _n;
    return true;
  }

    function getON() public view returns (string) {
    return Owner;
  }
}
