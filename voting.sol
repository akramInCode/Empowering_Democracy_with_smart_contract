pragma solidity ^0.8.0; 
 
contract VotingSystem { 
    address public admin; 
    mapping(address => bool) public voters; 
    mapping(string => uint256) public votes; 
    string[] public candidates; // Array to store the names of candidates 
 
    event VoteCasted(address indexed voter, string candidate); 
 
    modifier onlyAdmin() { 
        require(msg.sender == admin, "Only the admin can call this function"); 
        _; 
    } 
 
    modifier onlyRegisteredVoter() { 
        require(voters[msg.sender], "You are not a registered voter"); 
        _; 
    } 
 
    constructor() { 
        admin = msg.sender; 
    } 
 
    function registerVoter(address _voter) external onlyAdmin { 
        voters[_voter] = true; 
    } 
 
    function createCandidate(string memory _candidate) external onlyAdmin { 
        candidates.push(_candidate); // Add the new candidate to the array 
        votes[_candidate] = 0; 
    } 
 
    function castVote(string memory _candidate) external onlyRegisteredVoter { 
        require(votes[_candidate] != type(uint256).max, "Invalid candidate"); 
        votes[_candidate]++; 
        emit VoteCasted(msg.sender, _candidate); 
    } 
 
    function getVoteCount(string memory _candidate) external view returns 
(uint256) { 
        return votes[_candidate]; 
    } 
 
    function getCandidates() external view returns (string[] memory) { 
return candidates; 
} 
function getWinner() external view returns (string memory) { 
require(candidates.length > 0, "No candidates available"); 
string memory winner = candidates[0]; 
uint256 maxVotes = votes[winner]; 
for (uint256 i = 1; i < candidates.length; i++) { 
if (votes[candidates[i]] > maxVotes) { 
winner = candidates[i]; 
maxVotes = votes[winner]; 
} 
} 
return winner; 
} 
} 