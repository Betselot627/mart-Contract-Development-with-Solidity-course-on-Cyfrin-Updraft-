// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// Lesson 11: Memory, Storage, and Calldata
// 
// storage  = permanent data stored on the blockchain
// memory   = temporary data, only exists during function execution
// calldata = temporary data for function inputs, cannot be modified

contract SimpleStorage {
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    // _name uses "memory" because strings are reference types
    // and we only need it temporarily inside this function
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
    }
}
