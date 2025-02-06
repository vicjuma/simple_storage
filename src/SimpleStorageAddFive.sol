// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {SimpleStorage} from "./SimpleStorage.sol";

contract SimpleStorageAddFive is SimpleStorage {
    constructor(string memory _name, uint8 _favNum) SimpleStorage(_name, _favNum){}

    function store(string memory _name, uint8 _favNum) public override {
        addPerson(_name, (_favNum + 5));
    }
}