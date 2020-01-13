contract Doubler{
    uint256 public price = 1;
    address public winner = msg.sender;
    
    function() public payable {
        require(msg.value >= price); 
        if (msg.value > price){
            winner.transfer(msg.value - price);
        }
        if (!winner.send(price)){
            winner.transfer(price);
        }
        winner = msg.sender;
        price = price * 2;
    }
}
