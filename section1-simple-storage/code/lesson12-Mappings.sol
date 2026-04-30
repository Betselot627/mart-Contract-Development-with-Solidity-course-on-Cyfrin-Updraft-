// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// Lesson 12: Mappings
// A mapping links a key to a value (like a dictionary)
// Here we map a person's name to their favorite number

contract SimpleStorage {
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    // Mapping: name (string) => favoriteNumber (uint256)
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        // Also add to the mapping
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
