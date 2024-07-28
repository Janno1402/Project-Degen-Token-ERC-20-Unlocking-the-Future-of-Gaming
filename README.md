# Project-Degen-Token-ERC-20-Unlocking-the-Future-of-Gaming
This Solidity (Smart-Contract) program is a simple project that demonstrates how snowtrace interacts with smart contracts written in solidity. The purpose of this program is to demonstrate what I've learned so far in taking the Advanced course on ETH from metacrafters.
## Description
This DegenToken smart contract is an ERC20 token built on the Ethereum blockchain. It facilitates the minting, transferring, redeeming, and burning of tokens, primarily intended for use within a gaming platform. The contract is designed to reward players with tokens that can be redeemed for in-game items and ensures secure token management by leveraging OpenZeppelin libraries.
#### Features:
1. Minting New Tokens: The platform allows the creation of new tokens and their distribution as rewards. Only the contract owner can mint new tokens.
2. Transferring Tokens: Players can transfer their tokens to other players.
3. Redeeming Tokens: Players can redeem their tokens for items in the in-game store.
4. Checking Token Balance: Players can check their token balance at any time.
5. Burning Tokens: Anyone can burn their own tokens that are no longer needed.

### Smart Contract (Solidity)
```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {
    constructor() ERC20("Degen", "DGN") Ownable(msg.sender){}

    //Minting new tokens
    function mint(address to, uint256 amount) public onlyOwner {
    }

    //Transferring tokens
    function transferTokens(address recipient, uint256 value) external {
    }
    
    //Displaying Items
    function merchItems() public pure returns (string memory merch) {
    }

    //Redeeming tokens
    function redeem(uint256 itemId) external {
    }

    event Redeemed(address indexed user, uint256 indexed itemId, uint256 cost);

    //Checking token balance
    }

    //Burning tokens
    function burnTokens(uint256 value) external {
    }

    function decimals() override public pure returns (uint8) {
    }
}
```
## Getting Started
### Prerequisites
- **MetaMask:** Install MetaMask extension for your browser.
![image](https://github.com/user-attachments/assets/3c21708b-ef51-4d7f-8b5f-f48c6f8fda2b)

- **Snowtrace (TestNet):** Connect your metamask account to the Snowtrace testnet.
![image](https://github.com/user-attachments/assets/648be679-1ea9-46c1-a781-50b57114137d)
Proof of Snowtrace Transaction History (https://testnet.snowtrace.io/address/0x7A2B7D42eDd18dF5C20650d66aC635874650b590)

- **Avalanche TestNet Faucet:** Request AVAX tokens from the avalanche testnet faucet.
![image](https://github.com/user-attachments/assets/ae801c9c-159c-4891-9f17-ae949b082789)

- **Remix Ethereum:** Compiling the Smart Contract.
![image](https://github.com/user-attachments/assets/872af9d8-5ecf-47dc-9a36-2f7197565be6)

### Running the Smart Contract
- First: connect your Metamask account to Snowtrace TestNet.
- Second: Request AVAX tokens from the avalanche testnet Faucet in order to deploy the contract.
- Third: Compile the smart contract from Remix Ethereum and then deploy it.
- Fourth: Test all the functions by checking the console as well as the live preview of transaction history from the Snowtrace TestNet.

## Authors
Christian Benjamin ([@_cbso](https://x.com/cbso_)) - Metacrafter Student
## License
This project is licensed under the Christian Benjamin License. See the LICENSE.md file for details.
