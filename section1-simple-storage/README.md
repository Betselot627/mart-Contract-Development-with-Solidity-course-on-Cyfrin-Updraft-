# Section 1: Simple Storage

This section covers the fundamentals of Solidity through building a SimpleStorage smart contract.

## What I Learned

- Setting up a Solidity development environment using Remix IDE
- Basic variable types: `bool`, `uint256`, `int256`, `address`, `bytes`, `string`
- Writing functions with visibility specifiers (`public`, `view`, `pure`)
- Arrays and Structs for grouping related data
- Data locations: `storage`, `memory`, `calldata`
- Mappings to link keys to values
- Deploying a smart contract on Remix VM

## Contracts

| File | Description |
|------|-------------|
| `lesson5-SimpleStorage.sol` | First contract setup — basic contract structure |
| `lesson7-BasicTypes.sol` | Demonstrates all basic Solidity variable types |
| `lesson8-Functions.sol` | Store and retrieve functions with visibility |
| `lesson9-ArraysAndStructs.sol` | Person struct and dynamic array |
| `lesson11-MemoryStorageCalldata.sol` | Data locations explained with examples |
| `lesson12-Mappings.sol` | Mapping names to favorite numbers |
| `lesson13-DeployingContract.sol` | Final complete contract, deployed on Remix VM |

## Deployment

Contract deployed successfully on **Remix VM (Osaka)** local environment.
Attempted Sepolia testnet deployment via MetaMask — gas estimation failed due to 0 Sepolia ETH balance (faucets require mainnet ETH). Remix VM deployment confirmed contract works correctly.

## Resources
- Course: https://updraft.cyfrin.io/courses/solidity
- Remix IDE: https://remix.ethereum.org
