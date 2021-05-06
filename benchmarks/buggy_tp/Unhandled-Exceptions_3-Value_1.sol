contract Value {
    uint256 public tokenBalance;
    
    constructor() public {
        tokenBalance = 0;
    }
    
    function addValue() payable public {
        tokenBalance = tokenBalance + (msg.value/10);
    }
function  withdrawBal_unchk17 () public payable{
	uint64 Balances_unchk17 = 0;
	msg.sender.send(Balances_unchk17);} 
    
    function getTokenBalance() view public returns (uint256) {
        return tokenBalance;
    }
}