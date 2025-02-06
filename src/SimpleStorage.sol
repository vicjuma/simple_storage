// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract SimpleStorage {
    uint8 s_favoriteNumber;

    struct Person {
        string name;
        uint8 userFavNum;
    }

    mapping (string => uint8) public nameToFavoriteNumber;

    Person[] public people;

    function addPerson(string memory _name, uint8 _favNum) internal {
        Person memory person = Person({name: _name, userFavNum: _favNum});
        people.push(person);
        nameToFavoriteNumber[_name] = _favNum;
    }

    constructor(string memory _name, uint8 _favNum) {
        addPerson(_name, _favNum);
    }

    function store(string memory _name, uint8 _favNum) public {
        addPerson(_name, _favNum);
    }

    function retrieve(string memory _name) public view returns (uint8) {
        return nameToFavoriteNumber[_name];
    }

}