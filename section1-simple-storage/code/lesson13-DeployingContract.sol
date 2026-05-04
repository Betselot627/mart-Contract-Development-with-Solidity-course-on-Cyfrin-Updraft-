// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// Lesson 13: Deploying Your First Contract
// This is the final complete SimpleStorage contract
// Deployed on Sepolia testnet using MetaMask + Remix IDE

contract SimpleStorage {
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    // Store a favorite number on the blockchain
    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // Read the stored favorite number (free - no gas)
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    // Add a person with their favorite number
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
