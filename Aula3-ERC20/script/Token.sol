// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script, console} from "forge-std/Script.sol";
import {Token} from "../src/Token.sol";

contract TokenScript is Script {
    Token token;

    function setUp() public {}

    function run() public {
        //Será executado dentro da Blockchain
        vm.startBroadcast(0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80);
        
        //Deploy do contrato
        token = new Token();

        console.log("ADDRESS: ", address(token));
        
        vm.stopBroadcast();
    }
}
