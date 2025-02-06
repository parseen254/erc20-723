// SPDX-Licence-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TokenFromOpenZeppelin is ERC20 {
    constructor(uint256 initialSupply) ERC20("TokenFromOpenZeppelin", "TOZ") {
        _mint(msg.sender, initialSupply);
    }
}