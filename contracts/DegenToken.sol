/*
Requirements:
1. Minting new tokens: The platform should be able to create new tokens and distribute them to players as rewards. Only the owner can mint tokens.
2. Transferring tokens: Players should be able to transfer their tokens to others.
3. Redeeming tokens: Players should be able to redeem their tokens for items in the in-game store.
4. Checking token balance: Players should be able to check their token balance at any time.
5. Burning tokens: Anyone should be able to burn tokens, that they own, that are no longer needed.
*/
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {
    constructor() ERC20("Degen", "DGN") Ownable(msg.sender){}

    //Minting new tokens
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    //Transferring tokens
    function transferTokens(address recipient, uint256 value) external {
        require(balanceOf(msg.sender) >= value, "You do not have enough Degen Tokens to transfer");
        approve(msg.sender, value);
        transferFrom(msg.sender, recipient, value);
    }
    
    //Displaying Items
    function merchItems() public pure returns (string memory merch) {
        merch = "Official Degen Merch:\n\
                1. Official Degen T-Shirt \n\
                2. Officical Degen BackPack\n\
                3. Official Degen Tumbler\n\
                4. Official Degen Socks \n\
                5. Official Degen Bracelet";
        return merch;
    }

    //Redeeming tokens
    function redeem(uint256 itemId) external {
        uint256[] memory costs = new uint256[](5);
        costs[0] = 10;
        costs[1] = 15; 
        costs[2] = 5;
        costs[3] = 8;
        costs[4] = 12;

        require(itemId > 0 && itemId <= costs.length, "Invalid item ID");
        uint256 cost = costs[itemId - 1];
        require(balanceOf(msg.sender) >= cost, "You do not have enough Degen Tokens to redeem this item");
        _burn(msg.sender, cost);
        emit Redeemed(msg.sender, itemId, cost);
    }

    event Redeemed(address indexed user, uint256 indexed itemId, uint256 cost);

    //Checking token balance
    function getBalance() external view returns (uint256) {
        return this.balanceOf(msg.sender);
    }

    //Burning tokens
    function burnTokens(uint256 value) external {
        require(balanceOf(msg.sender) >= value, "You do not have enough Degen Tokens to burn");
        _burn(msg.sender, value);
    }

    function decimals() override public pure returns (uint8) {
        return 0;
    }

}