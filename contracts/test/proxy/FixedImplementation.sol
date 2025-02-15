// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

contract FixedImplementation {
    uint256 public value;

    function set(uint256 _val) external {
        value = _val;
    }
}
