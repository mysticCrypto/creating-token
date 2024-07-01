
# CustomToken Solidity Contract

## Overview

`CustomToken` is a simple ERC-20-like token implemented in Solidity. This contract allows the creation, minting, and burning of tokens.

## Features

- **Token Creation**: Specify token name, symbol, and total supply upon deployment.
- **Minting**: Ability to mint new tokens to any address.
- **Burning**: Ability to burn tokens from any address.

## Contract Details

- **Token Name**: The name of the token.
- **Token Symbol**: The symbol of the token.
- **Total Tokens**: The total supply of the tokens.

## Functions

### Constructor

\`\`\`solidity
constructor(string memory _tokenName, string memory _tokenSymbol, uint256 _totalTokens)
\`\`\`

- \`_tokenName\`: The name of the token.
- \`_tokenSymbol\`: The symbol of the token.
- \`_totalTokens\`: The initial total supply of the token.

### mint

\`\`\`solidity
function mint(address account, uint256 amount) public
\`\`\`

- \`account\`: The address to which the minted tokens will be assigned.
- \`amount\`: The number of tokens to mint.

### burn

\`\`\`solidity
function burn(address account, uint256 amount) public
\`\`\`

- \`account\`: The address from which the tokens will be burned.
- \`amount\`: The number of tokens to burn.

## Requirements

- The \`account\` parameter for both \`mint\` and \`burn\` functions must not be the zero address.
- The \`amount\` parameter for the \`burn\` function must not exceed the balance of the \`account\`.

## Example Usage

1. **Deploying the Contract:**

   \`\`\`solidity
   CustomToken token = new CustomToken("ExampleToken", "EXT", 1000000);
   \`\`\`

2. **Minting Tokens:**

   \`\`\`solidity
   token.mint(0xAbC123...789, 500);
   \`\`\`

3. **Burning Tokens:**

   \`\`\`solidity
   token.burn(0xAbC123...789, 200);
   \`\`\`


## Authors

- [@Harsh Kumar](https://www.github.com/mysticCrypto)

