// SPDX-License-Identifier: GPL-3.0
/*
    Requirements:
    Create a Person -> FavoriteNumber mapping that can be updated publicly
    FavoriteNumber can be retrieved publicly based on the person
    Create a People struct and array of People, allow people to be added publicly
    People can be retrieved publicly by index
    Allow the ability to get the length of the people array publicly
    When the contract is deployed, automatically create any random People


*/
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

   constructor() public {
       people.push(People({favoriteNumber:69,name:"sicko"}));
    }

    /* Functions Start */
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