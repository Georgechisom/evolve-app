// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Script, console} from "forge-std/Script.sol";
import {Evolve} from "../src/evolve.sol";

contract EvolveScript is Script {
    Evolve public evolveMe;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        evolveMe = new Evolve();

        vm.stopBroadcast();
        console.log("evolve contract deployed at:", address(evolveMe));
    }
}