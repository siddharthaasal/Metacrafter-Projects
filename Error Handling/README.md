# eth-avax-module-1
# MetacrafterProject

In this project, I have explained the use of require, assert, and revert keywords. 

## Introduction

The **MetacrafterProject** contract focuses on three error handling functions provided by Solidity: `require()`, `assert()`, and `revert()`. Each function serves a distinct purpose in handling errors, ensuring data integrity, and communicating meaningful feedback to users interacting with the contract.

## Functions

### implement_require

The `implement_require` function demonstrates the use of the `require()` statement for input validation. It takes input paramenter as 
"rent_to_pay" and checks if saved_money>=rent_to_pay then it returns saved_money-=rent_to_pay. If the condition is not met, the function reverts with an error message indicating the requirement that was violated.

### assertFunction

The `assertFunction` function showcases the `assert()` statement. It takes an input num and checks whether or not it is even, if yes then it return this num.

### revertFunction

The `revertFunction` function employs the `revert()` statement to explicitly trigger a revert. It take an input age and checks if age>18 or not, if yes then it updates votes to votes+1, otherwise it reverts with a message "You are not eligible to vote."

## Usage

To use this contract, you can follow these steps:

1. Compile the contract using a Solidity compiler compatible with version `0.8.18` or higher.
2. Deploy the compiled contract to an Ethereum-compatible blockchain network of your choice.
3. Interact with the deployed contract.
 
## Authors

- Siddharth Aasal
- [ siddharthaasal@gmail.com ] 

## License

This contract is released under the MIT License. 

