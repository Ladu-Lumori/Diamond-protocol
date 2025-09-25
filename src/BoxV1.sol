// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract BoxV1 {
    uint256 value;

    function getValue() external view returns (uint256) {
        return value;
    }

    function getVersion() external pure returns (uint256) {
        return 1;
    }
}
