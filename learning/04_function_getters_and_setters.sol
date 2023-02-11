// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract GetSetFunction {
    uint256 salary = 3000;

    // get salary
    function getSalary() public view returns (uint256) {
        return salary;
    }

    // set salary without argument
    function incrementSalary() public {
        salary = salary + 100;
    }

    // set salary with argument
    function setSalary(uint256 Newsalary) public {
        salary = Newsalary;
    }
}
