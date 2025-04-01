pragma solidity ^0.8.0;

contract SentimentVoting {
    mapping(address => uint256) public votes;
    mapping(address => bool) public hasVoted;
    uint256 public totalVotes;
    uint256 public positiveSentimentWeight;
    uint256 public negativeSentimentWeight;

    function vote(bool positiveSentiment) public {
        require(!hasVoted[msg.sender], "Already voted");
        
        if (positiveSentiment) {
            votes[msg.sender] = positiveSentimentWeight;
            totalVotes += positiveSentimentWeight;
        } else {
            votes[msg.sender] = negativeSentimentWeight;
            totalVotes += negativeSentimentWeight;
        }
        
        hasVoted[msg.sender] = true;
    }

    function setSentimentWeights(uint256 positiveWeight, uint256 negativeWeight) public {
        positiveSentimentWeight = positiveWeight;
        negativeSentimentWeight = negativeWeight;
    }
}
