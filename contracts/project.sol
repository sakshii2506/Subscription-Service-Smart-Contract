// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SubscriptionService {
    address public owner;
    uint256 public subscriptionFee;
    mapping(address => uint256) public subscribers;

    event Subscribed(address indexed user, uint256 timestamp);
    event Withdrawn(address indexed owner, uint256 amount);

    constructor(uint256 _fee) {
        owner = msg.sender;
        subscriptionFee = _fee;
    }

    function subscribe() external payable {
        require(msg.value == subscriptionFee, "Incorrect subscription fee");
        subscribers[msg.sender] = block.timestamp;
        emit Subscribed(msg.sender, block.timestamp);
    }

    function isSubscribed(address user) external view returns (bool) {
        return (block.timestamp - subscribers[user]) < 30 days;
    }

    function withdraw() external {
        require(msg.sender == owner, "Only owner can withdraw");
        uint256 balance = address(this).balance;
        require(balance > 0, "No funds to withdraw");
        payable(owner).transfer(balance);
        emit Withdrawn(owner, balance);
    }

    function changeSubscriptionFee(uint256 newFee) external {
        require(msg.sender == owner, "Only owner can change the fee");
        subscriptionFee = newFee;
    }
}
