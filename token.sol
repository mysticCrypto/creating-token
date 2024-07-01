// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CustomToken {
    string public tokenName;
    string public tokenSymbol;
    uint256 public totalTokens;

    mapping(address => uint256) public balances;

    constructor(string memory _tokenName, string memory _tokenSymbol, uint256 _totalTokens) {
        tokenName = _tokenName;
        tokenSymbol = _tokenSymbol;
        totalTokens = _totalTokens;
        balances[msg.sender] = _totalTokens;
    }

    function mint(address account, uint256 amount) public {
        require(account != address(0), "error: cannot mint to zero address");

        totalTokens += amount;
        balances[account] += amount;
    }

    function burn(address account, uint256 amount) public {
        require(account != address(0), "error: cannot burn from the zero address");
        require(balances[account] >= amount, "error: burn amount exceeds balance");

        totalTokens -= amount;
        balances[account] -= amount;
    }
}
