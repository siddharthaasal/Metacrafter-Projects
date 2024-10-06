# eth-avax-mod-1-updated
# Voting System Smart Contract

## Introduction

The **Voting System Smart Contract** exemplifies the utilization of `require()`, `assert()`, and `revert()` keywords for error handling. This contract showcases how these keywords can be applied effectively to create a secure and reliable voting system using the Solidity programming language.

## Functions

### vote
 It highlights the usage of `require()` to validate inputs. When a user casts a vote, the function checks two conditions before proceeding:
- If the provided candidate index is valid.
- If the user's age is greater than 18, which ensures they are eligible to vote.

### assert

Within the `vote` function, an `assert()` statement has been employed to ensure internal consistency. It verifies that the user's age is greater than 18 after passing the `require()` checks.

### getCandidateSafe (using revert)

The `getCandidateSafe` function is responsible for fetching information about a specific candidate at a given index. It demonstrates the use of `revert()` by employing a custom error message and `revert` statement to handle cases where an invalid candidate index is provided.

## Usage

To understand the usage of `require()`, `assert()`, and `revert()` in this contract:

1. Deploy the contract to an Ethereum-compatible blockchain network using a Solidity compiler compatible with version `0.8.18` or higher.
2. Interact with the deployed contract using the `vote` and `getCandidateSafe` functions. Observe how `require` checks user eligibility and validates input, `assert` ensures internal consistency, and `revert` provides clear feedback for invalid inputs.

## Authors

Siddharth Aasal
siddharthaasal@gmail.com

## License

This contract is released under the MIT License.
