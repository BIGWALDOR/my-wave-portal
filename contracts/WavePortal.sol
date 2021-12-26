// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    mapping(address => uint256) waves;

    constructor() {}

    function wave() public {
        waves[msg.sender]++;
        totalWaves += 1;
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function getTotalWavesByAddress(address _addr)
        public
        view
        returns (uint256)
    {
        console.log("%s has waved %d times!", _addr, waves[_addr]);
        return waves[_addr];
    }
}
