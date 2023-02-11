// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract MapContract {
    struct Student {
        string name;
        uint256 class;
    }
    mapping(uint256 => Student) public StudentData;

    function setter(
        uint256 key,
        uint256 _class,
        string memory _name
    ) public {
        StudentData[key] = Student(_name, _class);
    }
}
