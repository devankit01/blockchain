// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;


// returns blocknumber, timestamp, sender
contract MapContract {
    function blockInfo()
        public
        view
        returns (
            uint256 block_no,
            uint256 timestamp,
            address sender
        )
    {
        return (block.number, block.timestamp, msg.sender);
    }
}
