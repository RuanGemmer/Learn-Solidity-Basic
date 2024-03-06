// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract Flipper{
    bool public value;

    constructor() {
        value = true;
    }

    function getValue() external returns(bool) {
        return value;
    }

    function flip() external {
        value = !value;
    }


}
