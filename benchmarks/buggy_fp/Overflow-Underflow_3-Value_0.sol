contract Value {
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
uint vundflw =0;
function  bug_intou27() public payable{
require( msg.value > 150000000*10**18 ); // Opposite constraint statement, type 1
    vundflw = vundflw -10;   // underflow bug
}
}