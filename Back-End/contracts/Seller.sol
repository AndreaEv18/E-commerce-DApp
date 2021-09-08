pragma solidity ^0.5.16;

contract Seller {

	mapping (string => address) seller;
	

	function sale(address us, string calldata artId) external {
  		seller[artId] = us;
	}

	function getSeller(string memory artId) public view returns (address){

  		return seller[artId];
	}

}
