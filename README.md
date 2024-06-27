# Metacrafter-Project-Create-a-Token
A basic smart contract to manage a cryptocurrency token called "MyTokens," allowing users to mint (create) and burn (destroy) tokens while keeping track of balances..

# Description
This project involves developing a smart contract for a cryptocurrency token named "MyTokens" (symbol: MTKs) using Solidity. The contract enables users to mint (create) and burn (destroy) tokens, with functionalities to adjust the total supply and individual balances accordingly. By maintaining a mapping of address balances, the contract ensures accurate tracking of token ownership. This project provides a foundational framework for managing digital assets, suitable for educational purposes, experimental projects, or as a starting point for more complex token systems..

# Getting Started
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., token.sol). Copy and paste the following code into the file:

// SPDX-License-Identifier: MIT pragma solidity 0.8.18;

/* REQUIREMENTS 1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply) 2. Your contract will have a mapping of addresses to balances (address => uint) 3. You will have a mint function that takes two parameters: an address and a value. The function then increases the total supply by that number and increases the balance of the “sender” address by that amount 4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. It will take an address and value just like the mint functions. It will then deduct the value from the total supply and from the balance of the “sender”. 5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal to the amount that is supposed to be burned. */


pragma solidity ^0.8.0;

contract MyToken {
    // Public variables
    string public tokenName = "META";
    string public tokenSymbol = "MTA";
    uint public totalSupply = 0;

    // Mapping variable
    mapping(address => uint) public balances;

    // Mint function
    function mint(address _address, uint _value) public  {
        totalSupply += _value;
        balances[_address] += _value; 
    }

    // Burn function
    function burn(address _address, uint _value) public  {
        if (balances[_address] >= _value) {
            totalSupply -= _value;
            balances[_address] -= _value;
            
        }
    }
}
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile token.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "token" contract from the dropdown menu, and then click on the "Deploy" button. Now just call the functions name ,symbol and total supply to get the name function and total supply of amount of tokens.

To mint Tokens call mint function and copy the address and paste it under _to : section and add the amount you want to add under _ amount section then just click on transact and you can check the added amount by calling again totalsupply function.

To destroy go to the burn expand it and paste the address to the _address section and amount to be burn to _burn section then just click on transact and by calling again totalsupply you can check the updated amount.

# Authors
Ruchi Thakur
