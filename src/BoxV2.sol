// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract BoxV2 {
    uint256 value;

    function setValue(uint256 _value) external {}

    function getValue() external view returns (uint256) {
        return value;
    }

    function getVersion() external pure returns (uint256) {
        return 1;
    }
}
