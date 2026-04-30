📦 Storage Factory (Solidity)

This project demonstrates how smart contracts can deploy, manage, and interact with other contracts using Solidity.

🚀 Overview

The StorageFactory contract is capable of:

Deploying multiple SimpleStorage contracts
Storing their addresses in an array
Interacting with each deployed contract (store & retrieve values)
🧠 Key Concepts
🔹 Contract Deployment

Use the new keyword to deploy contracts from another contract:

SimpleStorage simpleStorage = new SimpleStorage();
🔹 Managing Multiple Contracts

Track deployed contracts using a dynamic array:

SimpleStorage[] public listOfSimpleStorageContracts;
🔹 Interacting with Contracts

Call functions on deployed contracts via index:

listOfSimpleStorageContracts[_index].store(_value);
listOfSimpleStorageContracts[_index].retrieve();
🔹 Imports

Reuse code across files using named imports:

import { SimpleStorage } from "./SimpleStorage.sol";
🔹 Composability

Smart contracts can seamlessly interact with each other — a core concept in blockchain and DeFi.

🔹 Inheritance & Overriding

Extend and modify functionality:

contract AddFiveStorage is SimpleStorage {
    function store(uint256 _num) public override {
        favoriteNumber = _num + 5;
    }
}
📁 Contracts
SimpleStorage.sol – Basic storage contract
AddFiveStorage.sol – Inherits and modifies behavior
StorageFactory.sol – Deploys and interacts with contracts