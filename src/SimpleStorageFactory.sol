// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {SimpleStorage} from "./SimpleStorage.sol";

contract SimpleStorageFactory {
    SimpleStorage[] public s_simpleStorageContracts;

    function deploySimpleStorageContract(string memory _name, uint8 _favNum) public {
        SimpleStorage simpleStorage = new SimpleStorage(_name, _favNum);
        s_simpleStorageContracts.push(simpleStorage);
    }

    function simpleStorageStore(uint8 _index, string memory _name, uint8 _favNum) public {
        SimpleStorage simpleStorage = s_simpleStorageContracts[_index];
        simpleStorage.store(_name, _favNum);
    }

    function simpleStorageRead(uint8 _index, string memory _name) public view returns (uint8) {
        SimpleStorage simpleStorage = s_simpleStorageContracts[_index];
        return simpleStorage.retrieve(_name);
    }

}