
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MyFirstContract {

    string public str = "3";
    uint public num = 4;
    
    function getNum() public view returns(uint)  {
        return num;   
    }
}