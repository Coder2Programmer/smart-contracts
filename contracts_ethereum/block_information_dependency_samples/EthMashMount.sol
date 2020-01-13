contract EthMashMount {

    address public owner;

    uint256 public round;
    mapping (uint256 => address[3]) public participants;
    
    constructor() public {
        owner = msg.sender;
        round = 1;
        participants[1][0] = owner;
    }

    function userRegister() public payable {
        
        participants[round][1] = msg.sender;

        uint random = block.number - 1;

        if (random % 2 == 0) {
            participants[round][2] = participants[round][0];
        } else {
            participants[round][2] = participants[round][1];
        }
    }
}
