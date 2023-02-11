// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract Person {
    string name;
    uint256 age;

    constructor() {
        name = "Ankit";
        age = 22;
    }

    // view functions
    function getName() public view returns (string memory) {
        return name;
    }

    function getAge() public view returns (uint256) {
        return age;
    }

    // update functions
    function updatAge() public {
        age = age + 1;
    }
}
