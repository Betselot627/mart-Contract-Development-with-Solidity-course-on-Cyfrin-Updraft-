The following is my solidity code:
// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract AINotHelpful {
    uint256 public myNumberOne;

    function assemblyStore(uint256 newNumber) external {
        assembly {
            sstore(0x00, newNumber)
        }
    }

    function assemblyView() external view returns (uint256) {
        assembly {
            mstore(0, result)
            return(0, 0x20)
        }
    }
}
When I deploy the contract and run assemblyView I get 0 no matter what I call assemblyStore with. How can I fix my code so that my assemblyView function returns the value of myNumberOne?


solution

// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract AINotHelpful {
    uint256 public myNumberOne;

    function assemblyStore(uint256 newNumber) external {
        assembly {
            sstore(0x00, newNumber)  // Store at storage slot 0
        }
    }

    function assemblyView() external view returns (uint256) {
        assembly {
            let value := sload(0x00)  // Load from storage slot 0
            mstore(0x00, value)       // Store in memory at position 0x00
            return(0x00, 0x20)        // Return 32 bytes from memory position 0
        }
    }
}