// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract A {
    string public name = "Thi is unusual";
    function details() public virtual returns(string memory) {
        return "in A";
    }
}

contract B is A {
    constructor() {
        name = "This was constructor";  // shadowing effect : changing state variable
    }
    function details() public pure virtual override returns (string memory) {
        return "in B";
    }
}

contract C is A, B {
    function details() public pure virtual override(A, B) returns (string memory) {
        return super.details();
    }
}

contract D is C {
    function details() public pure virtual override returns (string memory) {
        return super.details();
    }
}
