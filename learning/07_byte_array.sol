// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

// static bytesarray
// contract BytesArray {

// bytes3 public byteArray1; // 2 bytes array

// function setter() public{
//     byteArray1 = "c";
// }

// }

// dynamic bytesarray
contract DynamicBytesArray {
    bytes public bytesarray = "code";

    function push() public {
        bytesarray.push("d"); //coded
    }

    function getAtIndex(uint256 idx) public view returns (bytes1) {
        return bytesarray[idx];
    }
}
