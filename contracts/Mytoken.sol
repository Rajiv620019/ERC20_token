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
    }
}

