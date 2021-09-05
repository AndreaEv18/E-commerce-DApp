pragma solidity ^0.5.0; //We have to specify what version of compiler this code will use

contract Voting {
  /* mapping is equivalent to an associate array or hash
  The key of the mapping is candidate name stored as type bytes32 and value is
  an unsigned integer which used to store the vote count
  */
  mapping (bytes32 => uint256) public votesReceived;
  
  /* Solidity doesn't let you create an array of strings yet. We will use an array of bytes32 instead to store
  the list of candidates
  */

  //ok ci deve stare come buyers in Purchasing
  bytes32[] public candidateList;

  // Initialize all the contestants, posso passarglielo prima delle altre operazioni
  function voting(bytes32[] memory candidateNames) public {
    if(validCandidate(candidateNames[0]) != true){
    	candidateList.push(candidateNames[0]);
    }
  }
	//ok mi ritorna l'ammontare dei voti del candidato
  function totalVotesFor(bytes32 candidate) view public returns (uint256) {
    require(validCandidate(candidate));
    return votesReceived[candidate];
  }
	//ok mi permette di votare per un candidato
  function voteForCandidate(bytes32 candidate) public {
    require(validCandidate(candidate));
    votesReceived[candidate] += 1;
  }
	//ok ci deve stare, deve verificare che un candidato è presente nella lista candidati!
  function validCandidate(bytes32 candidate) view public returns (bool) {
    for(uint i = 0; i < candidateList.length; i++) {
      if (candidateList[i] == candidate) {
        return true;
      }
    }
    return false;
  }

  // This function returns the list of candidates. ok ci deve stare come getBuyers in Purchasing.
  function getCandidateList() public view returns (bytes32[] memory) {
    return candidateList;
  }
}
