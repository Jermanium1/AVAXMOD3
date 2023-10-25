// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts@4.9.0/token/ERC20/ERC20.sol";

contract StandardToken is ERC20 {
    address public owner;

    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    function mint(address account, uint256 amount) external onlyOwner{
        require(account != address(0), "Wrong address");
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) external {
        require(account != address(0), "Wrong address");
        require(amount <= balanceOf(account), "Not Enough Balance");
        _burn(account, amount);
    }
