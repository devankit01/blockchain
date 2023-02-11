// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

// State variables store over blockchain you can't update it unless you're using below method

contract State {
    uint256 public age;

    // update state variables
    function setAge() public {
        age = 10;
    }
}
