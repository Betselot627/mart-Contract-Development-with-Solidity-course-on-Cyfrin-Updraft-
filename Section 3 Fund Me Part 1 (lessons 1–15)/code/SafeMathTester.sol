// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/**
 * @title SafeMathTester
 * @dev This contract is used to demonstrate integer overflow and the 'unchecked' keyword in Solidity 0.8.0+
 */
contract SafeMathTester {
    uint8 public bigNumber = 255;

    /**
     * @dev By default, Solidity 0.8.0+ will revert on overflow.
     * If this function is called without 'unchecked', it will fail/revert because 255 + 1 > 255 (max uint8).
     */
    function add() public {
        bigNumber = bigNumber + 1;
    }

    /**
     * @dev Wrapping code in 'unchecked' disables overflow/underflow checks.
     * This makes the code more gas efficient but allows 'bigNumber' to wrap around to 0.
     */
    function addUnchecked() public {
        unchecked {
            bigNumber = bigNumber + 1;
        }
    }
}
