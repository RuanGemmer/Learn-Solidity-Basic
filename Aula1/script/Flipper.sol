// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {Flipper} from "../src/Flipper.sol";

contract FlipperScript is Script {
    Flipper flipper;

    function setUp() public {}

    function run() public {
        
        //Será executado dentro da Blockchain
        vm.startBroadcast(0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80);
        
        //Deploy do contrato
        flipper = new Flipper();

        console2.log("ADDRESS: ", address(flipper));
        
        //Chamar o contrato e suas funções
        console2.log(flipper.getValue());
        flipper.flip();
        console2.log(flipper.getValue());


        vm.stopBroadcast();
    }
}

//Fazendo testes:

//build test [caminho script]
//anvil (irá retornar as chaves privadas e publicas da rede fake)

//Colocar blockchain para rodar
//anvil -b [tempo(s) - ex. 5]

//Conseguir o address da blockchain
//forge script [caminho do script] --rpc-url [host - "http://127.0.0.1:8545"] --broadcast
//Exemplo: forge script script/Flipper.sol --rpc-url "http://127.0.0.1:8545" --broadcast

//Chamada na blockchain
//Cast call --private-key [key] --rpc-url [host - "http://127.0.0.1:8545"] [bloochain address] [metodo a ser chamado]
//Exemplo: cast call --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --rpc-url "http://127.0.0.1:8545" "0x5FbDB2315678afecb367f032d93F642f64180aa3" "getValue()(bool)"
