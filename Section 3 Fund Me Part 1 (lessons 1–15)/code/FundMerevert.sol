// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract FundMe {

    uint256 public myValue = 1;

    function fund() public payable {
        // Allow users to send $
        // Have a minimum $ sent
        // 1. How do we send ETH to this contract?
        myValue = myValue + 2;
        require(msg.value > 1e18, "didn't send enough ETH");
        // What is a revert?
        // Undo any actions that have been done, and
    }
}