# Standard ERC20 Contract

This is a standard ERC20 token contract with additional mint, burn, and custom transfer functions. It is implemented using the OpenZeppelin library.

## Description

This contract provides basic ERC20 functionality along with the following custom functions:

- `mint(address account, uint256 amount)`: Mints new tokens and assigns them to the specified account.
- `burn(address account, uint256 amount)`: Burns a specified amount of tokens from the specified account.
- `transfer(address recipient, uint256 amount)`: Allows the owner to transfer tokens to a specified recipient.
