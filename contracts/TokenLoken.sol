pragma solidity ^0.4.24;
import  "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";


/**
*  Token Loken
* Autor : Miguel Ieno
*/
contract TokenLoken is ERC20 , ERC20Detailed{

	constructor (string name , string symbol, uint decimal)
			ERC20Detailed(name , symbol, decimal) public {

			}

    
    
}
