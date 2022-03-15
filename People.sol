// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.6.0;

contract SimpleStorage {
    // This will get initialized to 0!
    uint256 favoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function getNum() public view returns (uint256) {
        return favoriteNumber;
    }
    
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        nameToFavoriteNumber[_name] = _favoriteNumber;
        //people.push(People({favoriteNumber: _favoriteNumber, name: _name}));
    }

    function peopleCount() public view returns (uint256) {
        return people.length;
    }

    
}