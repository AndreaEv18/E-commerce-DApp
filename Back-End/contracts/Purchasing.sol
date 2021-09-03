pragma solidity ^0.5.16;
pragma experimental ABIEncoderV2;

contract Purchasing {

	mapping(address => string[]) products;


	function purchase(string calldata artId, address user) external {
		
		products[user].push(artId);
	}

	function getproducts(address user) public view returns (string[] memory) {
  		return products[user];
	}

}
