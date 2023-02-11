// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract local {
    // Note :  memory keyword can't be used at contract level

    // pure functions defines that it doesn't intertacting with state variables
    function StoreLocalVariable() public pure returns (uint256) {
        uint256 age = 22;

        // string datatype used in contract but if you want to use inside function, use memory keyword
        // string memory name = "ankit";

        return age;
    }
}
