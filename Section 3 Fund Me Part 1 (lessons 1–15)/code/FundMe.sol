// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe {
    
    uint256 public minimumUsd = 5;   // $5 USD

    AggregatorV3Interface public priceFeed;

    constructor() {
        // Sepolia Testnet - ETH / USD Price Feed
        priceFeed = AggregatorV3Interface(
            0x694AA1769357215DE4Fac088BF1f309aDC325306
        );
    }

    // Allow users to fund the contract with a minimum amount in USD
    function fund() public payable {
        require(
            getConversionRate(msg.value) >= minimumUsd,
            "Didn't send enough ETH"
        );
    }

    // Get the latest ETH price in USD (18 decimals)
    function getPrice() public view returns (uint256) {
        (, int256 answer,,,) = priceFeed.latestRoundData();

        require(answer > 0, "Invalid price from oracle");

        // Chainlink returns price with 8 decimals, convert to 18 decimals
        return uint256(answer) * 1e10;
    }

    // Convert ETH amount to its USD value
    function getConversionRate(uint256 ethAmount) public view returns (uint256) {
        uint256 ethPrice = getPrice();
        uint256 ethAmountInUsd = (ethPrice * ethAmount) / 1e18;
        return ethAmountInUsd;
    }

    // Get Chainlink aggregator version
    function getVersion() public view returns (uint256) {
        return priceFeed.version();
    }

    // Get historical round data
    function getRoundData(uint80 _roundId)
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        return priceFeed.getRoundData(_roundId);
    }
}