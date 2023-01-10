// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MyEvents {
    event Deposit(address indexed _from, uint indexed _id, uint _value);
    event MyDeposit();

    function deposit(uint _id) public payable {
        emit Deposit(msg.sender, _id, msg.value);
        emit MyDeposit();
    }
}