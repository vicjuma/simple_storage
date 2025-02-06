// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {SimpleStorage} from "./SimpleStorage.sol";

contract SimpleStorageFactory {
    SimpleStorage public simpleStorage;

    function deploySimpleStorageContract(string memory _name, uint8 _favNum) public {
        simpleStorage = new SimpleStorage(_name, _favNum);
    }

}