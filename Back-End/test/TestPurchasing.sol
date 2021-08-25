pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Purchasing.sol";

contract TestPurchasing {
 	// The address of the purchasing contract to be tested
	Purchasing purchasing = Purchasing(DeployedAddresses.Purchasing());

 	// The id of the art that will be used for testing
 	uint expectedArtId = 4;

 	//The expected buyer of Art is this contract
 	address expectedBuyer = address(this);

 	// Testing the purchase() function
 	function testUserCanPurchaseArt() public {
  		uint returnedId = purchasing.purchase(expectedArtId);

  		Assert.equal(returnedId, expectedArtId, "Test function purchase OK");
	}

	// Testing retrieval of a single pet's owner
	function testGetBuyerAddressByArtId() public {
  		address buyer = purchasing.buyers(expectedArtId);

  		Assert.equal(buyer, expectedBuyer, "test Get Buyer Address OK");
	}

	// Testing retrieval of all Buyers
	function testGetBuyerAddressByArtIdInArray() public {
  		// Store adopters in memory rather than contract's storage
  		address[6] memory buyers = purchasing.getBuyers();

  		Assert.equal(buyers[expectedArtId], expectedBuyer, "test retrieval of all buyers OK");
	}

}