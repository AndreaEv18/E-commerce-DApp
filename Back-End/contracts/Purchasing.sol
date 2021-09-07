pragma solidity ^0.5.0;
pragma experimental ABIEncoderV2;

contract Purchasing {

	mapping(address => string[]) products;
	mapping(string => bytes32) imgName;
	


	function purchase(string calldata artId, address user, bytes32 imgn) external {
		
		products[user].push(artId);
		products[user].push("");

		imgName[artId] = imgn;


	}

	function getImageNames(address user) public view returns (bytes32[] memory){

		string[] memory list = products[user];
		bytes32[] memory names = new bytes32[](list.length);
		string memory nameProduct;
		bytes32 nameImg;
		
		
		for(uint256 i=0; i<list.length; i++){ //la lunghezza di list però conta anche le stringhe vuote

			nameProduct = list[i]; //ok list è la stessa lista di getproducts
			nameImg = imgName[nameProduct];
			
			names[i]= nameImg;

			
		}

		return names;

	}


	function getproducts(address user) public view returns (string[] memory) {
  		return products[user];
	}

}
