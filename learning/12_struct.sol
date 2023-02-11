// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

struct Student {
    uint256 rollNumber;
    string name;
}

contract StudentContract {
    Student public s;

    constructor(uint256 _roll, string memory _name) {
        s.rollNumber = _roll;
        s.name = _name;
    }

    function change(uint256 _roll, string memory _name) public {
        Student memory update = Student({rollNumber: _roll, name: _name});
        s = update;
    }
}
