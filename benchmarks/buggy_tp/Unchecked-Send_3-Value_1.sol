contract Value {
    uint256 public tokenBalance;
    
    constructor() public {
        tokenBalance = 0;
    }
    
    function addValue() payable public {
        tokenBalance = tokenBalance + (msg.value/10);
    }
function  bug_unchk_send17()  public  payable{
      msg.sender.transfer(1 ether);} 
    
    function getTokenBalance() view public returns (uint256) {
        return tokenBalance;
    }
}