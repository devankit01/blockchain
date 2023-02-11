// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 < 0.9.0; // Hello all!!

contract EventContract {
    struct Event{
        address organiser;
        string name;
        uint eventEndDate;
        uint price;
        uint ticketCount;
        uint ticketRemain;
    }

    mapping(uint=>Event) public events;
    mapping(address=>mapping(uint=>uint)) public tickets;
    uint public nextId;

    function createEvent( string memory name, uint eventEndDate, uint price, uint ticketCount) external {
        require(eventEndDate>block.timestamp,  "You can organise event for future date");
        require(ticketCount>0, "You can organise only if ticketcount is 0");

        events[nextId] = Event(msg.sender, name, eventEndDate, price, ticketCount, ticketCount);
        nextId++;
    }

    function buyTicket(uint id, uint quantity) external payable {
        require(events[id].eventEndDate != 0, "Event does not exists");
        require(events[id].eventEndDate > block.timestamp, "Event occurred");

        Event storage _event = events[id];
        require(msg.value ==(_event.price * quantity), "Ether is less to make transaction");
        require(_event.ticketCount >= quantity , "NO Tickets");
        _event.ticketRemain -= quantity;
        tickets[msg.sender][id] += quantity;

    }

    function transferTicket(uint eventId, uint quantity, address to) external{
        require(events[eventId].eventEndDate != 0, "Event does not exists");
        require(events[eventId].eventEndDate > block.timestamp, "Event occurred");
        require(tickets[msg.sender][eventId] >= quantity, "You do not have enough tickets to transfer");
        tickets[msg.sender][eventId] -= quantity;
        tickets[to][eventId] += quantity;

    }
}