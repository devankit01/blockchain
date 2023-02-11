// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract Condition {
    function check(int a) public pure returns (string memory) {
        string memory value;

        if (a > 0) {
            value = "greater than 0";
        } else if (a == 0) {
            value = "equal to 0";
        } else {
            value = "less than zero";
        }
        return value;
    }
}
