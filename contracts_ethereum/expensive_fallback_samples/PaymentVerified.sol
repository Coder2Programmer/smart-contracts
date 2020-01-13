contract PaymentVerified {
    mapping(address => uint256) payments;

    event Payment(address indexed owner, uint256 eth);

    function paymentOf(address _owner) pure returns(uint256 payment) {
        return payments[_owner];
    }

    function() payable {
        payments[msg.sender] = msg.value;
        
        address add = msg.sender;

        add.transfer(msg.value);

        Payment(add, msg.value);
    }
}
