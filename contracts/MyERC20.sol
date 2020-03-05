pragma solidity ^0.5;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";

contract MyERC20 is ERC20, ERC20Detailed {

    address public owner;

    constructor(uint256 initialSupply) ERC20Detailed("MyERC20", "M20", 2) public {
        _mint(msg.sender, initialSupply);
        owner = msg.sender;

    }
}