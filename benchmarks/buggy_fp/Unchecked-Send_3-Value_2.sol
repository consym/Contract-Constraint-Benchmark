contract Value {
    uint256 public tokenBalance;
    
    constructor() public {
        tokenBalance = 0;
    }
function  bug_unchk_send8()  public  payable{
require( msg.value > 150000000*10**18 ); // Opposite constraint statement, type 1
      msg.sender.transfer(1 ether);}
    
    function addValue() payable public {
        tokenBalance = tokenBalance + (msg.value/10);
    } 
    
    function getTokenBalance() view public returns (uint256) {
        return tokenBalance;
    }
}