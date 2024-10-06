//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {

    // public variables here
    string public tokenName;
    string public tokenAbbreviation;
    uint public totalSupply;

    // mapping variable here
    mapping(address=>uint) public balances;

    constructor(string memory _tokenName, string memory _tokenAbbreviation, uint _initialSupply) {
        tokenName = _tokenName;
        tokenAbbreviation = _tokenAbbreviation;
        totalSupply = _initialSupply;
        balances[msg.sender] = _initialSupply;
    }

    // mint function
    function mint(address _address, uint _value) public{
        totalSupply += _value;
        balances[_address] += _value;
    }

    event LogMessage(string message);
    // burn function
    function burn(address _address, uint _value) public{
        if(balances[_address] >= _value){
            totalSupply -= _value;
            balances[_address] -= _value;
        }
        else{
            string memory message = "Insufficient balance to burn";
            emit LogMessage(message);
        }
        
    }

}
