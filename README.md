# Subscription Service Smart Contract

## Description
This smart contract implements a simple subscription service where users pay a fixed fee to subscribe. Subscriptions last 30 days from the payment time.

## Features
- Users can subscribe by paying a set fee.
- The contract keeps track of subscriber timestamps.
- Owners can check if a user is actively subscribed.
- The owner can withdraw all collected funds.
- The owner can update the subscription fee.

## Functions
- `subscribe()`: Pay the subscription fee to activate your subscription.
- `isSubscribed(address)`: Check if a given address is currently subscribed.
- `withdraw()`: Allow the owner to withdraw contract balance.
- `changeSubscriptionFee(uint256)`: Owner can adjust the subscription fee.

## Deployment
1. Set the subscription fee in wei during deployment.
2. Deploy the contract using Remix, Hardhat, or another Ethereum dev tool.

## License
MIT


cntract address
0x13b738a8ab2acd9f42d7dd0445834d9709148042

![image](https://github.com/user-attachments/assets/245f4162-27af-4cce-81ba-4cf435696bb2)
