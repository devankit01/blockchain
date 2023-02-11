// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract DynamicArray {
    // dynamiic array
    uint256[] public arr;

    // push array
    function pushElem(uint256 item) public {
        arr.push(item);
    }

    // length array
    function Len() public view returns (uint256) {
        return arr.length;
    }

    // pop array
    function popElement() public {
        arr.pop();
    }
}
