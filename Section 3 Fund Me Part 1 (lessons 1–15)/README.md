# 💰 FundMe Smart Contract

A simple Ethereum smart contract that allows users to fund the contract with ETH, ensuring a minimum USD value using Chainlink price feeds.

---

## 🚀 Features

* Accept ETH payments from users
* Enforces a **minimum contribution of $5 USD**
* Uses **Chainlink Price Feeds** for real-time ETH/USD conversion
* Written in Solidity ^0.8.18
* Deployable on **Sepolia Testnet**

---

## 🛠️ Technologies Used

* Solidity
* Chainlink Oracles
* Ethereum (Sepolia Testnet)
* Remix / Hardhat / Foundry

---

## 📜 Smart Contract Overview

### 🔹 Contract: `FundMe`

#### Key Functions:

* `fund()`

  * Allows users to send ETH
  * Requires minimum $5 worth of ETH

* `getPrice()`

  * Returns ETH price in USD (18 decimals)

* `getConversionRate(uint256 ethAmount)`

  * Converts ETH amount → USD

* `getVersion()`

  * Returns Chainlink price feed version

* `getRoundData(uint80 roundId)`

  * Returns historical price data

---

## ⚙️ Installation & Setup

### 🟢 Option 1: Remix (Easiest)

1. Go to https://remix.ethereum.org
2. Create a new file: `FundMe.sol`
3. Paste the contract code
4. Compile using Solidity ^0.8.18
5. Deploy using **Injected Provider (MetaMask)**

---

### 🟡 Option 2: Hardhat

#### 1. Initialize project

```bash
npm init -y
npm install --save-dev hardhat
npx hardhat
```

#### 2. Install Chainlink contracts

```bash
npm install @chainlink/contracts
```

#### 3. Add contract

Place `FundMe.sol` inside:

```
contracts/
```

#### 4. Compile

```bash
npx hardhat compile
```

---

## 🌐 Chainlink Price Feed

* Network: **Sepolia**
* ETH/USD Feed Address:

```
0x694AA1769357215DE4Fac088BF1f309aDC325306
```

---

## ⚠️ Important Notes

* Do NOT use CDN imports like:

```
https://cdn.jsdelivr.net/...
```

* Always use:

```solidity
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
```

* Chainlink returns prices with **8 decimals**, so we convert to **18 decimals**

---

## 📊 Example

If ETH = $2000
User sends 0.01 ETH

→ 0.01 ETH ≈ $20
→ ✅ Transaction succeeds

If user sends too little ETH:

→ ❌ Transaction reverts

---

## 🔐 Future Improvements

* Add `withdraw()` function (owner-only)
* Track funders
* Store contributions
* Add frontend (React / Web3.js / Ethers.js)

---

## 📄 License

MIT License

---

## 🙌 Acknowledgements

* Chainlink Documentation
* Ethereum Developer Community
* Patrick Collins Solidity Course

---
