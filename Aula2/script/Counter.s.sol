// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script, console} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
    Counter counter;

    function setUp() public {}

    function run() public {
        //Será executado dentro da Blockchain
        vm.startBroadcast(0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80);
        
        //Deploy do contrato
        counter = new Counter();

        console.log("ADDRESS: ", address(counter));
        
        //Chamar o contrato e suas funções
        console.log(counter.getNumber());
        counter.setNumber(22);
        console.log(counter.getNumber());


        vm.stopBroadcast();
    }
}
