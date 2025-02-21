// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TokenFaucet {
    mapping(address => bool) public hasClaimed;
    uint256 public constant TOKEN_AMOUNT = 100 * (10 ** 18);
    address public owner;

    function claimTokens() public {
        require(!hasClaimed[msg.sender], "Already claimed");

        hasClaimed[msg.sender] = true;

        // Simulate token transfer (this contract does not hold real tokens)
        // In a real scenario, this would interact with an ERC-20 contract
    }
}
