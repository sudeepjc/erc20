pragma solidity ^0.5;

import "./MyERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract MyERC20Faucet{

    IERC20 private myERC20;
    address owner;

    constructor(address _myERC20, address _owner) public {
        myERC20= IERC20(_myERC20);
        owner = _owner;
    }

    function withdraw( uint quantity) public returns (bool){
        require(quantity<=1000,"Too much quantity requested");
        return myERC20.transferFrom(owner, msg.sender, quantity);
    }
}