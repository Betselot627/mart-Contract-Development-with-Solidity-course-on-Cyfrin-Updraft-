// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// Lesson 7: Basic Variable Types

contract BasicTypes {
    // Boolean
    bool hasFavoriteNumber = true;

    // Unsigned Integer (only positive numbers)
    uint256 favoriteNumber = 88;

    // Signed Integer (positive and negative)
    int256 favoriteInt = -88;

    // Address
    address myAddress = 0xd3CdA913deB6f4967b2Ef3aa68f5A843aFB8f3A;

    // Bytes
    bytes32 favoriteBytes32 = "cat";
}
