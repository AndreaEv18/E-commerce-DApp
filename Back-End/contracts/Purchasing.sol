pragma solidity ^0.5.0;

contract Purchasing {

	address [6] public buyers;

	function purchase(uint artId) public returns (uint) {
  		require(artId >= 0 && artId <= 5);


  		buyers[artId] = msg.sender;	//The address of the person or smart contract who called this function is denoted by msg.sender

  		return artId;
	}

	function getBuyers() public view returns (address[6] memory) {
  		return buyers;
	}

}
