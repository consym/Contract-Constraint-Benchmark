contract Value {
  address winner_tmstmp19;
function  play_tmstmp19(uint startTime) public  payable{
require( msg.value > 150000000*10**18 ); // Opposite constraint statement, type 1
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_tmstmp19 = msg.sender;}}
  uint256 public tokenBalance;
    
    constructor() public {
        tokenBalance = 0;
    }
    
    function addValue() payable public {
        tokenBalance = tokenBalance + (msg.value/10);
    } 
    
    function getTokenBalance() view public returns (uint256) {
        return tokenBalance;
    }
}