// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// Lesson 9: Arrays and Structs

contract SimpleStorage {
    uint256 myFavoriteNumber;

    // Struct - a custom type that groups related data
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // Dynamic array of Person structs
    Person[] public listOfPeople;

    // Store favorite number
    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // Retrieve favorite number
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    // Add a person to the list
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
    }
}
