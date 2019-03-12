pragma solidity ^0.5.0;
import  "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "../node_modules/openzeppelin-solidity/contracts/ownership/Ownable.sol";


/**
*  Token Loken
* Autor : Miguel Ieno
*/
contract TokenLoken is ERC20 , ERC20Detailed , Ownable{



    constructor (
        string memory name,
        string memory  symbol,
        uint8  decimales,
		address anOwner,
        uint256 initial_supply
    ) 
        public 
        ERC20Detailed(name, symbol, decimales)
        ERC20()
        
    {
		
        _mint(anOwner, initial_supply); // assigning all tokens to owner initially.
    }

	
}
