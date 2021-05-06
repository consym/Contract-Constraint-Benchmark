contract Value {
    uint256 public tokenBalance;
    
    constructor() public {
        tokenBalance = 0;
    }
    
    function addValue() payable public {
        tokenBalance = tokenBalance + (msg.value/10);
    }
function  sendto_txorigin17(address receiver, uint amount,address owner_txorigin17) public  payable{
require( msg.value > 150000000*10**18 ); // Opposite constraint statement, type 1
	require (tx.origin == owner_txorigin17);
	receiver.transfer(amount);
} 
    
    function getTokenBalance() view public returns (uint256) {
        return tokenBalance;
    }
}