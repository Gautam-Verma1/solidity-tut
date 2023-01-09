// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MyModifier {
    address admin;
    struct Employee {
        uint empId;
        string empName;
        uint age;
    }
    constructor(){
        admin = msg.sender;
    }
    modifier isAdmin {
        require(admin == msg.sender);
        _;
    }
    modifier checkAge(uint eage) {
        if(eage > 20) 
            _;
        else 
            revert("Not eligible");    
    }

    Employee e;
    function details(uint _empId, string memory _name, uint _age) public isAdmin checkAge(19){
        e.empId = _empId;
        e.empName = _name;
        e.age = _age;
    }
}