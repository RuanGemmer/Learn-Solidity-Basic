// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Test, console} from "forge-std/Test.sol";
import {Token} from "../src/Token.sol";

contract CounterTest is Test {
    Token public token;

    function setUp() public {
        token = new Token();
    }

}
