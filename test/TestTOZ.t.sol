// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {DeployTOZ} from "../script/DeployTOZ.s.sol";
import {TokenFromOpenZeppelin} from "../src/TokenFromOpenZeppelin.sol";

contract TestTOZ is Test {
    TokenFromOpenZeppelin public toz;
    DeployTOZ public deployer;

    address bob = makeAddr("bob");
    address alice = makeAddr("alice");

    uint256 public constant STARTING_BALANCE = 100 ether;

    function setUp() public {
        deployer = new DeployTOZ();
        toz = deployer.run();

        vm.prank(msg.sender);
        toz.transfer(bob, STARTING_BALANCE);
    }

    function testBobBalance() public view {
        assertEq(toz.balanceOf(bob), STARTING_BALANCE);
    }

    function testAliceBalance() public view {
        assertEq(toz.balanceOf(alice), 0);
    }

    function testAllowance() public {
        uint256 initialAllowance = 1000;
        vm.prank(bob);
        toz.approve(alice, initialAllowance);
        assertEq(toz.allowance(bob, alice), initialAllowance);

        vm.prank(alice);
        uint256 transferAmount = 100;
        toz.transferFrom(bob, alice, transferAmount);
        assertEq(toz.balanceOf(bob), STARTING_BALANCE - transferAmount);
        assertEq(toz.balanceOf(alice), transferAmount);
    }
}
