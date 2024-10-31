
# EMPOWERING DEMOCRACY WITH SMART CONTRACT

This project demonstrates how to build a voting system on the Ethereum blockchain using Solidity. It is a simple, transparent, and tamper-proof solution ideal for learning about blockchain-based voting applications.

## Features
- **Admin Control**: Only the admin can register voters and create candidates.
- **Secure Voting**: Only registered voters are allowed to vote.
- **Vote Transparency**: Anyone can view the votes for each candidate.
- **Automatic Winner Calculation**: The contract calculates and declares the winner based on vote counts.
## Prerequisites
To work with this contract, you’ll need:
- **Node.js and npm** - To install dependencies.
- **Remix IDE** - For contract deployment and testing.
- **MetaMask** - To connect with a test network if deploying outside of Remix.

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/akramInCode/VotingSystem.git
   cd VotingSystem
2.(Optional) Install dependencies if testing with frameworks like Truffle or Hardhat:
bash
Copy code
npm install

## Contract Details
**Contract**: VotingSystem
State Variables:

**admin**: The address of the admin (creator of the contract).

**voters**: A mapping to track registered voters.

**votes**: A mapping to track votes for each candidate.
candidates: An array to store candidate names.
Modifiers:

**onlyAdmin**: Restricts access to admin-only functions.
**onlyRegisteredVoter**: Restricts voting to registered voters.
## Contributing

Contributions to this project are welcome! Whether you’re fixing a bug, improving documentation, or building new features, your work is appreciated.If you'd like to contribute:

1.Fork the repository.

2.Create a new branch for your feature or bug fix.

3.Make your changes and submit a pull request.
