// SPDX-License-Identifier: MIT
// Siempre se debe especificar la versión de solidity con la que se va a trabajar.
pragma solidity ^0.8.0;

import "./zombiefeeding.sol";
import "./ownable.sol";

contract ZombieHelper is ZombieFeeding {

    uint levelUpFee = 0.001 ether;


    modifier aboveLevel(uint _level, uint _zombieId) {
        require( zombies[_zombieId].level >= _level);
        _;
    }

    function withdraw() external onlyOwner {
        address payable _owner = payable(owner()); // Explicit conversion to payable address
        _owner.transfer(address(this).balance);
    }

    function setLevelUpFee(uint _fee) external onlyOwner(){
        levelUpFee = _fee;
    }


    function levelUp(uint _zombieId) external payable{
        require(msg.value == levelUpFee);
        zombies[_zombieId].level++;
    }

    //Note: that calldata is somehow similar to memory, but it's only available to external functions.
    function changeName(uint _zombieId, string calldata _newName) external aboveLevel(2, _zombieId) onlyOwnerOf(_zombieId){
        zombies[_zombieId].name = _newName;
    }

    function changeDna(uint _zombieId, uint _newDna) external aboveLevel(20, _zombieId) onlyOwnerOf(_zombieId){
        zombies[_zombieId].dna = _newDna;
    }

    //This is the way of getting the zombies owned by an address without any gas cost. Amazing! isn't it?
    function getZombiesByOwner(address _owner) external view returns(uint[] memory) {
        uint[] memory result = new uint[](ownerZombieCount[_owner]);
        uint counter = 0;
            for (uint i = 0; i < zombies.length; i++) {
                if(zombieToOwner[i] == _owner){
                    result[counter] = i;
                    counter++;
                }
            }
    return result;
  }



}


