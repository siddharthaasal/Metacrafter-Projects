# VotingSystem Contract

## Overview

This is a simple VotingSystem smart contract implemented in Solidity. The contract allows users to vote for their favorite candidate among a predefined list of options. It demonstrates the usage of the `require`, `assert`, and `revert` statements for handling conditions and errors in smart contracts.


## Contract Details

The contract defines a `Candidate` struct to store the candidate's name and vote count. There is an array of candidates, and users can vote for a specific candidate by their index.

## Functions

### vote()

This function allows users to vote for a candidate by their index. It increments the vote count for the chosen candidate.
But it uses *require* and *assert* to ensure that everything is in order.

`require(_candidateIndex < candidates.length, "Invalid candidate index.");`
The above piece of code ensures a valid candidate index.

`assert(age>18);`
The above piece of code ensures a valid user who is eligible to vote.


### getCandidateSafe()

This function make use of *revert* to return information of a valid canditate's information.

`if (_candidateIndex >= candidates.length) {
            revert InvalidCandidateIndex();
        }`
The above piece of code ensures a valid candidate index.

## Execution of the Program

Follow these steps to interact with the SimpleContract:

1. Copy the provided Solidity code into your Remix IDE.
2. Confirm that your Solidity compiler version is compatible.
3. Compile the contract code using a Solidity development environment.
4. Deploy the contract.
5. Play around.

## Author

This project is authored by *Siddharth Aasal*.
