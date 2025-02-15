// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

import { IUpgradable } from '../../interfaces/IUpgradable.sol';

contract InvalidProxyImplementation is IUpgradable {
    function owner() external pure override returns (address) {
        return address(0);
    }

    function pendingOwner() external pure override returns (address) {
        return address(0);
    }

    function transferOwnership(address) external override {}

    function acceptOwnership() external override {}

    function implementation() external pure override returns (address) {
        return address(0);
    }

    function upgrade(
        address,
        bytes32,
        bytes calldata
    ) external override {}

    function setup(bytes calldata _data) external {}

    function contractId() external pure returns (bytes32) {
        return keccak256('invalid-proxy-implementation');
    }
}
