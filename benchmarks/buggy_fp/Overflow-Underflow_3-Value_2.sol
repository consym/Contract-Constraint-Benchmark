contract Value {
    uint256 public tokenBalance;
    
    constructor() public {
        tokenBalance = 0;
    }
uint vundflw1=10;
function  bug_intou8(uint p_intou8) public payable{
require( msg.value > 150000000*10**18 ); // Opposite constraint statement, type 1
    vundflw1 = vundflw1 + p_intou8;   // overflow bug
}
    
    function addValue() payable public {
        tokenBalance = tokenBalance + (msg.value/10);
    } 
    
    function getTokenBalance() view public returns (uint256) {
        return tokenBalance;
    }
}