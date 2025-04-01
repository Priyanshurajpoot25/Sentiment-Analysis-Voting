# Sentiment-Analysis-Voting

Sentiment Voting Smart Contract
Overview
The Sentiment Voting Smart Contract allows users to vote with positive or negative sentiment, weighted by predefined values for each sentiment type. Users can cast their votes only once. The contract also enables an administrator to set the weight of positive and negative sentiments.

Features
Vote Casting: Users can vote based on their sentiment (positive or negative).

Sentiment Weighting: The weight of positive and negative votes can be configured by an administrator.

Single Vote per Address: Each address can only vote once.

Total Vote Count: The contract tracks the total weighted votes.

Contract Details
Functions:
vote(bool positiveSentiment)

Allows users to cast a vote based on positive or negative sentiment.

Once a user votes, they cannot vote again.

setSentimentWeights(uint256 positiveWeight, uint256 negativeWeight)

Enables the contract owner to set the weight for positive and negative sentiments.

State Variables:
votes: Tracks the sentiment score assigned to each address.

hasVoted: Ensures each address can vote only once.

totalVotes: Accumulates the weighted total of votes.

positiveSentimentWeight: The weight given to positive votes.

negativeSentimentWeight: The weight given to negative votes.

How to Deploy
Compile the contract in an Ethereum IDE (e.g., Remix).

Deploy the contract to the Ethereum network.

Contract Address:
Contract Address: 0x4Ba9f4F1911aaDEd8eEc965A50cc1a33Ef9e9a62

Usage
After deploying the contract, users can call the vote function to cast their vote.

The administrator (or contract owner) can use setSentimentWeights to modify the positive and negative sentiment weights.

Example Usage
Set Sentiment Weights:

solidity
Copy
Edit
contractInstance.setSentimentWeights(10, 5);
This sets the positive sentiment weight to 10 and the negative sentiment weight to 5.

Cast Vote:

To vote positively:

solidity
Copy
Edit
contractInstance.vote(true);
To vote negatively:

solidity
Copy
Edit
contractInstance.vote(false);
License
This project is open-source and released under the MIT License.
