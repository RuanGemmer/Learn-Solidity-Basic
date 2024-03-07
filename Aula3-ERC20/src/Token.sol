// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Token {
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;

    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowances;

    event Approval(address _owner, address _spender, uint256 _value);
    event Transfer(address from, address to, uint256 _value);

    function balanceOf(address _owner) public view returns (uint256) {
        uint256 balanceOfUser = balances[_owner];
        return balanceOfUser;
    }

    function transfer(address _to, uint256 _value) public {
        require(balances[msg.sender] >= _value, "INSUFFICIENT_AMOUNT");

        balances[msg.sender] -= _value;
        balances[_to] += _value;

        emit Transfer(msg.sender, _to, _value);
    }

    function approve(address _spender, uint256 _value) public {
        allowances[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
    }

    function transferFrom(address _from, address _to, uint256 _value) public {
        require(allowances[_from][msg.sender] >= _value, "INSUFFICIENT_AMOUNT");

        balances[_from] -= _value;
        balances[_to] += _value;

        emit Transfer(_from, _to, _value);
    }

    function allowance(address _owner, address _spender) public view returns (uint256) {
        return allowances[_owner][_spender];
    }

    constructor() {
        name = "Ruan Nearx Token Test";
        symbol = "REG";
        decimals = 18;

        totalSupply = 1000000 * 10e18;
        balances[msg.sender] = 10000 * 10e18;
    }
}
