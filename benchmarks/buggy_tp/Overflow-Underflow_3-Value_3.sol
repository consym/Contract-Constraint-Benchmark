contract Value {
  uint vundflw =0;
function  bug_intou19() public payable{
    
    vundflw = vundflw -10;   // underflow bug
}
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