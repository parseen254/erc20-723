# 🪙 ERC20 Token Implementation with OpenZeppelin

This project demonstrates a basic ERC20 token implementation using OpenZeppelin contracts and Foundry for testing and deployment.

## 🎯 Overview

The project includes:

- 💎 A standard ERC20 token implementation using OpenZeppelin
- ✅ Comprehensive test suite
- 🚀 Deployment scripts

## 🛠 Foundry Development Tools

This project uses Foundry's suite of tools:

- 🔨 **Forge**: For testing and deployment
- 🎮 **Cast**: For contract interaction
- ⚒️ **Anvil**: For local development

## 🏃‍♂️ Getting Started

### 📦 Install Dependencies

```shell
forge install
```

### 🏗️ Build

```shell
forge build
```

### 🧪 Test

```shell
forge test
```

### 🚀 Deploy

```shell
forge script script/DeployTOZ.s.sol:DeployTOZ --rpc-url <your_rpc_url> --private-key <your_private_key>
```

## ✨ Token Features

- 💫 Standard ERC20 functionality
- 🎁 Initial supply minted to deployer
- 💸 Transfer and approval mechanisms
- 🔢 Decimals: 18

## 🧪 Testing

The test suite includes:

- 💰 Balance checking
- 📤 Transfer functionality
- ✅ Allowance and transferFrom operations

Run tests with verbosity:

```shell
forge test -vv
```

## 📜 License

MIT
