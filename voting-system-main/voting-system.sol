// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract VotingSystem {
    struct Candidate {
        string name;
        uint256 voteCount;
    }

    Candidate[] public candidates;

    constructor() {
        candidates.push(Candidate({
            name: "Lamborghini",
            voteCount: 0
        }));

        candidates.push(Candidate({
            name: "Bugatti",
            voteCount: 0
        }));

        candidates.push(Candidate({
            name: "Tesla",
            voteCount: 0
        }));
    }

    function vote(uint256 _candidateIndex, uint256 age) public {
        require(_candidateIndex < candidates.length, "Invalid candidate index.");
        assert(age>18);
        candidates[_candidateIndex].voteCount += 1;
    }

    error InvalidCandidateIndex();

    function getCandidateSafe(uint256 _candidateIndex) public view returns (string memory, uint256) {
        if (_candidateIndex >= candidates.length) {
            revert InvalidCandidateIndex();
        }

        Candidate memory candidate = candidates[_candidateIndex];
        return (candidate.name, candidate.voteCount);
    }
}
