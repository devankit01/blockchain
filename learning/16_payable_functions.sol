// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract Pay {
    address payable useraddress =
        payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

    // pay to contract
    function payEther() public payable {}

    // get balance
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    // pay to other address
    function sendEtherAccount() public {
        useraddress.transfer(1 ether);
    }
}
