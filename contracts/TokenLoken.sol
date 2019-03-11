pragma solidity ^0.5.0;
import  "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "../node_modules/openzeppelin-solidity/contracts/ownership/Ownable.sol";


/**
*  Token Loken
* Autor : Miguel Ieno
*/
contract TokenLoken is ERC20 , ERC20Detailed , Ownable{
   uint public INITIAL_SUPPLY = 1000;



    constructor (
        string memory name,
        string memory  symbol,
        uint8  decimales,
		address anOwner,
        
        uint256 tokensInit
    ) 
        public 
        ERC20Detailed(name, symbol, decimales)
        ERC20()
        
    {
		tokensInit = INITIAL_SUPPLY * (10 ** uint (decimales));
        _mint(anOwner, tokensInit); // se le asigna al owner los tokens
    }

	
}
