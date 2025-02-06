// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { Script } from "forge-std/Script.sol";
import { TokenFromOpenZeppelin } from "../src/TokenFromOpenZeppelin.sol";

contract DeployTOZ is Script {
    uint256 public constant INITIAL_SUPPLY = 1000 ether;

    function run() external {
        vm.startBroadcast();
        new TokenFromOpenZeppelin(INITIAL_SUPPLY);
        vm.stopBroadcast();
    }
}