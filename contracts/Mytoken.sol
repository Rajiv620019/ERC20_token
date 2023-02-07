// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract MyToken {
    string public name;
    string public symbol;
    uint public decimals;
    uint public totalSupply;

    constructor (string memory _name, string memory _symbol, uint _decimals, uint _totalSupply) {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
        totalSupply = _totalSupply;

        // Tokens added to senders address after creation
        balanceOf[msg.sender] = totalSupply;
    }

    // view token balance in address
    mapping (address => uint) public balanceOf;

    event Transfer(address indexed _from, address indexed _to, uint _value);

    // Transfer token
    function transfer(address _to, uint _value) external returns (bool) {
        require( _to != address(0), "To address invalid");
        require (_value <= balanceOf[msg.sender], "Insufficient funds");
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    

}

