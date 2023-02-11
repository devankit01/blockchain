// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract EnumContract {
    enum user {
        allowed,
        not_allowed,
        wait
    }

    user public u1 = user.allowed;
    user public u2 = user.not_allowed;
}
