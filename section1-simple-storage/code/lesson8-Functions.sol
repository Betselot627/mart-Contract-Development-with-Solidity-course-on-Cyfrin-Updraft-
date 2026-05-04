// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// Lesson 8: Functions

contract SimpleStorage {
    uint256 myFavoriteNumber;

    // Store function - updates myFavoriteNumber
    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // Retrieve function - returns myFavoriteNumber
    // view means it doesn't modify state
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }
}
