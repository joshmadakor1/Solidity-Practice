// SPDX-License-Identifier: MIT
/*
    Requirements:
    Import SimpleStorage.sol
    Create a function that creates a SimpleStorageContract and stores them in an array
    Create a function that stores favoriteNumbers in the deploy simplestorage contracts
    Create a function that retrieves the stored values from the contracts in the array

*/
pragma solidity ^0.6.0;
import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }
    
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {

        // Contract Address
        // ABI (Application Binary Interface)
        SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).getNum();
    }
}