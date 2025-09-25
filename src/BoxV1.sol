// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {UUPSUpgradeable} from "@openzeppelin/contracts/proxy/utils/UUPSUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "@openzeppelin-upgradeable/contracts/access/OwnableUpgradeable.sol";

// implementation provides the logic BUT the storage is stored in the proxy
// proxy -> deploys implementation -> calls an `initializer` function

contract BoxV1 is Initializable, UUPSUpgradeable, OwnableUpgradeable {
    uint256 value;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function intialize() public initializer {
        __Ownable_init(msg.sender); // sets owner
    }

    function getValue() external view returns (uint256) {
        return value;
    }

    function version() external pure returns (uint256) {
        return 1;
    }

    function _authorizeUpgrade(address newImplementation) internal override {}
}
