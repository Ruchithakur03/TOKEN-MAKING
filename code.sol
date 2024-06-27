
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
