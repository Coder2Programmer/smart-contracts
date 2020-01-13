contract DonateDust {

	address public owner;
	uint256 public totalDonations;

	constructor() {
		owner = msg.sender;
	}
	
	function donate() public payable {
		totalDonations += msg.value;
	}

	function withdraw() public {
		owner.transfer(1000);
	}
	
	function() public payable {
		donate();
	}
}
