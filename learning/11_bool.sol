// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract boolContract {
    bool public value = true;

    function check(uint256 a) public returns (bool) {
        if (a > 100) {
            value = true;
        } else {
            value = false;
        }
        return value;
    }
}
