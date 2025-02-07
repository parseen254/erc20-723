// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

// Token standard reference: https://eips.ethereum.org/EIPS/eip-20
// ERC20 Requirements: https://eips.ethereum.org/EIPS/eip-20#specification

contract ManualToken {
    mapping(address => uint256) private balances;

    function name() public pure returns (string memory) {
        return "Manual Token";
    }

    function totalSupply() public pure returns (uint256) {
        return 100 ether;
    }

    function decimals() public pure returns (uint8) {
        return 18;
    }

    function balanceOf(address _owner) public view returns (uint256) {
        return balances[_owner];
    }

    function transfer(address _to, uint256 _value) public {
        uint256 previousBalances = balanceOf(msg.sender) + balanceOf(_to);
        balances[msg.sender] -= _value;
        balances[_to] += _value;

        require(balanceOf(msg.sender) + balanceOf(_to) == previousBalances);
    }

    // add this to be excluded from coverage report
    function test() public {}
}
