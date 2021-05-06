contract Value {
  function  bug_unchk19() public payable{
address addr_unchk19;
if (!addr_unchk19.send (10 ether) || 1==1)
	{revert();}
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